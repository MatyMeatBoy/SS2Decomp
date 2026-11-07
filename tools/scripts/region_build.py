#!/usr/bin/env python3
"""Experimental regional rebuild with exact compiler-backed C intervals."""
import argparse
from dataclasses import dataclass
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess

from elftools.elf.elffile import ELFFile
from rom_regions import ROOT, RegionError, load_profiles, verify_rom
import source_index

ROM_BASE = 0x08000000
IDENTIFIER = r'[A-Za-z_.$][A-Za-z0-9_.$]*'
LOCAL_TOKEN = re.compile(r'"(?:\\.|[^"\\])*"|@[^\n]*|(?<![\w.$])\.L[\w.$]+')


@dataclass(frozen=True)
class Fragment:
    name: str
    address: int
    data: bytes
    assembly: str
    module: str


def namespace_locals(text, name):
    if not re.fullmatch(IDENTIFIER, name):
        raise RegionError('Invalid assembler identifier: %s' % name)
    def replace(match):
        token = match.group()
        return '.Lregion_%s_%s' % (name, token[2:]) if token.startswith('.L') else token
    return LOCAL_TOKEN.sub(replace, text)


def extract_functions(text):
    """Only explicit compiler definitions; INCLUDE_ASM directives are excluded."""
    result = {}
    pattern = re.compile(r'^\s*\.type\s+(' + IDENTIFIER + r'),\s*[%@]?function\s*$', re.M)
    matches = list(pattern.finditer(text))
    for index, match in enumerate(matches):
        name = match[1]
        stop = matches[index + 1].start() if index + 1 < len(matches) else len(text)
        span = text[match.start():stop]
        if '.thumb_func' not in span or re.search(r'^\s*\.(?:arm|code\s+32)\b', span, re.M):
            continue
        end = re.search(r'^\s*\.size\s+' + re.escape(name) + r'\s*,[^\n]*',
                        text[match.end():stop], re.M)
        if end is None:
            raise RegionError('Missing compiler function size for %s' % name)
        body = text[match.start():match.end() + end.end()] + '\n'
        if not re.search(r'^' + re.escape(name) + r':', body, re.M):
            raise RegionError('Missing compiler definition for %s' % name)
        if '.thumb_func' not in body or re.search(r'^\s*\.(?:include|arm|code\s+32)\b', body, re.M):
            continue
        result[name] = '.globl %s\n%s' % (name, body)
    return result


def active_c_names(preprocessed, known):
    aliases = source_index.aliases(preprocessed, known)
    return {aliases.get(item['name'], item['name'])
            for item in source_index.functions(preprocessed)} & set(known)


def validate_intervals(fragments, rom_size):
    ordered = sorted(fragments, key=lambda item: (item.address, item.name))
    cursor = ROM_BASE
    for fragment in ordered:
        start = fragment.address
        end = start + len(fragment.data)
        if not fragment.data or start < ROM_BASE or end > ROM_BASE + rom_size or start & 1:
            raise RegionError('Fragment outside ROM bounds: %s' % fragment.name)
        if start < cursor:
            raise RegionError('C fragment overlap: %s' % fragment.name)
        cursor = end
    return ordered


def select_fragments(fragments, eu_rom, target_rom):
    selected = []
    for fragment in fragments:
        offset = fragment.address - ROM_BASE
        end = offset + len(fragment.data)
        if offset < 0 or end > len(eu_rom) or eu_rom[offset:end] != fragment.data:
            raise RegionError('EU compiler fragment does not match the verified ROM: %s' % fragment.name)
        if len(fragment.data) >= 8 and target_rom[offset:end] == fragment.data:
            selected.append(fragment)
    return validate_intervals(selected, len(target_rom))


def render_layout(rom_path, rom_size, fragments):
    path = str(Path(rom_path).resolve().as_posix())
    if any(char in path for char in ('\n', '\r', '\x00')):
        raise RegionError('Invalid reference ROM path')
    path = path.replace('\\', '\\\\').replace('"', '\\"')
    lines = ['.code 16', '.section .rom,"ax",%progbits',
             '.global __region_rom_start', '__region_rom_start:']
    gaps = []
    cursor = 0
    for fragment in validate_intervals(fragments, rom_size):
        offset = fragment.address - ROM_BASE
        if offset > cursor:
            gaps.append((cursor, offset - cursor))
            lines.append('.incbin "%s", %s, %s' % (path, cursor, offset - cursor))
        lines.append(namespace_locals(fragment.assembly, fragment.name))
        cursor = offset + len(fragment.data)
    if cursor < rom_size:
        gaps.append((cursor, rom_size - cursor))
        lines.append('.incbin "%s", %s, %s' % (path, cursor, rom_size - cursor))
    lines += ['.global __region_rom_end', '__region_rom_end:']
    return '\n'.join(lines) + '\n', gaps


