#!/usr/bin/env python3
"""Check the 16-byte mixed ABI/data interval and its unchanged 660-byte neighbors."""
import argparse
import json
import os
from pathlib import Path
import random
import sys
import tempfile

ROOT = Path(__file__).absolute().parents[2]
BASE = 0x080B6B3C
ENTRY = 0x080B6DD0


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', type=Path, default=ROOT / 'build/sdk_shared_pool')
    parser.add_argument('--deps', type=Path)
    options = parser.parse_args()
    if options.deps:
        sys.path.insert(0, str(options.deps.resolve()))
    import decomp
    from source_index import functions
    from elftools.elf.elffile import ELFFile
    from unicorn import Uc, UcError, UC_ARCH_ARM, UC_MODE_THUMB
    from unicorn.arm_const import (UC_ARM_REG_CPSR, UC_ARM_REG_R0, UC_ARM_REG_R1,
        UC_ARM_REG_R2, UC_ARM_REG_R3, UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6,
        UC_ARM_REG_R7, UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11,
        UC_ARM_REG_R12, UC_ARM_REG_SP, UC_ARM_REG_LR, UC_ARM_REG_PC)
    options.out.mkdir(parents=True, exist_ok=True)
    work = Path(tempfile.mkdtemp(prefix='run_', dir=options.out.absolute()))

    def run(command):
        result = decomp.run(list(map(str, command)))
        with (work / 'commands.log').open('a') as log:
            log.write(repr(command) + '\n' + result.stdout + result.stderr)
        assert not result.returncode, result.stdout + result.stderr

    build = Path(os.path.relpath(work, ROOT)).as_posix()
    run(['make', '-j1', 'BUILD=' + build, build + '/src/m4a_1_engine.o'])
    candidate = work / 'src/m4a_1_engine.o'
    active = {row['name'] for row in functions(candidate.with_suffix('.i').read_text())}
    assert 'sub_080B6DD0' in active and not {'m4aSoundVSync', 'MPlayMain'} & active
    original = ''.join((ROOT / 'asm/nonmatchings/m4a_1_engine' / (n + '.s')).read_text()
                       for n in ['m4aSoundVSync', 'MPlayMain'])
    original += (ROOT / 'tools/tests/fixtures/sdk_sound/sub_080B6DD0.s').read_text()
    (work / 'original.s').write_text('.include "asm/macros.inc"\n.syntax unified\n.text\n' + original)
    run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-I', ROOT,
         '-o', work / 'original.o', work / 'original.s'])
    external = '.syntax unified\n.thumb\n'
    with candidate.open('rb') as stream:
        elf = ELFFile(stream)
        undefined = [s.name for s in elf.get_section_by_name('.symtab').iter_symbols()
                     if s.name and s['st_shndx'] == 'SHN_UNDEF']
    decomp._SYMS = {}
    for name in undefined:
        address = decomp.func_address(name)
        if address is not None:
            external += ('.global {0}\n.type {0},%function\n'
                         '.thumb_set {0},0x{1:x}\n').format(name, address | 1)
        else:
            address = decomp.resolve(name)
            assert address is not None, name
            external += '.global {0}\n.set {0},0x{1:x}\n'.format(name, address)
    (work / 'external.s').write_text(external)
    run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-o', work / 'external.o', work / 'external.s'])
    (work / 'canonical.ld').write_text('SECTIONS { . = 0x080B6B3C; .text : { *(.text) } '
        '/DISCARD/ : { *(.data) *(.bss) *(.ARM.attributes) *(.comment) } }')

    def linked(obj, name, typed=False):
        image = work / (name + '.elf')
        run(['arm-none-eabi-ld', '--no-undefined', '-T', work / 'canonical.ld',
             '-o', image, obj, work / 'external.o'])
        with image.open('rb') as stream:
            elf = ELFFile(stream)
            text = elf.get_section_by_name('.text')
            assert text['sh_addr'] == BASE and text['sh_size'] >= 676
            symbols = {s.name: s for s in elf.get_section_by_name('.symtab').iter_symbols()}
            for symbol, address in [('m4aSoundVSync', BASE), ('MPlayMain', BASE + 56),
                                    ('sub_080B6DD0', ENTRY)]:
                assert symbols[symbol]['st_value'] == address | 1
            assert not any(s['sh_size'] and s['sh_type'] in ['SHT_REL', 'SHT_RELA']
                           for s in elf.iter_sections())
            if typed:
                assert symbols['sub_080B6DD0']['st_size'] == 2
                for address in [ENTRY + 4, ENTRY + 8, ENTRY + 12]:
                    symbol = symbols['_%08X' % address]
                    assert symbol['st_value'] == address and symbol['st_size'] == 4
                    assert symbol['st_info']['type'] == 'STT_OBJECT'
            return text.data()

    expected = linked(work / 'original.o', 'original')
    actual = linked(candidate, 'candidate', True)
    assert len(expected) == 676 and actual[:676] == expected
    source = (ROOT / 'src/m4a_1_engine.c').read_text()
    mutations = [('data', '= ID_NUMBER;', '= ID_NUMBER + 1;'),
                 ('abi', 'asm("bx r3");', 'asm("bx r2");')]
    bad_abi = None
    for name, before, after in mutations:
        assert source.count(before) == 1
        draft = work / (name + '.c')
        draft.write_text(source.replace(before, after))
        obj = work / (name + '.o')
        error = decomp.compile_c(str(draft), str(obj), decomp.module_cc1('m4a_1_engine'),
                                 decomp.module_flags('m4a_1_engine'))
        assert not error, error
        changed = linked(obj, name)
        assert changed[:676] != expected, 'mutation accepted: ' + name
        if name == 'abi':
            bad_abi = changed

    # Test-only receivers perform only an ABI return, in each instruction mode.
    (work / 'receivers.s').write_text('.syntax unified\n.text\n.thumb\nbx lr\n'
                                      '.balign 16\n.arm\nbx lr\n')
    run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-o', work / 'receivers.o', work / 'receivers.s'])
    with (work / 'receivers.o').open('rb') as stream:
        receivers = ELFFile(stream).get_section_by_name('.text').data()
    registers = [UC_ARM_REG_R0, UC_ARM_REG_R1, UC_ARM_REG_R2, UC_ARM_REG_R3,
                 UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6, UC_ARM_REG_R7,
                 UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11,
                 UC_ARM_REG_R12]
    rng = random.Random(0x6DD0)
    values = [0, 1, 0x7fffffff, 0x80000000, 0xffffffff] + [rng.getrandbits(32) for _ in range(75)]
    tested = 0
    for code in [expected, actual]:
        mu = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
        mu.mem_map(0x08000000, 0x100000)
        mu.mem_map(0x03000000, 0x8000)
        mu.mem_write(BASE, code)
        mu.mem_write(0x080F0000, receivers)
        for value in values:
            for target in [0x080F0001, 0x080F0010]:
                for flags in range(16):
                    state = [(value ^ (i * 0x1010101)) & 0xffffffff for i in range(13)]
                    state[3] = target
                    mu.reg_write(UC_ARM_REG_CPSR, (flags << 28) | 0x3f)
                    for register, val in zip(registers, state):
                        mu.reg_write(register, val)
                    mu.reg_write(UC_ARM_REG_SP, 0x03007000)
                    mu.reg_write(UC_ARM_REG_LR, 0x080FF001)
                    mu.emu_start(ENTRY | 1, 0x080FF000, count=32)
                    assert mu.reg_read(UC_ARM_REG_PC) == 0x080FF000
                    assert mu.reg_read(UC_ARM_REG_SP) == 0x03007000
                    assert mu.reg_read(UC_ARM_REG_LR) == 0x080FF001
                    assert mu.reg_read(UC_ARM_REG_CPSR) >> 28 == flags
                    assert [mu.reg_read(reg) for reg in registers] == state
                    tested += 1
    assert tested == 5120
    mu = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
    mu.mem_map(0x08000000, 0x100000)
    mu.mem_map(0x03000000, 0x8000)
    mu.mem_write(BASE, bad_abi)
    mu.mem_write(0x080F0000, receivers)
    mu.reg_write(UC_ARM_REG_CPSR, 0x3f)
    mu.reg_write(UC_ARM_REG_SP, 0x03007000)
    mu.reg_write(UC_ARM_REG_R2, 0xDEAD0001)
    mu.reg_write(UC_ARM_REG_LR, 0x080FF001)
    try:
        mu.emu_start(ENTRY | 1, 0x080FF000, count=32)
    except UcError:
        pass
    else:
        assert mu.reg_read(UC_ARM_REG_PC) != 0x080FF000, 'wrong-register ABI accepted'
    result = dict(compared_bytes=676, converted_interval_bytes=16, genuine_c_data_bytes=12,
                  abi_and_alignment_bytes=4, unchanged_neighbor_bytes=660,
                  runtime_cases=tested, negative_controls=3, passed=True)
    (work / 'results.json').write_text(json.dumps(result, indent=2) + '\n')
    print(result)


if __name__ == '__main__':
    main()
