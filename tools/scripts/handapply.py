#!/usr/bin/env python3
# handapply.py MODULE FILE.c...: put FUNC (file basename) in place of its draft/INCLUDE_ASM block in src/MODULE.c,
# inserting one-line `struct`/`extern` declarations before their function (once), and delete the .s.
import re, sys, os

TOKEN = re.compile(r'(?P<cpp>^[ \t]*\#[^\n]*)|(?P<comment>//[^\n]*|/\*.*?\*/)|"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'|[A-Za-z_]\w*|\d+|[^\s]', re.M | re.S)

def tokens(text):
    return [m for m in TOKEN.finditer(text) if m.lastgroup != 'comment']

def global_declarations(text):
    """Identify file-scope one-line helpers, ignoring whitespace/comments.

    Conditional declarations are recorded, but cannot prove a type visible in
    both matching and NONMATCHING builds. This deliberately does not evaluate
    arbitrary preprocessor expressions.
    """
    ts = tokens(text)
    depth = conditional = 0
    result = []
    for i, token in enumerate(ts):
        value = token.group()
        if token.lastgroup == 'cpp':
            directive_match = re.match(r'\s*#\s*(\w+)', value)
            if directive_match is None: continue
            directive = directive_match.group(1)
            if directive in ('if', 'ifdef', 'ifndef'): conditional += 1
            elif directive == 'endif': conditional = max(0, conditional - 1)
            continue
        kind = tag = None
        if depth == 0 and value == 'struct' and i + 2 < len(ts) and ts[i + 2].group() == '{':
            kind, tag = 'struct', ts[i + 1].group()
            end, braces = i + 2, 0
            for end in range(i + 2, len(ts)):
                if ts[end].group() == '{': braces += 1
                elif ts[end].group() == '}':
                    braces -= 1
                    if braces == 0: break
            if end + 1 < len(ts) and ts[end + 1].group() == ';': end += 1
        elif depth == 0 and value == 'extern':
            kind = 'extern'
            end = i
            while end < len(ts) - 1 and ts[end].group() != ';': end += 1
        if kind:
            result.append(dict(kind=kind, tag=tag, start=token.start(), end=ts[end].end(),
                               conditional=bool(conditional or any(t.lastgroup == 'cpp' for t in ts[i:end + 1])),
                               key=tuple(t.group() for t in ts[i:end + 1])))
        if value == '{': depth += 1
        elif value == '}': depth = max(0, depth - 1)
    return result

def prepare(s, c, func, alias=None):
    """Construct a replacement without editing files or hoisting later types."""
    if alias is None:
        start = c.rindex('\n', 0, c.index(func + '(')) + 1
        prelude, body = c[:start], c[start:]
    else:
        import decomp
        prelude, functions, _ = decomp.split_functions(c)
        body = functions[alias]
        if len(functions) != 1:
            sys.exit('alias application requires a single function candidate')
    decls = [l for l in prelude.splitlines() if re.match(r'^(struct \w+ \{.*\};|extern .*;)$', l)
             or (alias is not None and re.match(r'^.*\b%s\s*\([^;{}]*\)\s*(?:asm|__asm__)\s*\(.*\);$' % re.escape(alias), l))]
    pat = re.compile(r'(#ifdef NONMATCHING\n(?:(?!#ifdef|#endif).|\n)*?#else\n)?INCLUDE_ASM\("[^"]*", %s\);\n(#endif\n)?' % func)
    target = pat.search(s)
    if target is None:
        sys.exit('stub for %s not found' % func)
    # Preserve candidate order and already-visible types, including mid-module
    # declarations. Never hoist an extern array ahead of its complete struct.
    prefix = s[:target.start()]
    later = s[target.end():]
    existing = [d for d in global_declarations(s)
                if d['end'] <= target.start() or d['start'] >= target.end()]
    added = []
    for d in decls:
        if d in added:
            continue
        parsed = global_declarations(d)
        candidate = parsed[0] if parsed else dict(kind='alias', key=tuple(t.group() for t in tokens(d)))
        related = ([old for old in existing if old['kind'] == 'struct' and old['tag'] == candidate['tag']]
                   if candidate['kind'] == 'struct' else existing)
        visible = [old for old in related if old['end'] <= target.start() and not old['conditional']]
        if any(old['key'] == candidate['key'] for old in visible):
            continue
        if candidate['kind'] == 'struct' and related:
            if any(old['start'] >= target.end() for old in related):
                sys.exit('struct defined after target %s: rename the local type/alias before applying' % func)
            if any(old['conditional'] for old in related):
                sys.exit('conditional struct is not visible in both builds for %s: use a unique local type' % func)
            sys.exit('conflicting struct definition for %s: use a unique local type' % func)
        added.append(d)
    block = '\n'.join(added) + '\n' if added else ''
    return prefix + block + (body if body.endswith('\n') else body + '\n') + later


def main():
    from pathlib import Path
    import decomp
    mod = sys.argv[1]
    if Path('tools/config/functions.cfg').exists() and Path.cwd().resolve() != Path(decomp.ROOT).resolve():
        sys.exit('run handapply from its project checkout')
    source = Path('src/%s.c' % mod)
    candidates = []
    for filename in sys.argv[2:]:
        func = Path(filename).stem
        text = Path(filename).read_text(encoding='utf8')
        _, functions, _ = decomp.split_functions(text)
        alias = None
        # In a project checkout validate identity even when the C identifier is
        # already canonical: an asm label must not redirect it to another ROM
        # function. Minimal declaration-only callers need no project registry.
        if Path('tools/config/functions.cfg').exists() or func not in functions:
            from alias_application import c_name
            try:
                resolved = c_name(text, func)
                alias = resolved if resolved != func else None
            except ValueError as error:
                sys.exit(str(error))
        candidates.append((func, text, alias))
    # Validate declaration order for the complete batch before any mutation.
    updated = source.read_text(encoding='utf8')
    for func, text, alias in candidates:
        updated = prepare(updated, text, func, alias)
    if any(alias is not None for _, _, alias in candidates):
        # Keep the strict alias transaction deliberately single-target: a later
        # failure must not leave earlier candidates partially applied.
        if len(candidates) != 1:
            sys.exit('apply alias candidates individually')
        from alias_application import apply_alias
        try:
            apply_alias(candidates[0][0], candidates[0][1], module=mod)
        except ValueError as error:
            sys.exit(str(error))
        return
    source.write_text(updated, encoding='utf8', newline='\n')
    for func, _, _ in candidates:
        asm = Path('asm/nonmatchings/%s/%s.s' % (mod, func))
        if asm.exists():
            asm.unlink()


# Preserve the script's existing runpy use while making ordinary imports safe.
if __name__ in ('__main__', '<run_path>'):
    main()
