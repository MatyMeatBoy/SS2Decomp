#!/usr/bin/env python3
"""unwrap_func.py FUNC : turn `#ifdef NONMATCHING <C> #else INCLUDE_ASM(FUNC) #endif` into plain C and delete the .s
(use after nmdiff.py FUNC says MATCH, then run make compare)."""
import os, re, subprocess, sys
root = os.path.join(os.path.dirname(__file__), "..", "..")
f = sys.argv[1]
for fn in os.listdir(os.path.join(root, "src")):
    p = os.path.join(root, "src", fn)
    s = open(p).read()
    m = re.search(r'#ifdef NONMATCHING\n(?:(?!#ifdef|#endif).|\n)*?#else\nINCLUDE_ASM\("([^"]*)", %s\);\n#endif\n' % f, s)
    if not m:
        continue
    block = m.group(0)
    # the C draft may start earlier than the function (aliases etc. are part of the block): keep everything in it
    c = block[len("#ifdef NONMATCHING\n"):block.index("#else\nINCLUDE_ASM")]
    s = s.replace(block, c)
    open(p, "w").write(s)
    asm = os.path.join(root, m.group(1), f + ".s")
    if os.path.exists(asm):
        os.remove(asm)
    print("unwrapped", f, "in", fn)
    break
else:
    print("no NONMATCHING block for", f)
