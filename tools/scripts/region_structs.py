#!/usr/bin/env python3
"""Give player-record struct views their regional layout (include/region.h).

Sources describe the 0x14C-byte player record with many local views such as
    struct RemovePlayer019 { u8 pad[0x34]; struct RemoveEntry019 *entries; u8 tail[0x114]; };
This tool computes the EU layout of each struct of exactly 0x14C bytes, keeps every named member
and rewrites only the dimensions of its pad arrays (names pad*/unk*/gap*/tail*/fill*/rest* or p<hex>) so
that member o lands at PLAYER_FIELD(o) and the struct is PLAYER_SIZE bytes:
    struct RemovePlayer019 { u8 pad[PLAYER_FIELD(0x34)]; ...; u8 tail[PLAYER_SIZE - PLAYER_FIELD(0x38)]; };
In the EU build the expressions keep their values. A rewrite is kept only if, in the
-DREGION_<REGION> object of the module, no exact function is lost and the module's total difference
from the regional ROM bytes decreases (follow with region_autofix.py for the remaining literals). Run make compare, region_symbols.py and make REGION=<region> compare afterwards.

    python3 tools/scripts/region_structs.py [--dry-run] [MODULE ...]
"""
import argparse
import re
from pathlib import Path

from elftools.elf.elffile import ELFFile
from rom_regions import ROOT, load_profiles
import region_build
import region_diff
import region_symbols
from region_autofix import Checker

EU_SIZE, USA_SIZE = 0x14C, 0x158


class Record:
    def __init__(self, eu_size, usa_size, field, size, mapping):
        self.eu_size, self.usa_size, self.field, self.size, self.map = eu_size, usa_size, field, size, mapping


def enemy_field(offset):
    return offset


# Record kinds by EU size: player record and enemy actor record (include/region.h).
RECORDS = {0x14C: None, 0x2E0: None}
PAD = re.compile(r'^(pad|unk|gap|tail|fill|rest|_|p[0-9A-Fa-f]+$|u[0-9A-Fa-f]+$|x[0-9A-Fa-f]+$)', re.I)
BASE = {'u8': 1, 's8': 1, 'char': 1, 'bool8': 1, 'vu8': 1, 'vs8': 1,
        'u16': 2, 's16': 2, 'short': 2, 'vu16': 2, 'vs16': 2, 'bool16': 2,
        'u32': 4, 's32': 4, 'int': 4, 'long': 4, 'unsigned': 4, 'signed': 4, 'float': 4,
        'vu32': 4, 'vs32': 4, 'bool32': 4, 'fixed': 4, 'size_t': 4}


def usa_field(offset):
    return offset if offset < 0x0C else offset + 10 if offset < 0x2A else offset + 12


RECORDS[0x14C] = Record(0x14C, 0x158, 'PLAYER_FIELD', 'PLAYER_SIZE', usa_field)
RECORDS[0x2E0] = Record(0x2E0, 0x454, 'ENEMY_FIELD', 'ENEMY_SIZE', enemy_field)


def strip_comments(text):
    return re.sub(r'/\*.*?\*/|//[^\n]*', lambda m: ' ' * len(m[0]), text, flags=re.S)


def evaluate(expr):
    expr = expr.strip()
    if not re.fullmatch(r'[0-9a-fA-FxX+\-*/() ]+', expr):
        return None
    try:
        return int(eval(re.sub(r'(?<![\w])0[xX]([0-9a-fA-F]+)', lambda m: str(int(m[1], 16)), expr)))
    except Exception:
        return None


class Layout(Exception):
    pass


def type_info(type_text, sizes):
    words = type_text.replace('unsigned int', 'u32').replace('unsigned char', 'u8') \
        .replace('unsigned short', 'u16').split()
    words = [word for word in words if word not in ('const', 'volatile', 'signed') or len(words) == 1]
    if not words:
        raise Layout('no type')
    if words[0] in ('struct', 'union'):
        if len(words) != 2 or words[1] not in sizes:
            raise Layout('unknown %s' % type_text)
        return sizes[words[1]]
    if len(words) != 1 or words[0] not in BASE:
        raise Layout('unknown %s' % type_text)
    return BASE[words[0]], BASE[words[0]]


