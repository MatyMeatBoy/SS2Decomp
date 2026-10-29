#!/usr/bin/env python3
"""Check the complete mixed-mode SDK multiplication entry, without a ROM."""
import argparse
import json
import os
from pathlib import Path
import random
import subprocess
import sys
import tempfile

from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection

import decomp
from source_index import functions


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--deps', type=Path)
    parser.add_argument('--out', type=Path, default=Path('build/sdk_umul'))
    args = parser.parse_args()
    if args.deps:
        sys.path.insert(0, str(args.deps.resolve()))
    from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB
    from unicorn import arm_const as arm
    root = Path(decomp.ROOT)
    args.out.mkdir(parents=True, exist_ok=True)
    work = Path(tempfile.mkdtemp(prefix='run_', dir=args.out.resolve()))

    def run(command):
        result = subprocess.run(list(map(str, command)), cwd=root,
                                capture_output=True, text=True)
        with (work / 'commands.log').open('a') as log:
            log.write(repr(command) + '\n' + result.stdout + result.stderr)
        if result.returncode:
            raise RuntimeError(result.stdout + result.stderr)

    build = Path(os.path.relpath(work, root)).as_posix()
    run(['make', '-j1', 'BUILD=' + build, build + '/src/m4a_1_mul.o'])
    candidate = work / 'src/m4a_1_mul.o'
    active = {row['name'] for row in functions(candidate.with_suffix('.i').read_text())}
    assert 'umul3232H32' in active
    source = work / 'original.s'
    source.write_text('.include "asm/macros.inc"\n.syntax unified\n.text\n'
                      + (root / 'tools/tests/fixtures/sdk_flags/umul3232H32.s').read_text())
    original = source.with_suffix('.o')
    run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-I', root, '-o', original, source])

    def inspect(path, check_modes=False):
        with path.open('rb') as stream:
            elf = ELFFile(stream)
            section = elf.get_section_by_name('.text')
            relocations = [(relocation['r_offset'], relocation['r_info_type'])
                           for item in elf.iter_sections() if isinstance(item, RelocationSection)
                           for relocation in item.iter_relocations()]
            # GAS marks an explicitly assembled ARM BX with R_ARM_V4BX. The
            # original raw-word oracle has no such marker. Resolve it below.
            if check_modes:
                assert relocations == [(12, 40)], relocations
            else:
                assert not relocations, relocations
            if check_modes:
                symbols = {symbol.name: symbol
                           for symbol in elf.get_section_by_name('.symtab').iter_symbols()}
                entry = symbols['umul3232H32']
                body = symbols['_080B64DC']
                assert entry['st_info']['type'] == body['st_info']['type'] == 'STT_FUNC'
                assert entry['st_value'] == 1 and body['st_value'] == 4
                assert body['st_size'] == 12
                mapping = [(name.split('.')[0], symbol['st_value'])
                           for name, symbol in symbols.items() if name.startswith(('$t', '$a'))]
                assert ('$t', 0) in mapping and ('$a', 4) in mapping, mapping
            return section.data()

    expected, actual = inspect(original), inspect(candidate, True)
    assert len(actual) == 16 and actual == expected
    script = work / 'link.ld'
    script.write_text('SECTIONS { . = 0x080B64D8; .text : { *(.text) } }\n')
    for name, obj in [('original', original), ('candidate', candidate)]:
        image = work / (name + '.elf')
        run(['arm-none-eabi-ld', '--no-undefined', '-T', script, '-o', image, obj])
        with image.open('rb') as stream:
            elf = ELFFile(stream)
            assert not any(item['sh_type'] in ('SHT_REL', 'SHT_RELA')
                           and item['sh_size'] for item in elf.iter_sections())
            section = elf.get_section_by_name('.text')
            assert section['sh_addr'] == 0x080B64D8 and section.data() == expected
    rng = random.Random(0x554D554C)
    boundaries = [0, 1, 2, 0xFFFF, 0x10000, 0x7FFFFFFF, 0x80000000, 0xFFFFFFFF]
    pairs = [(a, b) for a in boundaries for b in boundaries]
    pairs += [(rng.getrandbits(32), rng.getrandbits(32)) for _ in range(256)]
    callee = [getattr(arm, 'UC_ARM_REG_R%d' % number) for number in range(4, 12)]
    base, stop, sp = 0x01000000, 0x0100F000, 0x03000FF0

    def execute(mu, a, b, nzcv):
        mu.reg_write(arm.UC_ARM_REG_CPSR, (nzcv << 28) | 0x30)
        for register, value in [(arm.UC_ARM_REG_R0, a), (arm.UC_ARM_REG_R1, b),
                                (arm.UC_ARM_REG_R2, 0x22222222),
                                (arm.UC_ARM_REG_R3, 0x33333333),
                                (arm.UC_ARM_REG_R12, 0xCCCCCCCC)]:
            mu.reg_write(register, value)
        saved = {register: 0x44440000 + index * 0x1111
                 for index, register in enumerate(callee)}
        for register, value in saved.items():
            mu.reg_write(register, value)
        mu.reg_write(arm.UC_ARM_REG_SP, sp)
        mu.reg_write(arm.UC_ARM_REG_LR, stop | 1)
        mu.emu_start(base | 1, stop, count=100)
        valid = (mu.reg_read(arm.UC_ARM_REG_PC) == stop
                 and mu.reg_read(arm.UC_ARM_REG_SP) == sp
                 and mu.reg_read(arm.UC_ARM_REG_CPSR) >> 28 == nzcv
                 and all(mu.reg_read(register) == value for register, value in saved.items()))
        return mu.reg_read(arm.UC_ARM_REG_R0), valid

    def machine(code):
        mu = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
        mu.mem_map(base, 0x10000)
        mu.mem_write(base, code)
        mu.mem_map(0x03000000, 0x1000)
        return mu

    results = []
    for profile, code in [('original', expected), ('candidate', actual)]:
        mu = machine(code)
        tested = 0
        for a, b in pairs:
            for nzcv in range(16):
                value, valid = execute(mu, a, b, nzcv)
                assert valid and value == (a * b) >> 32, (profile, a, b, nzcv, value)
                tested += 1
        assert tested == 5120
        results.append(dict(profile=profile, cases=tested, passed=True))
    # A C loop with r0 already equal to the expected result must not pass.
    text = (root / 'src/m4a_1_mul.c').read_text()
    begin = text.index('\n{\n', text.index('u32 umul3232H32'))
    negative = work / 'negative.c'
    negative.write_text(text[:begin] + '\n{\n    for (;;) {}\n}\n')
    error = decomp.compile_c(str(negative), str(negative.with_suffix('.o')),
                             decomp.module_cc1('m4a_1_mul'),
                             decomp.module_flags('m4a_1_mul'))
    assert not error, error
    value, valid = execute(machine(inspect(negative.with_suffix('.o'))), 0, 123, 0)
    assert value == 0 and not valid
    result = dict(bytes_equal=16, active_c=True, thumb_entry_and_arm_body=True,
                  profiles=results, negative_loop_rejected=True)
    (work / 'results.json').write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result, indent=2))


if __name__ == '__main__':
    main()
