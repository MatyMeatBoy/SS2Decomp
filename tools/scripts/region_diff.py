#!/usr/bin/env python3
"""Show how far EU C functions are from their regional form (aid for #ifdef REGION_<REGION> work).

Without FUNC: lists the EU C functions the regional symbol table does not place yet, with the
address guessed from the shift of the placed functions around them and the number of differing
halfwords outside relocations (fewest first). With FUNC: prints a disassembly diff of the
-DREGION_<REGION> build of FUNC against the regional ROM.

Uses the existing build/regions/<region>/variant build; run region_symbols.py (or
make REGION=<region> compare) first to refresh it.
"""
import argparse
import bisect
import difflib
import json
import struct
import subprocess
import tempfile
from pathlib import Path

from rom_regions import ROOT, load_profiles
import region_build
import region_symbols


def candidates(region):
    work = ROOT / 'build/regions' / region / 'variant'
    elf = work / 'shiningsoul2.elf'
    if not elf.exists():
        raise SystemExit('Missing %s; run region_symbols.py --region %s first' % (elf, region))
    symbols, fragments = region_build.linked_symbols_and_fragments(elf, work / 'src')
    _, eu_fragments = region_build.linked_symbols_and_fragments(ROOT / 'shiningsoul2_eu.elf', ROOT / 'build/src')
    eu_address = {fragment.name: fragment.address for fragment in eu_fragments}
    relocations = region_symbols.object_relocations(sorted((work / 'src').glob('*.o')))
    table = json.loads(region_symbols.table_path(region).read_text(encoding='utf-8'))
    placed = sorted((int(eu, 16), int(address, 16)) for eu, address in table['functions'].items())
    keys = [eu for eu, _ in placed]
    return symbols, fragments, eu_address, relocations, placed, keys


def guesses(fragment, eu, placed, keys, relocs=None, target_rom=None, radius=0x100):
    """Regional addresses to try for fragment: the shift of the placed neighbours and, given the
    regional ROM, every nearby address where the function's leading bytes recur (literal pools
    of the functions in between may have changed size)."""
    index = bisect.bisect_left(keys, eu)
    result = []
    for item in (index - 1, index):
        if 0 <= item < len(placed):
            address = fragment.address + placed[item][1] - placed[item][0]
            if address not in result:
                result.append(address)
    result = result or [fragment.address]
    if target_rom is None:
        return result
    segments = region_symbols.masked_segments(len(fragment.data), relocs or [])
    if not segments:
        return result
    first, end = segments[0]
    needle = fragment.data[first:min(end, first + 6)]
    if len(needle) < 4:
        return result
    extra = []
    for base in result:
        low = max(0, base - radius - region_build.ROM_BASE + first)
        high = base + radius - region_build.ROM_BASE + first + len(needle)
        position = target_rom.find(needle, low, high)
        while position >= 0:
            address = position - first + region_build.ROM_BASE
            if not address & 1 and address not in result and address not in extra:
                extra.append(address)
            position = target_rom.find(needle, position + 2, high)
    return result + extra


def difference(fragment, relocs, target_rom, address):
    data = target_rom[address - region_build.ROM_BASE:][:len(fragment.data)]
    return sum(1 for start, end in region_symbols.masked_segments(len(fragment.data), relocs)
               for offset in range(start, end, 2) if data[offset:offset + 2] != fragment.data[offset:offset + 2])


def disassemble(data, address, prefix):
    with tempfile.NamedTemporaryFile(suffix='.bin') as stream:
        stream.write(data)
        stream.flush()
        text = subprocess.run([prefix + 'objdump', '-D', '-b', 'binary', '-marmv4t', '-Mforce-thumb',
                               '--adjust-vma=0x%x' % address, stream.name],
                              capture_output=True, text=True, check=True).stdout
    lines = []
    for line in text.splitlines():
        parts = line.split('\t')
        if len(parts) >= 3 and parts[0].strip().endswith(':'):
            lines.append('%s %s' % (parts[1].strip(), ' '.join(parts[2:])))
    return lines


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('--region', choices=('usa', 'jp'), default='usa')
    parser.add_argument('func', nargs='?')
    parser.add_argument('--address', type=lambda text: int(text, 16), help='regional address of FUNC')
    parser.add_argument('--limit', type=int, default=60)
    parser.add_argument('--prefix', default='arm-none-eabi-')
    args = parser.parse_args(argv)
    target_rom = (ROOT / load_profiles()[args.region]['filename']).read_bytes()
    symbols, fragments, eu_address, relocations, placed, keys = candidates(args.region)
    done = {eu for eu, _ in placed}
    if args.func:
        fragment = next((item for item in fragments if item.name == args.func), None)
        if fragment is None:
            raise SystemExit('%s is not a C function' % args.func)
        relocs = relocations.get(fragment.name, [])
        options = [args.address] if args.address else guesses(fragment, eu_address[fragment.name], placed, keys,
                                                               relocs, target_rom)
        address = min(options, key=lambda item: difference(fragment, relocs, target_rom, item))
        data = target_rom[address - region_build.ROM_BASE:][:len(fragment.data)]
        print('%s: EU 0x%08X, %s 0x%08X, %d bytes, %d differing halfwords outside relocations%s'
              % (fragment.name, eu_address[fragment.name], args.region, address, len(fragment.data),
                 difference(fragment, relocs, target_rom, address),
                 ' (placed)' if eu_address[fragment.name] in done else ''))
        counted = ['+0x%X: %s -> %s' % (offset, fragment.data[offset:offset + 2][::-1].hex(),
                                         data[offset:offset + 2][::-1].hex())
                   for start, end in region_symbols.masked_segments(len(fragment.data), relocs)
                   for offset in range(start, end, 2) if data[offset:offset + 2] != fragment.data[offset:offset + 2]]
        if counted:
            print('counted: ' + ', '.join(counted))
        mine = disassemble(fragment.data, address, args.prefix)
        theirs = disassemble(data, address, args.prefix)
        for line in difflib.unified_diff(mine, theirs, 'variant', args.region, n=2, lineterm=''):
            print(line)
        return
    rows = []
    for fragment in fragments:
        eu = eu_address.get(fragment.name)
        if eu is None or eu in done or fragment.name not in relocations:
            continue
        if eu == fragment.address and target_rom[eu - region_build.ROM_BASE:][:len(fragment.data)] == fragment.data:
            continue  # same address and bytes: taken unchanged
        relocs = relocations[fragment.name]
        best = min(guesses(fragment, eu, placed, keys, relocs, target_rom),
                   key=lambda item: difference(fragment, relocs, target_rom, item))
        rows.append((difference(fragment, relocs, target_rom, best), len(fragment.data), fragment.name,
                     fragment.module, best))
    rows.sort()
    for diff, size, name, module, address in rows[:args.limit]:
        print('%4d %5d  %-40s %-16s 0x%08X' % (diff, size, name, module, address))
    print('%d unplaced EU C functions, %d bytes' % (len(rows), sum(row[1] for row in rows)))


if __name__ == '__main__':
    main()
