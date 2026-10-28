#!/usr/bin/env python3
"""Audit active C definitions against canonical original symbols in module context.

--from selects module/symbol rows from a previous report; every selected function
is checked again. --apply preserves bad C as NONMATCHING and restores canonical
ASM, but refuses all edits if context, binding or original-ASM errors occur.
"""
import argparse
import re
from pathlib import Path
import subprocess
import tempfile
import decomp
from source_index import canonical_bindings, strip_comments


def registry(root):
    modules = []
    for line in (root / 'tools/config/modules.cfg').read_text(encoding='utf-8').splitlines():
        fields = line.split('#', 1)[0].split()
        if fields:
            modules.append((int(fields[0], 0), fields[1], fields[2] if len(fields) > 2 else 'c'))
    modules.sort()
    known = {}
    for line in (root / 'tools/config/functions.cfg').read_text(encoding='utf-8').splitlines():
        fields = line.split('#', 1)[0].split()
        if len(fields) >= 2 and fields[0] in ('thumb', 'arm'):
            address = int(fields[1], 0)
            symbol = fields[2] if len(fields) > 2 else ('sub_' if fields[0] == 'thumb' else 'arm_') + '%08X' % address
            owner = next((name for start, name, kind in reversed(modules) if start <= address), None)
            known[symbol] = owner
    return known, {name: kind for start, name, kind in modules}


def read_selection(path, known):
    selected = set()
    for number, line in enumerate(Path(path).read_text(encoding='utf-8-sig').splitlines(), 1):
        fields = line.split('#', 1)[0].split()
        if not fields:
            continue
        if len(fields) != 2 or known.get(fields[1]) != fields[0]:
            raise ValueError('stale or invalid --from row %d: %s' % (number, line))
        selected.add(tuple(fields))
    return selected


def audit_module(root, module, known, selected):
    """Compile the unchanged whole module, preserving headers and declaration order."""
    source = root / 'src' / (module + '.c')
    text = source.read_text(encoding='utf-8')
    with tempfile.TemporaryDirectory(prefix='revalidate-', dir=root / 'build') as temporary:
        build = Path(temporary).relative_to(root).as_posix()
        obj = build + '/src/' + module + '.o'
        command = ['make', '-s', '-B', '-j1', 'BUILD=' + build, 'NM_FLAGS=', obj]
        result = subprocess.run(command, cwd=root, capture_output=True, text=True)
        if result.returncode:
            raise ValueError('module build failed; no rollback attempted:\n' + result.stdout + result.stderr)
        active = (root / build / 'src' / (module + '.i')).read_text(encoding='utf-8')
        bindings = canonical_bindings(active, known)
        stubs = set(re.findall(r'(?m)^\s*INCLUDE_ASM\(\s*"[^"]*"\s*,\s*(\w+)\s*\)', strip_comments(text)))
        exported = set(decomp.function_symbols(str(root / obj))) & set(known)
        unmapped = exported - set(bindings.values()) - stubs
        if unmapped:
            raise ValueError('unmapped canonical C exports: ' + ', '.join(sorted(unmapped)))
        _, bodies, _ = decomp.split_functions(text)
        records = []
        for c_name, canonical in bindings.items():
            if known[canonical] != module:
                raise ValueError('definition %s exports %s belonging to module %s' % (c_name, canonical, known[canonical]))
            if selected is not None and (module, canonical) not in selected:
                continue
            if c_name not in bodies:
                raise ValueError('cannot locate literal C definition %s for safe rollback' % c_name)
            original = str(Path(temporary) / ('original_' + canonical + '.o'))
            original_name = decomp.assemble_orig(canonical, original)
            ok = decomp.compare(original, str(root / obj), canonical, verbose=False, orig_name=original_name)
            print('%s %s' % ('OK ' if ok else 'BAD', canonical), flush=True)
            records.append((canonical, bodies[c_name], ok))
        if selected is not None:
            found = {canonical for canonical, body, ok in records}
            missing = {canonical for mod, canonical in selected if mod == module} - found
            if missing:
                raise ValueError('--from functions have no active C definition: ' + ', '.join(sorted(missing)))
        return text, records


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--apply', action='store_true')
    parser.add_argument('--from', dest='report')
    parser.add_argument('modules', nargs='*')
    args = parser.parse_args(argv)
    root = Path(decomp.ROOT).resolve()
    (root / 'build').mkdir(exist_ok=True)
    bad, good, errors, plans = [], [], [], []
    try:
        known, kinds = registry(root)
        invalid = set(args.modules) - {name for name, kind in kinds.items() if kind == 'c'}
        if invalid:
            raise ValueError('unknown or non-C module selection: ' + ', '.join(sorted(invalid)))
        selected = read_selection(args.report, known) if args.report else None
    except (ValueError, OSError) as exc:
        print('ERROR ' + str(exc))
        return 2
    modules = set(args.modules) if args.modules else {name for name, kind in kinds.items() if kind == 'c'}
    if selected is not None:
        modules &= {module for module, canonical in selected}
    for module in sorted(modules):
        source = root / 'src' / (module + '.c')
        try:
            text, records = audit_module(root, module, known, selected)
        except (ValueError, OSError, SystemExit) as exc:
            errors.append(module)
            print('ERROR %s: %s' % (module, exc), flush=True)
            continue
        failed = [(name, body) for name, body, ok in records if not ok]
        bad.extend((module, name) for name, body in failed)
        good.extend((module, name) for name, body, ok in records if ok)
        plans.append((source, module, text, failed))
    if args.apply and not errors:
        # Stage every source rewrite before writing; never guess an alias target.
        rewrites = []
        for source, module, text, failed in plans:
            for canonical, body in failed:
                decomp.restore_asm(canonical)
                block = '#ifdef NONMATCHING\n%s\n#else\nINCLUDE_ASM("asm/nonmatchings/%s", %s);\n#endif' % (body, module, canonical)
                text = text.replace(body, block, 1)
            if failed:
                rewrites.append((source, text))
        for source, text in rewrites:
            source.write_text(text, encoding='utf-8')
    elif args.apply and errors:
        print('ERROR no source edits applied because an audit failed')
    print('good %d  bad %d  errors %d' % (len(good), len(bad), len(errors)))
    report = root / 'build' / ('revalidate_applied.txt' if args.report else 'revalidate_bad.txt')
    report.write_text(''.join('%s %s\n' % row for row in bad), encoding='utf-8')
    return 2 if errors else 1 if bad else 0


if __name__ == '__main__':
    raise SystemExit(main())
