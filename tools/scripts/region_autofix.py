#!/usr/bin/env python3
"""Search the regional layout macros (include/region.h) for shared EU functions.

For each EU C function that the regional symbol table does not place yet, wraps integer literals
of its source in PLAYER_FIELD / SAVE_FIELD (and 0x14C in PLAYER_SIZE), recompiles the
-DREGION_<REGION> object of its module and keeps a rewrite only when the function then equals the
regional ROM outside relocations. The macros are the identity in the EU build, so EU output is
unchanged by construction; still run make compare, region_symbols.py and
make REGION=<region> compare afterwards.

    python3 tools/scripts/region_autofix.py --max-diff 8            # all near candidates
    python3 tools/scripts/region_autofix.py sub_0801DE60 sub_0801E0A0 # selected functions
    python3 tools/scripts/region_autofix.py --dry-run ...            # report only
"""
import argparse
import re
import subprocess
from pathlib import Path

from elftools.elf.elffile import ELFFile
from rom_regions import ROOT, load_profiles
import region_build
import region_diff
import region_symbols

LITERAL = re.compile(r'(?<![\w.])(0[xX][0-9a-fA-F]+|[1-9][0-9]*)(?![\w.])')
MACROS = ('PLAYER_FIELD', 'SAVE_FIELD')
WRAPPED = re.compile(r'\b(?:PLAYER_FIELD|SAVE_FIELD|RES_ID|ENEMY_FIELD)\s*\($')
PLAYER_STRIDE = 0x14C
ENEMY_STRIDE = 0x2E0
SAVE_LIMIT = 0x1000  # save-record offsets go past the player record size
PAIR_LIMIT = 4  # try pairs of value moves when this close
PAIR_OPTIONS = 24
WHOLE = ('PLAYER_SIZE', 'ENEMY_SIZE', 'TEXT_HEADER')
SIZES = {PLAYER_STRIDE: 'PLAYER_SIZE', ENEMY_STRIDE: 'ENEMY_SIZE'}


def function_span(text, name):
    """(start, end) of the definition of name (or of the C name declared with asm("name"))."""
    span = definition_span(text, name)
    if span is None:
        for match in re.finditer(r'\b(\w+)\s*\([^;{}]*\)\s*asm\s*\(\s*"%s"\s*\)' % re.escape(name), text):
            span = definition_span(text, match[1])
            if span is not None:
                break
    return span


def definition_span(text, name):
    """(start, end) of the definition of name in text: from its line to the closing brace."""
    for match in re.finditer(r'(?m)^[^\n;#{}]*\b%s\s*\(' % re.escape(name), text):
        brace = text.find('{', match.end())
        semi = text.find(';', match.end())
        if brace < 0 or (0 <= semi < brace and text[match.end():semi].count('(') <= text[match.end():semi].count(')')):
            continue
        depth, index = 0, brace
        while index < len(text):
            if text.startswith('/*', index):
                index = text.index('*/', index) + 2
                continue
            if text.startswith('//', index):
                index = text.index('\n', index)
                continue
            if text[index] in '"\'':
                quote, index = text[index], index + 1
                while text[index] != quote:
                    index += 2 if text[index] == '\\' else 1
            elif text[index] == '{':
                depth += 1
            elif text[index] == '}':
                depth -= 1
                if depth == 0:
                    return match.start(), index + 1
            index += 1
    return None


def is_resource(value):
    return value >> 16 in (5, 6, 8) and (value & 0xFFFF) >= 4


def code_literals(body):
    text = 'sub_08007290' in body or 'Text' in body or 'text' in body
    """[(start, end, value)] of integer literals outside comments/strings, not yet wrapped."""
    result, index = [], 0
    masked = re.sub(r'/\*.*?\*/|//[^\n]*|"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'',
                    lambda m: ' ' * len(m[0]), body, flags=re.S)
    for match in LITERAL.finditer(masked):
        value = int(match[1], 0)
        if WRAPPED.search(masked[:match.start()].rstrip()[-20:]):
            continue
        if 0x0A <= value <= SAVE_LIMIT or value in SIZES or is_resource(value) or (text and value == 2):
            result.append((match.start(), match.end(), value))
    return result


