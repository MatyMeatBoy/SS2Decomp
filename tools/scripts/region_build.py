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


REGION_SYMBOL = re.compile(r'(?P<region>usa|jp)_(?P<kind>sub|gUnk)_(?P<address>[0-9A-F]{8})')
GAME_CC1 = ['tools/agbcc/bin/agbcc', '-mthumb-interwork', '-Wimplicit', '-Wparentheses', '-O2',
            '-fhex-asm', '-fprologue-bugfix']
GAME_CPP = ['-nostdinc', '-I', 'tools/agbcc/include', '-iquote', 'include', '-undef', '-std=gnu17']


def region_symbol_address(name, region):
    """usa_sub_0801A1C8 / usa_gUnk_03005EBC name a regional address; functions get the Thumb bit."""
    match = REGION_SYMBOL.fullmatch(name)
    if not match or match['region'] != region:
        return None
    address = int(match['address'], 16)
    return address | 1 if match['kind'] == 'sub' else address


def region_only_fragments(region, target_rom, out, prefix='arm-none-eabi-'):
    """Compile src/regions/<region>/*.c with the game compiler.

    Every definition must be named <region>_sub_<ADDRESS>; it is placed at that address and must
    reproduce the regional ROM bytes there. References to <region>_sub_/<region>_gUnk_ symbols are
    resolved from their names; any other symbol resolves through the normal EU build.
    """
    sources = sorted((ROOT / 'src/regions' / region).glob('*.c'))
    fragments, references, called = [], set(), set()
    work = Path(out) / 'region_only'
    work.mkdir(parents=True, exist_ok=True)
    for source in sources:
        stem = work / source.stem
        run([prefix + 'cpp', *GAME_CPP, source, '-o', stem.with_suffix('.i')], stem.with_suffix('.cpp.log'))
        run([*GAME_CC1, stem.with_suffix('.i'), '-o', stem.with_suffix('.s')], stem.with_suffix('.cc1.log'))
        text = stem.with_suffix('.s').read_text(encoding='utf-8')
        called |= set(re.findall(r'^\s*bl\s+(' + IDENTIFIER + r')\s*$', text, re.M))
        run([prefix + 'as', '-mcpu=arm7tdmi', '-o', stem.with_suffix('.o'), stem.with_suffix('.s')],
            stem.with_suffix('.as.log'))
        with stem.with_suffix('.o').open('rb') as stream:
            elf = ELFFile(stream)
            table = elf.get_section_by_name('.symtab')
            sizes = {sym.name: int(sym['st_size']) for sym in table.iter_symbols()
                     if sym['st_info']['type'] == 'STT_FUNC'}
            references |= {sym.name for sym in table.iter_symbols()
                           if sym.name and sym['st_shndx'] == 'SHN_UNDEF'}
        for name, assembly in extract_functions(text).items():
            address = region_symbol_address(name, region)
            if address is None or not address & 1:
                raise RegionError('%s: regional definition %s must be named %s_sub_<ADDRESS>'
                                  % (source.name, name, region))
            address &= ~1
            size = sizes.get(name, 0)
            offset = address - ROM_BASE
            if size <= 0 or offset < 0 or offset + size > len(target_rom):
                raise RegionError('Regional function outside the ROM: %s' % name)
            fragments.append(Fragment(name, address, target_rom[offset:offset + size], assembly,
                                      'regions/%s/%s' % (region, source.stem)))
    symbols = {}
    for name in references:
        address = region_symbol_address(name, region)
        if address is not None:
            symbols[name] = address
    return fragments, symbols, references & called


def relocated_fragments(region, fragments, selected, target_rom, eu_symbols):
    """EU C functions that a regional ROM keeps with identical code at another address.

    tools/config/region_symbols_<region>.json (written by region_symbols.py) maps the EU address
    of each such function to its regional address, and the EU value of every symbol it references
    to the regional value. The EU compiler assembly is reused unchanged except that those references
    (and the function's own label) are renamed into a __<region>_ namespace, so the EU values stay
    available to same-address fragments. Returns (fragments, symbols, called names).
    """
    path = ROOT / 'tools/config' / ('region_symbols_%s.json' % region)
    if not path.exists():
        return [], {}, set()
    table = json.loads(path.read_text(encoding='utf-8'))
    if table.get('region') != region:
        raise RegionError('%s is not the %s symbol table' % (path.name, region))
    functions = {int(eu, 16): int(value, 16) for eu, value in table['functions'].items()}
    values = {int(eu, 16): int(value, 16) for eu, value in table['symbols'].items()}
    by_address = {fragment.address: fragment for fragment in fragments}
    taken = {fragment.name for fragment in selected}
    prefix = '__%s_' % region
    result, symbols, called = [], {}, set()
    for eu, address in functions.items():
        fragment = by_address.get(eu)
        if fragment is None:
            raise RegionError('%s places 0x%08X, which is not an EU C function' % (path.name, eu))
        if fragment.name in taken:
            continue
        tokens = set(re.findall(r'(?<![\w.$])' + IDENTIFIER, fragment.assembly))
        renamed = {name for name in tokens if name in eu_symbols}
        for name in renamed - {fragment.name}:
            if eu_symbols[name] not in values:
                raise RegionError('%s: no %s value for %s' % (fragment.name, region, name))
            symbols[prefix + name] = values[eu_symbols[name]]
        assembly = re.sub(r'(?<![\w.$])(' + IDENTIFIER + r')',
                          lambda match: prefix + match[1] if match[1] in renamed else match[1],
                          fragment.assembly)
        called |= set(re.findall(r'^\s*bl\s+(' + IDENTIFIER + r')\s*$', assembly, re.M))
        offset = address - ROM_BASE
        result.append(Fragment(prefix + fragment.name, address,
                               target_rom[offset:offset + len(fragment.data)], assembly, fragment.module))
    return result, symbols, called


