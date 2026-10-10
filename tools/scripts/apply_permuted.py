#!/usr/bin/env python3
"""Apply permuter winners: apply_permuted.py DIR/permuted [--cc1 PATH]
Builds a minimal source for each winner (its function plus the extern declarations it
uses), checks it with the module compiler and applies it only if it matches."""
import os, re, sys, tempfile
sys.path.insert(0, os.path.dirname(__file__))
import decomp
d = sys.argv[1]
cc = None
if "--cc1" in sys.argv:
    cc = sys.argv[sys.argv.index("--cc1") + 1]
import subprocess, glob


def rom_ok():
    r = subprocess.run(["make", "-s", "-C", decomp.ROOT, "-j4"], capture_output=True, text=True)
    if r.returncode:
        return False
    r = subprocess.run(["sha1sum", "-c", "shiningsoul2_eu.sha1"], cwd=decomp.ROOT, capture_output=True, text=True)
    return r.returncode == 0


def snapshot(func):
    path, mod = decomp.find_asm(func)
    files = [path, os.path.join(decomp.ROOT, "src/%s.c" % mod)] + glob.glob(os.path.join(decomp.ROOT, "include/*.h"))
    return {f: open(f).read() for f in files if f and os.path.exists(f)}


def restore(snap):
    for f, t in snap.items():
        open(f, "w").write(t)


applied = []
for f in sorted(os.listdir(d)):
    if not f.endswith(".c"):
        continue
    func = f[:-2]
    if decomp.find_asm(func)[0] is None:
        continue
    t = open(os.path.join(d, f)).read()
    p, fs, o = decomp.split_functions(t)
    if func not in fs:
        continue
    body = fs[func]
    ext = []
    for l in t.splitlines():
        if l.startswith("extern ") or re.match(r"^[\w \*]+\b\w+\(.*\);$", l):
            names = re.findall(r"\b(?:gUnk_\w+|sub_\w+|g[A-Z]\w+)\b", l)
            if names and any(re.search(r"\b%s\b" % n, body) for n in names) and func not in names:
                ext.append(l)
    src = '#include "global.h"\n' + "\n".join(ext) + "\n\n" + body + "\n"
    with tempfile.TemporaryDirectory() as td:
        c = os.path.join(td, func + ".c")
        open(c, "w").write(src)
        ok = decomp.check(func, c, verbose=False)
        if ok:
            snap = snapshot(func)
            decomp.apply(func, c)
            if rom_ok():
                applied.append(func)
            else:
                restore(snap)
                print("%s: matched alone but broke the ROM, reverted" % func)
        else:
            print("%s: no match with module compiler" % func)
print("applied:", " ".join(applied))
