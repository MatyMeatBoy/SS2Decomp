#!/usr/bin/env python3
"""Derive a regional symbol table for EU C functions that moved in a regional ROM.

USA and Japan keep the EU link order, so most functions are the same machine code at a
different address, differing only in relocated words (literal-pool addresses and BL targets).
This tool pairs each linked EU C function with the regional address where every non-relocated
byte is identical, then solves each relocation for the regional value of its symbol:

- R_ARM_ABS32 to S: regional word - (EU word - EU value of S)
- R_ARM_THM_CALL to S: regional BL target - (EU BL target - EU address of S)
- section-relative words (switch tables) must move with the function.

A symbol that resolves to two different regional values is dropped, together with every function
that needs it. The result is written to tools/config/region_symbols_<region>.json:

- "functions": EU address of each relocated EU C function -> regional address where
  `make REGION=<region> compare` places it;
- "symbols": EU value -> regional value of every symbol those functions reference.

Keys are EU addresses rather than names, so renaming functions or globals does not invalidate the
table. It holds addresses only (no ROM bytes). The regional build still requires the whole ROM
hash to match, so a wrong entry cannot be admitted silently. Run after a normal EU `make compare`.
"""
import argparse
from collections import defaultdict
import json
from pathlib import Path
import re
import struct

from elftools.elf.elffile import ELFFile
from rom_regions import ROOT, RegionError, load_profiles, verify_rom
import region_build

ABS32, THM_CALL, THM_PC22 = 2, 10, 30
WINDOW = 0x4000
MIN_SIZE = 8


def table_path(region):
    return ROOT / 'tools/config' / ('region_symbols_%s.json' % region)


def object_relocations(objects):
    """{function name: [(offset in function, type, symbol name or None for section-relative)]}"""
    relocations = {}
    for path in objects:
        with Path(path).open('rb') as stream:
            elf = ELFFile(stream)
            table = elf.get_section_by_name('.symtab')
            text = elf.get_section_by_name('.text')
            rel = elf.get_section_by_name('.rel.text')
            if table is None or text is None:
                continue
            index = elf.get_section_index('.text')
            functions = sorted((int(sym['st_value']) & ~1, int(sym['st_size']), sym.name)
                               for sym in table.iter_symbols()
                               if sym['st_info']['type'] == 'STT_FUNC' and sym['st_size']
                               and sym['st_shndx'] == index)
            for _, _, name in functions:
                relocations.setdefault(name, [])
            if rel is None:
                continue
            for item in rel.iter_relocations():
                sym = table.get_symbol(item['r_info_sym'])
                offset = int(item['r_offset'])
                for start, size, name in functions:
                    if start <= offset < start + size:
                        local = sym['st_info']['type'] == 'STT_SECTION' or not sym.name
                        relocations[name].append((offset - start, int(item['r_info_type']),
                                                  None if local else sym.name))
                        break
    return relocations


def bl_target(rom, address):
    high, low = struct.unpack_from('<HH', rom, address - region_build.ROM_BASE)
    if high & 0xF800 != 0xF000 or low & 0xF800 != 0xF800:
        return None
    offset = (high & 0x7FF) << 12 | (low & 0x7FF) << 1
    if offset & 0x400000:
        offset -= 0x800000
    return address + 4 + offset


def masked_segments(size, relocations):
    masked = sorted(offset for offset, _, _ in relocations)
    segments, cursor = [], 0
    for offset in masked:
        if offset > cursor:
            segments.append((cursor, offset))
        cursor = max(cursor, offset + 4)
    if cursor < size:
        segments.append((cursor, size))
    return segments


def resolve(fragment, relocations, symbols, eu_rom, target_rom, address):
    """Regional symbol values needed to place fragment at address, or None if the code differs."""
    data = target_rom[address - region_build.ROM_BASE:][:len(fragment.data)]
    if len(data) != len(fragment.data):
        return None
    for start, end in masked_segments(len(data), relocations):
        if data[start:end] != fragment.data[start:end]:
            return None
    needs = defaultdict(set)
    for offset, kind, name in relocations:
        if name is not None and name not in symbols:
            return None
        if kind == ABS32:
            eu_word = struct.unpack_from('<I', fragment.data, offset)[0]
            word = struct.unpack_from('<I', data, offset)[0]
            if name is None:
                if (word - eu_word) & 0xFFFFFFFF != (address - fragment.address) & 0xFFFFFFFF:
                    return None
            else:
                needs[name].add((word - (eu_word - symbols[name])) & 0xFFFFFFFF)
        elif kind in (THM_CALL, THM_PC22) and name is not None:
            eu_target = bl_target(eu_rom, fragment.address + offset)
            target = bl_target(target_rom, address + offset)
            if eu_target is None or target is None:
                return None
            needs[name].add((target - (eu_target - (symbols[name] & ~1))) | (symbols[name] & 1))
        else:
            return None
    return needs


def self_contained(fragment, relocations, symbols):
    """Only symbols reached through relocations can be remapped; a reference the assembler resolved
    inside the EU object (e.g. a pool label of a neighbouring asm block) cannot be moved."""
    tokens = set(re.findall(r'(?<![\w.$])' + region_build.IDENTIFIER, fragment.assembly))
    allowed = {fragment.name} | {name for _, _, name in relocations if name}
    return not (tokens & set(symbols)) - allowed