def render_linker(symbols, definitions, rom_size):
    lines = ['ENTRY(__region_rom_start)', 'SECTIONS { . = 0x08000000; .rom : { *(.rom) } }',
             'ASSERT(SIZEOF(.rom) == %s, "Regional ROM size changed")' % rom_size]
    for name, value in sorted(symbols.items()):
        if name in definitions or name in ('__region_rom_start', '__region_rom_end'):
            continue
        if not re.fullmatch(IDENTIFIER, name):
            raise RegionError('Invalid linked symbol: %s' % name)
        lines.append('PROVIDE(%s = 0x%08x);' % (name, value))
    return '\n'.join(lines) + '\n'


def run(command, log):
    result = subprocess.run([str(arg) for arg in command], cwd=ROOT,
                            capture_output=True, text=True)
    Path(log).write_text(result.stdout + result.stderr, encoding='utf-8')
    if result.returncode:
        raise RegionError('Command failed; see %s\n%s' % (log, (result.stdout + result.stderr)[-2000:]))


def link_layout(layout, script, elf, binary, prefix='arm-none-eabi-'):
    obj = Path(elf).with_suffix('.o')
    run([prefix + 'as', '-mcpu=arm7tdmi', '-I', ROOT, '-o', obj, layout],
        Path(elf).with_suffix('.as.log'))
    run([prefix + 'ld', '-T', script, '-o', elf, obj], Path(elf).with_suffix('.ld.log'))
    run([prefix + 'objcopy', '-O', 'binary', '-j', '.rom', elf, binary],
        Path(elf).with_suffix('.objcopy.log'))


def linked_symbols_and_fragments(elf_path, assembly_dir):
    definitions = {}
    for source in sorted(Path(assembly_dir).glob('*.s')):
        assembly_functions = extract_functions(source.read_text(encoding='utf-8'))
        preprocessed = source.with_suffix('.i')
        if not preprocessed.exists():
            raise RegionError('Missing normal preprocessed C source: %s' % preprocessed)
        active = active_c_names(preprocessed.read_text(encoding='utf-8'), assembly_functions)
        for name, assembly in assembly_functions.items():
            if name not in active:
                continue
            if name in definitions:
                raise RegionError('Duplicate compiler definition: %s' % name)
            definitions[name] = (assembly, source.stem)
    symbols = {}
    fragments = []
    with Path(elf_path).open('rb') as stream:
        elf = ELFFile(stream)
        for symbol in elf.get_section_by_name('.symtab').iter_symbols():
            name = symbol.name
            if name and symbol['st_info']['bind'] in ('STB_GLOBAL', 'STB_WEAK') and symbol['st_shndx'] != 'SHN_UNDEF':
                symbols[name] = int(symbol['st_value'])
            if name not in definitions or symbol['st_info']['type'] != 'STT_FUNC':
                continue
            if not isinstance(symbol['st_shndx'], int) or not int(symbol['st_value']) & 1:
                continue
            address = int(symbol['st_value']) & ~1
            size = int(symbol['st_size'])
            if size <= 0:
                continue
            section = elf.get_section(symbol['st_shndx'])
            offset = address - int(section['sh_addr'])
            data = section.data()[offset:offset + size]
            if len(data) != size:
                raise RegionError('Truncated linked function: %s' % name)
            assembly, module = definitions[name]
            fragments.append(Fragment(name, address, data, assembly, module))
    return symbols, fragments


def validate_output_paths(rom, out, output):
    references = {Path(rom).resolve(), (ROOT / 'baserom.gba').resolve(),
                  (ROOT / 'baserom_usa.gba').resolve(), (ROOT / 'baserom_jp.gba').resolve()}
    eu_outputs = {(ROOT / ('shiningsoul2_eu.' + suffix)).resolve()
                  for suffix in ('gba', 'elf', 'map')}
    scratch = {(Path(out) / name).resolve() for name in
               ('layout.s', 'layout.ld', 'linked.o', 'linked.elf', 'linked.gba', 'report.json',
                'eu-compare.log', 'linked.as.log', 'linked.ld.log', 'linked.objcopy.log')}
    published = {Path(output).resolve(), Path(output).with_suffix('.elf').resolve()}
    if scratch & (references | eu_outputs) or published & (references | eu_outputs | scratch):
        raise RegionError('Regional output paths must not overwrite reference ROMs, EU outputs or scratch files')
    if Path(output).suffix != '.gba':
        raise RegionError('Regional output must use the .gba extension')