def rewrite(body, literals, choice):
    """choice: {literal index: macro name}"""
    out, cursor = [], 0
    for index, (start, end, value) in enumerate(literals):
        macro = choice.get(index)
        if macro is None:
            continue
        out.append(body[cursor:start])
        out.append(macro if macro in WHOLE else '%s(%s)' % (macro, body[start:end]))
        cursor = end
    out.append(body[cursor:])
    return ''.join(out)


class Checker:
    def __init__(self, region):
        self.region = region
        self.work = 'build/regions/%s/variant' % region
        self.target = (ROOT / load_profiles()[region]['filename']).read_bytes()

    def compile(self, module):
        obj = '%s/src/%s.o' % (self.work, module)
        result = subprocess.run(['make', 'REGION=eu', 'BUILD=' + self.work, 'NAME=%s/shiningsoul2' % self.work,
                                 'NM_FLAGS=', 'REGION_CPPFLAGS=-DREGION_%s' % self.region.upper(), obj],
                                cwd=ROOT, capture_output=True, text=True)
        return ROOT / obj if result.returncode == 0 else None

    def score(self, module, name, address):
        """Differing halfwords of name in the module object against the regional ROM (None: no build)."""
        obj = self.compile(module)
        if obj is None:
            return None
        with obj.open('rb') as stream:
            elf = ELFFile(stream)
            text = elf.get_section_by_name('.text')
            symbol = elf.get_section_by_name('.symtab').get_symbol_by_name(name)
            if not symbol:
                return None
            start, size = int(symbol[0]['st_value']) & ~1, int(symbol[0]['st_size'])
            data = text.data()[start:start + size]
        relocs = region_symbols.object_relocations([obj]).get(name, [])
        target = self.target[address - region_build.ROM_BASE:][:size]
        if len(target) != size:
            return None
        return sum(1 for a, b in region_symbols.masked_segments(size, relocs)
                   for offset in range(a, b, 2) if target[offset:offset + 2] != data[offset:offset + 2])


