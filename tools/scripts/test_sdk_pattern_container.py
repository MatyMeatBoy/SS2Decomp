#!/usr/bin/env python3
"""Compare the full pattern-handler container after canonical symbolic linking.

The original 69F4 symbol contains both PatternEnd and Repeat, with the latter
encoded as raw words. Preserve that oracle intact and resolve candidate branch
relocations by linking both containers at their original addresses. No function
size overrides or instruction rewriting are used.
"""
import argparse
import json
import os
from pathlib import Path
import subprocess
import tempfile

from elftools.elf.elffile import ELFFile

import decomp
from source_index import functions

ROOT = Path(decomp.ROOT)
BASE = 0x080B69D8
END = 0x080B6A38
ENTRIES = {'sub_080B69D8': BASE, 'sub_080B69F4': 0x080B69F4,
           'sub_080B6A08': 0x080B6A08}


def run(command, log):
    result = subprocess.run(list(map(str, command)), cwd=ROOT,
                            capture_output=True, text=True)
    with log.open('a') as stream:
        stream.write(repr(command) + '\n' + result.stdout + result.stderr)
    if result.returncode:
        raise RuntimeError(result.stdout + result.stderr)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', type=Path, default=Path('build/sdk_patterns'))
    args = parser.parse_args()
    args.out.mkdir(parents=True, exist_ok=True)
    work = Path(tempfile.mkdtemp(prefix='run_', dir=args.out.absolute()))
    log = work / 'commands.log'
    build = Path(os.path.relpath(work, ROOT)).as_posix()
    for module in ['m4a_1_rest', 'm4a_1_jump']:
        run(['make', '-j1', 'BUILD=' + build, build + '/src/' + module + '.o'], log)
    candidate = work / 'src/m4a_1_rest.o'
    active = {row['name'] for row in functions(candidate.with_suffix('.i').read_text())}
    assert set(ENTRIES) <= active, 'all three handlers must be active C'
    original = ((ROOT / 'tools/tests/fixtures/sdk_tst/sub_080B69D8.s').read_text()
                + (ROOT / 'tools/tests/fixtures/sdk_flags/sub_080B69F4.s').read_text())
    oracle = work / 'original.s'
    # The following original thumb_func_start at 6A38 uses .align 2,0.
    oracle.write_text('.include "asm/macros.inc"\n.syntax unified\n.text\n'
                      + original + '\n.align 2,0\n')
    original_obj = oracle.with_suffix('.o')
    run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-I', ROOT,
         '-o', original_obj, oracle], log)
    externals = work / 'externals.s'
    declarations = '.syntax unified\n.thumb\n'
    for name in ['sub_080B69B8', 'sub_080B69AC', 'ply_fine']:
        address = decomp.func_address(name)
        assert address is not None
        declarations += ('.global {0}\n.type {0}, %function\n'
                         '.thumb_set {0}, 0x{1:x}\n').format(name, address | 1)
    externals.write_text(declarations)
    external_obj = externals.with_suffix('.o')
    run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-o', external_obj, externals], log)
    script = work / 'link.ld'
    script.write_text('SECTIONS { . = 0x080B69D8; .text : { *(.text) } '
                      '/DISCARD/ : { *(.data) *(.bss) *(.ARM.attributes) *(.comment) } }\n')

    def linked(obj, name, require_repeat):
        image = work / (name + '.elf')
        run(['arm-none-eabi-ld', '--no-undefined', '-T', script, '-o', image,
             obj, external_obj], log)
        with image.open('rb') as stream:
            elf = ELFFile(stream)
            section = elf.get_section_by_name('.text')
            assert section['sh_addr'] == BASE and section['sh_size'] == END - BASE
            symbols = {symbol.name: symbol['st_value'] & ~1
                       for symbol in elf.get_section_by_name('.symtab').iter_symbols()}
            for symbol, address in ENTRIES.items():
                if symbol == 'sub_080B6A08' and not require_repeat:
                    continue  # The intact original has no symbol for its raw-word entry.
                assert symbols[symbol] == address, (symbol, symbols[symbol])
            assert not any(section['sh_type'] in ('SHT_REL', 'SHT_RELA')
                           and section['sh_size'] for section in elf.iter_sections())
            return section.data()

    expected = linked(original_obj, 'original', False)
    actual = linked(candidate, 'candidate', True)
    assert actual == expected, 'full 96-byte container differs'
    # Verify the existing C jump helper still starts with the original PUSH lr.
    jump_oracle = work / 'jump_original.s'
    jump_oracle.write_text('.include "asm/macros.inc"\n.syntax unified\n.text\n'
                          + (ROOT / 'tools/tests/fixtures/sdk_flags/sub_080B69B8.s').read_text())
    run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-I', ROOT, '-o',
         jump_oracle.with_suffix('.o'), jump_oracle], log)
    decomp._SYMS = {}
    assert decomp.compare(str(jump_oracle.with_suffix('.o')),
                          str(work / 'src/m4a_1_jump.o'), 'sub_080B69B8')
    text = (ROOT / 'src/m4a_1_rest.c').read_text()
    mutations = {
        'negative_condition': ('sdkWideRepeat >= sdkR3', 'sdkWideRepeat > sdkR3'),
        'negative_stack_entry': ('b sub_080B69B8 + 2', 'b sub_080B69B8'),
    }
    negatives = {}
    for name, (before, after) in mutations.items():
        assert before in text
        source = work / (name + '.c')
        source.write_text(text.replace(before, after))
        obj = source.with_suffix('.o')
        error = decomp.compile_c(str(source), str(obj),
                                 decomp.module_cc1('m4a_1_rest'),
                                 decomp.module_flags('m4a_1_rest'))
        assert not error, error
        negatives[name] = linked(obj, name, True) != expected
        assert negatives[name], name + ' was incorrectly accepted'
    result = dict(active_c=sorted(active), bytes_equal=len(actual),
                  all_relocations_resolved=True, entries=ENTRIES,
                  negative_controls_rejected=negatives)
    (work / 'results.json').write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result, indent=2))


if __name__ == '__main__':
    main()