def members(body, sizes):
    """[(name, offset, size, align, dims span or None, element size, is pad)] and (size, align)."""
    clean = strip_comments(body)
    result, offset, align_all = [], 0, 1
    position = 0
    for statement in clean.split(';'):
        start = position
        position += len(statement) + 1
        if not statement.strip():
            continue
        if '{' in statement or '(' in statement.split('[')[0]:
            raise Layout('nested or function member')
        match = re.fullmatch(r'\s*((?:(?:struct|union)\s+\w+)|(?:\w+(?:\s+\w+)*?))\s+(.+?)\s*', statement, re.S)
        if not match:
            raise Layout('member %r' % statement.strip())
        type_text, declarators = match[1], match[2]
        cursor = start + match.start(2)
        for declarator in declarators.split(','):
            decl = re.fullmatch(r'\s*(\**)\s*(\w+)((?:\s*\[[^\]]*\])*)\s*(?::\s*(\d+))?\s*', declarator)
            if not decl:
                raise Layout('declarator %r' % declarator)
            stars, name, dims, bits = decl[1], decl[2], decl[3], decl[4]
            size, align = (4, 4) if stars else type_info(type_text, sizes)
            if bits is not None and int(bits) != size * 8:
                raise Layout('bit field')
            element = size
            count = 1
            dim_span = None
            for dim in re.finditer(r'\[([^\]]*)\]', dims):
                value = evaluate(dim[1])
                if value is None:
                    raise Layout('dimension %r' % dim[1])
                count *= value
            if dims:
                inner = list(re.finditer(r'\[([^\]]*)\]', dims))
                if len(inner) == 1:
                    base = cursor + decl.start(3) + inner[0].start(1)
                    dim_span = (base, base + len(inner[0][1]))
            offset = (offset + align - 1) // align * align
            result.append((name, offset, size * count, align, dim_span, element,
                           bool(PAD.match(name)) and dim_span is not None))
            offset += size * count
            align_all = max(align_all, align)
            cursor += len(declarator) + 1
    total = (offset + align_all - 1) // align_all * align_all
    return result, (total, align_all)


def struct_definitions(text):
    """[(name, body start, body end)] for struct definitions without nested braces."""
    clean = strip_comments(text)
    found = []
    for match in re.finditer(r'\bstruct\s+(\w+)\s*\{', clean):
        end = clean.find('}', match.end())
        if end < 0 or '{' in clean[match.end():end]:
            continue
        found.append((match[1], match.end(), end))
    return found


def regional_dims(layout, kind=None):
    """{dim span: new expression} so that real members move by the record's field macro, or None."""
    kind = kind or RECORDS[0x14C]
    real = [item for item in layout if not item[6]]
    pads = [item for item in layout if item[6]]
    if not pads:
        return None
    new, usa_offset = {}, 0
    previous = None  # (EU offset, size) of the previous real member
    for name, offset, size, align, span, element, is_pad in layout + [('<end>', kind.eu_size, 0, 1, None, 1, False)]:
        if is_pad:
            continue
        target = kind.usa_size if name == '<end>' else kind.map(offset)
        if target % align:
            return None
        # Pads between the previous real member (or start) and this one take up the difference.
        between = [item for item in pads if (previous[0] + previous[1] if previous else 0) <= item[1] < offset]
        eu_gap = sum(item[2] for item in between)
        usa_gap = target - usa_offset
        if between:
            if usa_gap < 0 or usa_gap == eu_gap and target == offset:
                usa_offset = target + size
                previous = (offset, size)
                continue
            if len(between) != 1 or usa_gap % between[0][5]:
                return None
            pad = between[0]
            if previous is None:
                start = '0'
            else:
                end = previous[0] + previous[1]
                field = kind.field if kind.map(end) != end or kind.map(previous[0]) != previous[0] else None
                if field is None:
                    start = '0x%X' % end
                else:
                    start = '%s(0x%X)' % (field, end) if kind.map(end) == kind.map(previous[0]) + previous[1] \
                        else '(%s(0x%X) + 0x%X)' % (field, previous[0], previous[1])
            stop = kind.size if name == '<end>' else ('%s(0x%X)' % (kind.field, offset)
                                                     if kind.map(offset) != offset else '0x%X' % offset)
            expr = stop if start == '0' else '%s - %s' % (stop, start)
            if pad[5] != 1:
                expr = '(%s) / %d' % (expr, pad[5])
            new[pad[4]] = expr
        elif usa_gap != 0:
            return None
        usa_offset = target + size
        previous = (offset, size)
    return new or None


