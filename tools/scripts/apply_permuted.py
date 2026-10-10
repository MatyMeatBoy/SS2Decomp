#!/usr/bin/env python3
"""Apply permuter winners: apply_permuted.py DIR/permuted [--cc1 PATH]
Builds a minimal source for each winner (its function plus the extern declarations it
uses), checks it with the module compiler and applies it only if it matches."""
import os, re, sys, tempfile
sys.path.insert(0, os.path.dirname(__file__))
import decomp

import subprocess, glob


def rom_ok():
    if os.environ.get("SKIP_ROM"):  # worker mode: no baserom.gba, the maintainer verifies the full ROM at merge
        return True
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


def try_apply(func, t):
    """t: full C text containing func (and the extern lines it needs). Applies on match."""
    p, fs, o = decomp.split_functions(t)
    if func not in fs or decomp.find_asm(func)[0] is None:
        return False
    body = fs[func]
    ext = []
    for l in t.splitlines():
        if l.startswith("extern ") or re.match(r"^[A-Za-z][\w \*]*\b\w+\(.*\);$", l):
            names = re.findall(r"\b(?:gUnk_\w+|sub_\w+|g[A-Z]\w+)\b", l)
            if names and any(re.search(r"\b%s\b" % n, body) for n in names) and func not in names:
                ext.append(l)
    src = '#include "global.h"\n' + "\n".join(ext) + "\n\n" + body + "\n"
    with tempfile.TemporaryDirectory() as td:
        c = os.path.join(td, func + ".c")
        open(c, "w").write(src)
        if not decomp.check(func, c, verbose=False):
            print("%s: no match with module compiler" % func)
            return False
        snap = snapshot(func)
        decomp.apply(func, c)
        if rom_ok():
            return True
        restore(snap)
        print("%s: matched alone but broke the ROM, reverted" % func)
        return False


if __name__ == "__main__":
    applied = []
    for arg in sys.argv[1:]:
        if os.path.isdir(arg):
            for f in sorted(os.listdir(arg)):
                if f.endswith(".c") and try_apply(f[:-2], open(os.path.join(arg, f)).read()):
                    applied.append(f[:-2])
        else:
            t = open(arg).read()
            for func in decomp.split_functions(t)[2]:
                if try_apply(func, t):
                    applied.append(func)
    print("applied:", " ".join(applied))
