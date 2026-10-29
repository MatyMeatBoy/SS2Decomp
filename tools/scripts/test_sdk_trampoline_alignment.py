#!/usr/bin/env python3
"""Check nested Thumb functions retain aligned ARM trampoline templates."""
import argparse
import json
from pathlib import Path
import subprocess
import tempfile

from elftools.elf.elffile import ELFFile


SOURCE = r'''asm(".section .rodata\n.short 0\n.text");
extern int call(int (*fn)(int), int);
int pad(int x) { return x; }
int f(int x) {
    int g(int y) { return x + y; }
    return call(g, 3);
}
'''


def check(compiler, enabled, out):
    source = out.with_suffix('.i')
    source.write_text(SOURCE)
    flags = ['-O2', '-mthumb-interwork', '-fprologue-bugfix', '-ftst']
    if enabled:
        flags += ['-flsr-flags', '-fthumb-halfword-align']
    commands = [
        [str(compiler), *flags, '-o', str(out.with_suffix('.s')), str(source)],
        ['arm-none-eabi-as', '-L', '-mcpu=arm7tdmi', '-o',
         str(out.with_suffix('.o')), str(out.with_suffix('.s'))],
    ]
    for command in commands:
        result = subprocess.run(command, capture_output=True, text=True)
        with out.with_suffix('.log').open('a') as log:
            log.write(repr(command) + '\n' + result.stdout + result.stderr)
        if result.returncode:
            raise RuntimeError(result.stdout + result.stderr)
    with out.with_suffix('.o').open('rb') as stream:
        elf = ELFFile(stream)
        table = elf.get_section_by_name('.symtab')
        symbols = {symbol.name: symbol for symbol in table.iter_symbols()}
        template = symbols['.LTRAMP0']['st_value']
        arm = symbols['.Ltrampoline_start']['st_value']
        text = elf.get_section_by_name('.text').data()
        literals = []
        for relocation in elf.get_section_by_name('.rel.text').iter_relocations():
            symbol = table.get_symbol(relocation['r_info_sym'])
            if (relocation['r_info_type'] == 2
                    and symbol['st_info']['type'] == 'STT_SECTION'
                    and elf.get_section(symbol['st_shndx']).name == '.rodata'):
                offset = relocation['r_offset']
                literals.append(int.from_bytes(text[offset:offset + 4], 'little'))
        parent = (symbols['f']['st_value'] & ~1) % 4
        if enabled and parent != 2:
            raise AssertionError('fixture must exercise a parent at offset +2')
        return dict(template=template, first_arm_instruction=arm,
                    template_literal_addends=literals, parent_offset_mod4=parent,
                    valid=template == arm and template % 4 == 0 and literals == [arm])


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--compiler', required=True, type=Path)
    parser.add_argument('--reference-compiler', type=Path)
    parser.add_argument('--unsafe-compiler', type=Path,
                        help='optional historical negative control; must fail alignment')
    parser.add_argument('--out', type=Path, default=Path('build/sdk_trampoline'))
    args = parser.parse_args()
    args.out.mkdir(parents=True, exist_ok=True)
    work = Path(tempfile.mkdtemp(prefix='run_', dir=args.out.resolve()))
    profiles = [('fixed_off', args.compiler, False, True),
                ('fixed_on', args.compiler, True, True)]
    if args.reference_compiler:
        profiles.append(('reference', args.reference_compiler, False, True))
    if args.unsafe_compiler:
        profiles.append(('unsafe', args.unsafe_compiler, True, False))
    results = []
    for name, compiler, enabled, expected in profiles:
        row = check(compiler.resolve(), enabled, work / name)
        row['profile'] = name
        results.append(row)
        assert row['valid'] == expected, row
        print(name, 'PASS', row)
    if args.reference_compiler:
        assert (work / 'reference.o').read_bytes() == (work / 'fixed_off.o').read_bytes()
    (work / 'results.json').write_text(json.dumps(results, indent=2) + '\n')


if __name__ == '__main__':
    main()