def derive(rom):
    eu_rom = (ROOT / 'baserom.gba').read_bytes()
    target_rom = Path(rom).read_bytes()
    rom_end = region_build.ROM_BASE + len(target_rom)
    symbols, fragments = region_build.linked_symbols_and_fragments(ROOT / 'shiningsoul2_eu.elf',
                                                                   ROOT / 'build/src')
    relocations = object_relocations(sorted((ROOT / 'build/src').glob('*.o')))
    placed, needs = {}, {}
    delta = 0
    placed_end = region_build.ROM_BASE
    for fragment in sorted(fragments, key=lambda item: item.address):
        relocs = relocations.get(fragment.name)
        if relocs is None or not self_contained(fragment, relocs, symbols):
            continue
        expected = fragment.address + delta
        found = resolve(fragment, relocs, symbols, eu_rom, target_rom, expected)
        address = expected
        if found is None and len(fragment.data) >= MIN_SIZE:
            hits = []
            segments = masked_segments(len(fragment.data), relocs)
            if not segments:
                continue
            first, end = max(segments, key=lambda seg: seg[1] - seg[0])
            needle = fragment.data[first:end]
            low = max(region_build.ROM_BASE, expected - WINDOW) - region_build.ROM_BASE + first
            high = min(rom_end, expected + WINDOW) - region_build.ROM_BASE + end
            position = target_rom.find(needle, low, high)
            while position >= 0:
                candidate = position - first + region_build.ROM_BASE
                if candidate != expected and not candidate & 1 and candidate >= placed_end:
                    result = resolve(fragment, relocs, symbols, eu_rom, target_rom, candidate)
                    if result is not None:
                        hits.append((candidate, result))
                position = target_rom.find(needle, position + 1, high)
            if len(hits) != 1:
                continue
            address, found = hits[0]
            delta = address - fragment.address
        if found is None:
            continue
        same = address == fragment.address and \
            target_rom[address - region_build.ROM_BASE:][:len(fragment.data)] == fragment.data
        if same:
            continue
        placed[fragment.name] = address
        needs[fragment.name] = found
        placed_end = address + len(fragment.data)
    # Functions not found by position may still be located by their callers' BL targets.
    called = defaultdict(set)
    for found in needs.values():
        for symbol, value in found.items():
            called[symbol] |= value
    for fragment in fragments:
        relocs = relocations.get(fragment.name)
        if fragment.name in placed or relocs is None or not self_contained(fragment, relocs, symbols) or len(called.get(fragment.name, ())) != 1:
            continue
        address = next(iter(called[fragment.name])) & ~1
        found = resolve(fragment, relocs, symbols, eu_rom, target_rom, address)
        if found is not None and not (address == fragment.address and target_rom[
                address - region_build.ROM_BASE:][:len(fragment.data)] == fragment.data):
            placed[fragment.name] = address
            needs[fragment.name] = found
    # Resolve every symbol; drop conflicting symbols, overlapping placements and the functions that
    # need them.
    sizes = {fragment.name: len(fragment.data) for fragment in fragments}
    while True:
        ordered = sorted(placed, key=placed.get)
        for first, second in zip(ordered, ordered[1:]):
            if placed[second] < placed[first] + sizes[first]:
                raise RegionError('Overlapping placements: %s and %s' % (first, second))
        # Keyed by EU value, so aliases of one EU symbol must agree too.
        values = defaultdict(set)
        for name, address in placed.items():
            values[symbols[name]].add(address | (symbols[name] & 1))
            for symbol, found in needs[name].items():
                values[symbols[symbol]] |= found
        conflicts = {value for value, found in values.items() if len(found) > 1}
        dropped = {name for name in placed
                   if symbols[name] in conflicts or conflicts & {symbols[item] for item in needs[name]}}
        if not dropped:
            break
        for name in dropped:
            del placed[name]
    referenced = {symbols[item] for name in placed for item in needs[name]}
    eu_addresses = {name: fragment.address for fragment in fragments for name in (fragment.name,)}
    return ({eu_addresses[name]: placed[name] for name in sorted(placed, key=placed.get)},
            {value: next(iter(values[value])) for value in sorted(referenced)})


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('--region', choices=('usa', 'jp'), required=True)
    parser.add_argument('--rom', type=Path)
    args = parser.parse_args(argv)
    profile = load_profiles()[args.region]
    rom = args.rom or ROOT / profile['filename']
    try:
        identity = verify_rom(rom, args.region)
        verify_rom(ROOT / 'baserom.gba', 'eu')
        placed, symbols = derive(rom)
    except (RegionError, OSError) as exc:
        parser.exit(1, '%s\n' % exc)
    table = {
        'schema_version': 1,
        'region': args.region,
        'rom_sha1': identity['sha1'],
        'generated_by': 'tools/scripts/region_symbols.py',
        'functions': {'0x%08X' % eu: '0x%08X' % address for eu, address in placed.items()},
        'symbols': {'0x%08X' % eu: '0x%08X' % value for eu, value in symbols.items()},
    }
    table_path(args.region).write_text(json.dumps(table, indent=1) + '\n', encoding='utf-8')
    print('%s: %d relocated EU C functions, %d referenced symbols -> %s'
          % (args.region, len(placed), len(symbols), table_path(args.region).relative_to(ROOT)))


if __name__ == '__main__':
    main()