def build(region, rom, out, output, prefix='arm-none-eabi-'):
    if region not in ('usa', 'jp'):
        raise RegionError('Use the standard make compare target for EU')
    rom, out, output = Path(rom).resolve(), Path(out).resolve(), Path(output).resolve()
    eu_path = ROOT / 'baserom.gba'
    validate_output_paths(rom, out, output)
    identity = verify_rom(rom, region)
    eu_identity = verify_rom(eu_path, 'eu')
    out.mkdir(parents=True, exist_ok=True)
    run(['make', 'REGION=eu', 'BUILD=build', 'NAME=shiningsoul2_eu', 'NM_FLAGS=', 'compare'], out / 'eu-compare.log')
    symbols, fragments = linked_symbols_and_fragments(ROOT / 'shiningsoul2_eu.elf', ROOT / 'build/src')
    eu_data, target_data = eu_path.read_bytes(), rom.read_bytes()
    selected = select_fragments(fragments, eu_data, target_data)
    if not selected:
        raise RegionError('No verified shared C intervals; refusing a reference-only output')
    layout, gaps = render_layout(rom, identity['size'], selected)
    assembly_path, script_path = out / 'layout.s', out / 'layout.ld'
    assembly_path.write_text(layout, encoding='utf-8', newline='\n')
    script_path.write_text(render_linker(symbols, {item.name for item in selected}, identity['size']),
                           encoding='utf-8', newline='\n')
    elf_path, binary_path = out / 'linked.elf', out / 'linked.gba'
    link_layout(assembly_path, script_path, elf_path, binary_path, prefix)
    result = binary_path.read_bytes()
    if result != target_data:
        first = next((index for index, pair in enumerate(zip(result, target_data)) if pair[0] != pair[1]),
                     min(len(result), len(target_data)))
        raise RegionError('Regional result differs at ROM offset 0x%X; output not published' % first)
    verify_rom(binary_path, region)
    with elf_path.open('rb') as stream:
        elf = ELFFile(stream)
        table = elf.get_section_by_name('.symtab')
        for fragment in selected:
            linked = table.get_symbol_by_name(fragment.name)
            if not linked or int(linked[0]['st_value']) & ~1 != fragment.address:
                raise RegionError('C interval moved: %s' % fragment.name)
            offset = fragment.address - ROM_BASE
            if result[offset:offset + len(fragment.data)] != fragment.data:
                raise RegionError('C interval changed: %s' % fragment.name)
    compiled_bytes = sum(len(item.data) for item in selected)
    report = {
        'schema_version': 1, 'region': region, 'identity': identity,
        'method': 'same-address exact normal C intervals with explicit reference-byte gaps',
        'eu_source_rom_sha256': eu_identity['sha256'],
        'compiled_intervals': len(selected), 'compiled_interval_bytes': compiled_bytes,
        'reference_bytes': sum(length for _, length in gaps), 'rom_bytes': len(result),
        'whole_rom_hash_matches': True,
        'limitation': 'This is not full regional C coverage or the EU matching/name percentage. Unchanged addresses do not establish a general regional relocation map.',
        'functions': [{'canonical_eu_symbol': item.name, 'address': '0x%08X' % item.address,
                       'bytes': len(item.data), 'module': item.module,
                       'sha256': hashlib.sha256(item.data).hexdigest()} for item in selected],
    }
    (out / 'report.json').write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
    output.parent.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(binary_path, output)
    shutil.copyfile(elf_path, output.with_suffix('.elf'))
    print('%s: OK (%s)' % (output.name, identity['sha1']))
    print('%s compiled C intervals, %s bytes; %s reference bytes. Regional C coverage is incomplete.' %
          (len(selected), compiled_bytes, report['reference_bytes']))
    return report


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--region', choices=('usa', 'jp'), required=True)
    parser.add_argument('--rom', type=Path)
    parser.add_argument('--out', type=Path)
    parser.add_argument('--output', type=Path)
    parser.add_argument('--prefix', default='arm-none-eabi-')
    args = parser.parse_args(argv)
    profile = load_profiles()[args.region]
    try:
        build(args.region, args.rom or ROOT / profile['filename'],
              args.out or ROOT / 'build/regions' / args.region,
              args.output or ROOT / ('shiningsoul2_%s.gba' % args.region), args.prefix)
    except (RegionError, OSError) as exc:
        parser.exit(1, '%s\n' % exc)


if __name__ == '__main__':
    main()
