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

mod = sys.argv[1]; p = 'src/%s.c' % mod
with open(p, encoding='utf-8') as source:
    s = source.read()
remove_asm = []
for f in sys.argv[2:]:
    func = os.path.basename(f)[:-2]
    with open(f, encoding='utf-8') as candidate:
        c = candidate.read()
    start = c.rindex('\n', 0, c.index(func + '(')) + 1
    decls = [l for l in c[:start].splitlines() if re.match(r'^(struct \w+ \{.*\};|extern .*;)$', l)]
    body = c[start:]
    pat = re.compile(r'(#ifdef NONMATCHING\n(?:(?!#ifdef|#endif).|\n)*?#else\n)?INCLUDE_ASM\("[^"]*", %s\);\n(#endif\n)?' % func)
    target = pat.search(s)
    if target is None:
        sys.exit('stub for %s not found in %s' % (func, p))
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
        candidate = global_declarations(d)[0]
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
    s = prefix + block + (body if body.endswith('\n') else body + '\n') + later
    asm = 'asm/nonmatchings/%s/%s.s' % (mod, func)
    if os.path.exists(asm): remove_asm.append(asm)
# Parse/validate every candidate before changing the source or deleting ASM.
with open(p, 'w', encoding='utf-8', newline='\n') as source:
    source.write(s)
for asm in remove_asm:
    os.remove(asm)
