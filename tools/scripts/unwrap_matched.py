#!/usr/bin/env python3
"""unwrap_matched.py [FILE...]  replace `#ifdef NONMATCHING <old draft> #else <matched C> #endif` by the matched C
(left behind when a draft is later matched through apply_permuted/decomp.apply). Blocks whose #else branch is INCLUDE_ASM are kept."""
import os, re, sys
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
def run(files):
    n = 0
    for p in files:
        t = open(p, encoding="utf-8").read()
        def sub(m):
            nonlocal n
            if "INCLUDE_ASM" in m.group(2):
                return m.group(0)
            n += 1
            return m.group(2)
        t2 = re.sub(r"#ifdef NONMATCHING\n((?:(?!#endif|#ifdef).)*?)#else\n((?:(?!#endif|#ifdef).)*?)#endif\n?", sub, t, flags=re.S)
        if t2 != t:
            open(p, "w", encoding="utf-8").write(t2)
    return n
if __name__ == "__main__":
    files = sys.argv[1:] or [os.path.join(ROOT, "src", f) for f in sorted(os.listdir(os.path.join(ROOT, "src"))) if f.endswith(".c")]
    print("unwrapped", run(files))