def search(checker, module, name, address, log):
    path = ROOT / 'src' / (module + '.c')
    original = path.read_text(encoding='utf-8')
    span = function_span(original, name)
    if span is None:
        log('%s: definition not found in %s' % (name, path.name))
        return False
    head, body, tail = original[:span[0]], original[span[0]:span[1]], original[span[1]:]
    literals = code_literals(body)

    applied = False

    def evaluate(choice):
        path.write_text(head + rewrite(body, literals, choice) + tail, encoding='utf-8')
        return checker.score(module, name, address)

    try:
        best_choice = {}
        best = evaluate(best_choice)
        if best is None or best == 0:
            log('%s: %s before rewriting, skipped' % (name, 'no build' if best is None else 'equal'))
            return False
        start = best
        save_first = 'gUnk_030034E0' in body
        enemy = True  # enemy records often arrive as plain pointers; exactness decides
        options = {}
        for index, (_, _, value) in enumerate(literals):
            if value in SIZES:
                options.setdefault((SIZES[value], value), []).append(index)
            if value == 2:
                options.setdefault(('TEXT_HEADER', value), []).append(index)
                continue
            if is_resource(value):
                options.setdefault(('RES_ID', value), []).append(index)
            if enemy and 0x206 <= value < ENEMY_STRIDE:
                options.setdefault(('ENEMY_FIELD', value), []).append(index)
            if value <= SAVE_LIMIT:
                for macro in (('SAVE_FIELD', 'PLAYER_FIELD') if save_first else MACROS):
                    if macro == 'PLAYER_FIELD' and value >= PLAYER_STRIDE:
                        continue
                    options.setdefault((macro, value), []).append(index)
        # Greedy over whole values first, then over single occurrences.
        for granularity in ('value', 'single'):
            moves = list(options.items()) if granularity == 'value' else \
                [((macro, value), [index]) for (macro, value), indices in options.items() for index in indices]
            improved = True
            while improved and best:
                improved = False
                for (macro, _), indices in moves:
                    for remove in (False, True):
                        trial = dict(best_choice)
                        for index in indices:
                            if remove:
                                if trial.get(index) == macro:
                                    del trial[index]
                            else:
                                trial[index] = macro
                        if trial == best_choice:
                            continue
                        score = evaluate(trial)
                        if score is not None and score < best:
                            best, best_choice, improved = score, trial, True
                            if not best:
                                break
                    if not best:
                        break
        # Pairs of whole-value moves for near misses that need two macros at once
        # (e.g. PLAYER_SIZE stride plus PLAYER_FIELD base, each worse alone).
        values = list(options.items())
        if best and best <= PAIR_LIMIT and len(values) <= PAIR_OPTIONS:
            for first in range(len(values)):
                for second in range(first + 1, len(values)):
                    trial = dict(best_choice)
                    for (macro, _), indices in (values[first], values[second]):
                        for index in indices:
                            trial[index] = macro
                    if trial == best_choice:
                        continue
                    score = evaluate(trial)
                    if score is not None and score < best:
                        best, best_choice = score, trial
                        if not best:
                            break
                if not best:
                    break
        if best == 0:
            path.write_text(head + rewrite(body, literals, best_choice) + tail, encoding='utf-8')
            applied = True
            log('%s: fixed (%d -> 0) with %s' % (name, start, ', '.join(sorted(
                {'%s(0x%X)' % (best_choice[i], literals[i][2]) if not best_choice[i] in WHOLE
                 else best_choice[i] for i in best_choice}))))
            return True
        log('%s: best %d (from %d), not applied' % (name, best, start))
        return False
    finally:
        if not applied:
            path.write_text(original, encoding='utf-8')
        checker.compile(module)


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument('--region', choices=('usa', 'jp'), default='usa')
    parser.add_argument('--max-diff', type=int, default=8)
    parser.add_argument('--max-size', type=int, default=4096)
    parser.add_argument('--dry-run', action='store_true')
    parser.add_argument('funcs', nargs='*')
    args = parser.parse_args(argv)
    if args.region != 'usa':
        parser.exit(1, 'Only the USA layout is described in include/region.h\n')
    target_rom = (ROOT / load_profiles()[args.region]['filename']).read_bytes()
    symbols, fragments, eu_address, relocations, placed, keys = region_diff.candidates(args.region)
    done = {eu for eu, _ in placed}
    checker = Checker(args.region)
    rows = []
    for fragment in fragments:
        eu = eu_address.get(fragment.name)
        if eu is None or eu in done or fragment.name not in relocations:
            continue
        if args.funcs and fragment.name not in args.funcs:
            continue
        if len(fragment.data) > args.max_size:
            continue
        if eu == fragment.address and target_rom[eu - region_build.ROM_BASE:][:len(fragment.data)] == fragment.data:
            continue
        relocs = relocations[fragment.name]
        address = min(region_diff.guesses(fragment, eu, placed, keys, relocs, target_rom),
                      key=lambda item: region_diff.difference(fragment, relocs, target_rom, item))
        diff = region_diff.difference(fragment, relocs, target_rom, address)
        if diff and (args.funcs or diff <= args.max_diff):
            rows.append((diff, fragment.name, fragment.module, address))
    rows.sort()
    fixed = 0
    for diff, name, module, address in rows:
        if args.dry_run:
            print('%4d %-40s %-16s 0x%08X' % (diff, name, module, address))
            continue
        fixed += search(checker, module, name, address, print)
    if not args.dry_run:
        print('%d of %d functions rewritten' % (fixed, len(rows)))


if __name__ == '__main__':
    main()
