#!/usr/bin/env python3
# handapply.py MODULE FILE.c...: put FUNC (file basename) in place of its draft/INCLUDE_ASM block in src/MODULE.c,
# hoisting the file's one-line `struct`/`extern` declarations to the top of the module (once), and delete the .s.
import re, sys, os
mod = sys.argv[1]; p = 'src/%s.c' % mod
s = open(p, encoding='utf-8').read()
for f in sys.argv[2:]:
    func = os.path.basename(f)[:-2]
    c = open(f, encoding='utf-8').read()
    start = c.rindex('\n', 0, c.index(func + '(')) + 1
    decls = [l for l in c[:start].splitlines() if re.match(r'^(struct \w+ \{.*\};|extern .*;)$', l)]
    body = c[start:]
    top = s.index('\n', s.index('#include')) + 1
    for d in decls:
        if d not in s:
            s = s[:top] + d + '\n' + s[top:]
    pat = re.compile(r'(#ifdef NONMATCHING\n(?:(?!#ifdef|#endif).|\n)*?#else\n)?INCLUDE_ASM\("[^"]*", %s\);\n(#endif\n)?' % func)
    assert pat.search(s), func
    s = pat.sub(lambda m: body if body.endswith('\n') else body + '\n', s, 1)
    asm = 'asm/nonmatchings/%s/%s.s' % (mod, func)
    if os.path.exists(asm): os.remove(asm)
open(p, 'w', encoding='utf-8', newline='\n').write(s)
