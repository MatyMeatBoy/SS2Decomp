#!/usr/bin/env python3
"""Compare SoundMain C and its unchanged RAM kernel after canonical linking.

The 132-byte SoundMain interval contains genuine C objects. Symbol sizes are
left as emitted by GCC; compare the complete original 1064-byte container.
"""
import argparse
import json
import os
from pathlib import Path
import tempfile

from elftools.elf.elffile import ELFFile
import decomp
from source_index import functions

ROOT = Path(decomp.ROOT)
BASE = 0x080B64E8


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', type=Path, default=ROOT / 'build/sdk_sound_match')
    args = parser.parse_args()
    args.out.mkdir(parents=True, exist_ok=True)
    work = Path(tempfile.mkdtemp(prefix='run_', dir=args.out.absolute()))

    def run(command):
        result = decomp.run(list(map(str, command)))
        with (work / 'commands.log').open('a') as stream:
            stream.write(repr(command) + '\n' + result.stdout + result.stderr)
        assert not result.returncode, result.stdout + result.stderr

    build = Path(os.path.relpath(work, ROOT)).as_posix()
    run(['make', '-j1', 'BUILD=' + build, build + '/src/m4a_1_sound.o'])
    candidate = work / 'src/m4a_1_sound.o'
    active = {row['name'] for row in functions(candidate.with_suffix('.i').read_text())}
    assert 'SoundMain' in active and 'SoundMainRAM' not in active
    fixture = ROOT / 'tools/tests/fixtures/sdk_sound'
    oracle = work / 'original.s'
    oracle.write_text('.include "asm/macros.inc"\n.syntax unified\n.text\n'
                      + (fixture / 'SoundMain.s').read_text()
                      + (fixture / 'SoundMainRAM.s').read_text())
    run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-I', ROOT,
         '-o', work / 'original.o', oracle])
    script = work / 'canonical.ld'
    script.write_text('gUnk_03007FF0 = 0x03007FF0; '
                      'SoundMainRAM_Buffer = 0x03000E3C; '
                      'SECTIONS { . = 0x080B64E8; .text : { *(.text) } '
                      '/DISCARD/ : { *(.ARM.attributes) *(.comment) } }')

    def linked(obj, name, c_objects=False, exact_layout=True):
        image = work / (name + '.elf')
        run(['arm-none-eabi-ld', '--no-undefined', '-T', script, '-o', image, obj])
        with image.open('rb') as stream:
            elf = ELFFile(stream)
            text = elf.get_section_by_name('.text')
            assert text['sh_addr'] == BASE
            if not exact_layout:
                return text.data()
            assert text['sh_size'] == 1064
            symbols = {s.name: s for s in elf.get_section_by_name('.symtab').iter_symbols()}
            assert symbols['SoundMain']['st_value'] == BASE + 1
            assert symbols['SoundMainRAM']['st_value'] == BASE + 133
            assert not any(s['sh_size'] and s['sh_type'] in ['SHT_REL', 'SHT_RELA']
                           for s in elf.iter_sections())
            assert not any(s['sh_flags'] & 2 and s['sh_size'] and s.name != '.text'
                           for s in elf.iter_sections())
            if c_objects:
                for address in range(0x080B6554, 0x080B656C, 4):
                    symbol = symbols['_%08X' % address]
                    assert symbol['st_value'] == address and symbol['st_size'] == 4
                    assert symbol['st_info']['type'] == 'STT_OBJECT'
            return text.data()

    expected = linked(work / 'original.o', 'reference')
    actual = linked(candidate, 'candidate', True)
    assert actual == expected, 'SoundMain or its pending original kernel changed'
    source = (ROOT / 'src/m4a_1_sound.c').read_text()
    for name, before, after in [('literal', '= ID_NUMBER;', '= ID_NUMBER + 1;'),
                                ('decision', 'if (r4 <= 1)', 'if (r4 <= 2)')]:
        assert source.count(before) == 1
        draft = work / (name + '.c')
        draft.write_text(source.replace(before, after))
        obj = work / (name + '.o')
        error = decomp.compile_c(str(draft), str(obj), decomp.module_cc1('m4a_1_sound'),
                                 decomp.module_flags('m4a_1_sound'))
        assert not error, error
        assert linked(obj, name, exact_layout=False) != expected, 'mutation accepted: ' + name
    result = dict(compared_bytes=1064, soundmain_c_bytes=132,
                  pending_original_kernel_bytes=932, negative_controls=2, matched=True)
    (work / 'results.json').write_text(json.dumps(result, indent=2) + '\n')
    print('SoundMain: MATCH (132 B C/ABI; unchanged 932 B original kernel)')


if __name__ == '__main__':
    main()