def thumb_call_targets(references, symbols):
    """Absolute Thumb entries for BL targets of region-only code (BL needs a Thumb symbol, not an ABS value).

    Names that are only used as data (function pointers) keep their linker value with the Thumb bit."""
    lines = []
    for name in sorted(references):
        value = symbols.get(name)
        if value is None:
            raise RegionError('Unresolved regional reference: %s' % name)
        if value & 1 and re.fullmatch(IDENTIFIER, name):
            lines.append('.thumb_set %s, 0x%08x' % (name, value & ~1))
    return '\n'.join(lines) + '\n' if lines else ''


def validate_output_paths(rom, out, output):
    references = {Path(rom).resolve(), (ROOT / 'baserom.gba').resolve(),
                  (ROOT / 'baserom_usa.gba').resolve(), (ROOT / 'baserom_jp.gba').resolve()}
    eu_outputs = {(ROOT / (name + '.' + suffix)).resolve()
                  for name in ('shiningsoul2_eu', 'shiningsoul2_nm')
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
    relocated, relocated_symbols, relocated_calls = relocated_fragments(region, fragments, selected,
                                                                       target_data, symbols)
    regional, regional_symbols, regional_refs = region_only_fragments(region, target_data, out, prefix)
    regional_symbols = {**relocated_symbols, **regional_symbols}
    for name, value in regional_symbols.items():
        if name in symbols and symbols[name] != value:
            raise RegionError('Regional symbol conflicts with the EU build: %s' % name)
        symbols[name] = value
    shared_count = len(selected)
    selected = validate_intervals(selected + relocated + regional, len(target_data))
    layout, gaps = render_layout(rom, identity['size'], selected)
    defined = {item.name for item in selected}
    thumb_targets = thumb_call_targets((regional_refs | relocated_calls) - defined, symbols)
    layout += thumb_targets
    set_names = set(re.findall(r'^\.thumb_set (\S+),', thumb_targets, re.M))
    assembly_path, script_path = out / 'layout.s', out / 'layout.ld'
    assembly_path.write_text(layout, encoding='utf-8', newline='\n')
    script_path.write_text(render_linker(symbols, {item.name for item in selected} | set_names,
                                         identity['size']),
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
    regional_names = {item.name for item in regional}
    relocated_names = {item.name for item in relocated}
    relocated_prefix = '__%s_' % region
    report = {
        'schema_version': 1, 'region': region, 'identity': identity,
        'method': 'exact normal C intervals (same-address and relocated EU, region-only) with explicit reference-byte gaps',
        'eu_source_rom_sha256': eu_identity['sha256'],
        'compiled_intervals': len(selected), 'compiled_interval_bytes': compiled_bytes,
        'reference_bytes': sum(length for _, length in gaps), 'rom_bytes': len(result),
        'whole_rom_hash_matches': True,
        'limitation': 'This is not full regional C coverage or the EU matching/name percentage. Unchanged addresses do not establish a general regional relocation map.',
        'functions': [{'canonical_eu_symbol': item.name, 'address': '0x%08X' % item.address,
                       'bytes': len(item.data), 'module': item.module,
                       'sha256': hashlib.sha256(item.data).hexdigest()}
                      for item in selected if item.name not in regional_names | relocated_names],
        'relocated_functions': [{'canonical_eu_symbol': item.name[len(relocated_prefix):],
                                 'address': '0x%08X' % item.address, 'bytes': len(item.data),
                                 'module': item.module, 'sha256': hashlib.sha256(item.data).hexdigest()}
                                for item in selected if item.name in relocated_names],
        'region_only_functions': [{'symbol': item.name, 'address': '0x%08X' % item.address,
                                   'bytes': len(item.data), 'module': item.module,
                                   'sha256': hashlib.sha256(item.data).hexdigest()}
                                  for item in selected if item.name in regional_names],
    }
    (out / 'report.json').write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
    output.parent.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(binary_path, output)
    shutil.copyfile(elf_path, output.with_suffix('.elf'))
    print('%s: OK (%s)' % (output.name, identity['sha1']))
    print('%s compiled C intervals (%s same-address EU, %s relocated EU, %s region-only), %s bytes; '
          '%s reference bytes. Regional C coverage is incomplete.' %
          (len(selected), shared_count, len(relocated), len(regional), compiled_bytes,
           report['reference_bytes']))
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
