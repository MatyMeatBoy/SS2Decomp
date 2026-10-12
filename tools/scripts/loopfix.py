#!/usr/bin/env python3
"""loopfix.py SRC_DIR OUT_DIR : rewrite `for (init; cond; i++, p += N) {body}` into
`for (init; cond; i++) {body; p += N;}` (matches agbcc ordering more often). Writes only changed files."""
import os, re, sys
src, out = sys.argv[1:3]
os.makedirs(out, exist_ok=True)
pat = re.compile(r"for \(([^;]*);([^;]*);\s*([^,;)]+),\s*([A-Za-z_]\w*\s*\+=\s*[^)]+?)\)\s*\{")
n = 0
for fn in sorted(os.listdir(src)):
    if not fn.endswith(".c"):
        continue
    t = open(os.path.join(src, fn)).read()
    while True:
        m = pat.search(t)
        if not m:
            break
        d, i = 1, m.end()
        while d and i < len(t):
            d += (t[i] == "{") - (t[i] == "}")
            i += 1
        body = t[m.end():i - 1]
        t = t[:m.start()] + "for (%s;%s; %s) {" % (m.group(1), m.group(2), m.group(3).strip()) + body + "    %s;\n" % m.group(4).strip() + "}" + t[i:]
        n += 1
    if t != open(os.path.join(src, fn)).read():
        open(os.path.join(out, fn), "w").write(t)
print("rewrote", n, "loops")