def player_views(text):
    """[(struct name, {dim span: expression})] for rewritable 0x14C-byte structs of text."""
    sizes, views = {}, []
    for name, start, end in struct_definitions(text):
        try:
            layout, size = members(text[start:end], sizes)
        except Layout:
            continue
        sizes[name] = size
        if size[0] in RECORDS:
            dims = regional_dims(layout, RECORDS[size[0]])
            if dims:
                views.append((name, {(start + a, start + b): expr for (a, b), expr in dims.items()}))
    return views


def module_scores(checker, module, table):
    obj = checker.compile(module)
    if obj is None:
        return None
    relocs = region_symbols.object_relocations([obj])
    scores = {}
    with obj.open('rb') as stream:
        elf = ELFFile(stream)
        text = elf.get_section_by_name('.text').data()
        for symbol in elf.get_section_by_name('.symtab').iter_symbols():
            if symbol['st_info']['type'] != 'STT_FUNC' or symbol.name not in table:
                continue
            start, size = int(symbol['st_value']) & ~1, int(symbol['st_size'])
            data = text[start:start + size]
            best = None
            for address in table[symbol.name]:
                target = checker.target[address - region_build.ROM_BASE:][:size]
                if len(target) != size:
                    continue
                diff = sum(1 for a, b in region_symbols.masked_segments(size, relocs.get(symbol.name, []))
                           for offset in range(a, b, 2) if target[offset:offset + 2] != data[offset:offset + 2])
                best = diff if best is None else min(best, diff)
            if best is not None:
                scores[symbol.name] = best
    return scores


def addresses(region):
    target_rom = (ROOT / load_profiles()[region]['filename']).read_bytes()
    symbols, fragments, eu_address, relocations, placed, keys = region_diff.candidates(region)
    known = dict(placed)
    table = {}
    for fragment in fragments:
        eu = eu_address.get(fragment.name)
        if eu is None:
            continue
        table[fragment.name] = [known[eu]] if eu in known else region_diff.guesses(
            fragment, eu, placed, keys, relocations.get(fragment.name), target_rom)
    return table


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('--region', choices=('usa',), default='usa')
    parser.add_argument('--dry-run', action='store_true')
    parser.add_argument('modules', nargs='*')
    args = parser.parse_args(argv)
    checker = Checker(args.region)
    table = addresses(args.region)
    paths = [ROOT / 'src' / (m + '.c') for m in args.modules] if args.modules else sorted((ROOT / 'src').glob('*.c'))
    total = 0
    for path in paths:
        module = path.stem
        upper = path.read_text(encoding='utf-8').upper()
        if '0X14C' not in upper and '0X2E0' not in upper:
            continue
        tried, baseline = set(), None
        while True:
            text = path.read_text(encoding='utf-8')
            candidate = next((item for item in player_views(text) if item[0] not in tried), None)
            if candidate is None:
                break
            name, dims = candidate
            tried.add(name)
            if args.dry_run:
                print('%s: struct %s: %s' % (module, name, '; '.join(dims.values())))
                continue
            if baseline is None:
                baseline = module_scores(checker, module, table)
                if baseline is None:
                    print('%s: no build' % module)
                    break
            updated = text
            for (a, b), expr in sorted(dims.items(), reverse=True):
                updated = updated[:a] + expr + updated[b:]
            path.write_text(updated, encoding='utf-8')
            scores = module_scores(checker, module, table)
            # No exact function is lost and the module as a whole moves closer to the regional bytes.
            lost = scores is None or any(baseline[f] == 0 and scores.get(f) != 0 for f in baseline) or \
                sum(scores.values()) >= sum(baseline.values())
            closer = 0 if scores is None else sum(1 for f in scores if scores[f] < baseline.get(f, 1 << 30))
            gained = 0 if scores is None else sum(1 for f in scores if scores[f] == 0 and baseline.get(f) != 0)
            if lost or not closer:
                path.write_text(text, encoding='utf-8')
                print('%s: struct %s: %s' % (module, name, 'no build' if scores is None else
                                             'loses functions' if lost else 'no gain'))
                continue
            baseline = scores
            total += gained
            print('%s: struct %s: %d functions closer, +%d exact' % (module, name, closer, gained))
        checker.compile(module)
    print('%d functions gained' % total)


if __name__ == '__main__':
    main()
