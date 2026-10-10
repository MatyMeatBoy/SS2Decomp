#!/usr/bin/env python3
"""Find which compiler reproduces each C module: for every module build the ROM
with that module compiled by agbcc / old_agbcc (everything else unchanged) and
compare the module's byte range with baserom.gba.

usage: which_cc.py [--write] [module ...]   (--write updates CC1_<module> in Makefile)"""
import os, re, subprocess, sys
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
args = [a for a in sys.argv[1:] if a != "--write"]
write = "--write" in sys.argv
mods = []
for l in open(os.path.join(ROOT, "tools/config/modules.cfg")):
    p = l.split()
    if p and not l.startswith("#"):
        mods.append((int(p[0], 0), p[1], p[2]))
mods.sort()
rom = open(os.path.join(ROOT, "baserom.gba"), "rb").read()
res = {}
for i, (a, name, kind) in enumerate(mods):
    if kind != "c" or (args and name not in args):
        continue
    end = mods[i + 1][0] if i + 1 < len(mods) else 0x080B9704
    ok = []
    for cc in ("old_agbcc", "agbcc"):
        subprocess.run(["rm", "-f", os.path.join(ROOT, "build/src/%s.o" % name)])
        r = subprocess.run(["make", "-s", "-C", ROOT, "CC1_%s=tools/agbcc/bin/%s" % (name, cc)], capture_output=True, text=True)
        try:
            got = open(os.path.join(ROOT, "shiningsoul2_eu.gba"), "rb").read()
        except OSError:
            continue
        if got[a - 0x08000000:end - 0x08000000] == rom[a - 0x08000000:end - 0x08000000]:
            ok.append(cc)
    res[name] = ok
    print("%-18s %s" % (name, ",".join(ok) or "none"), flush=True)
if write:
    mk = open(os.path.join(ROOT, "Makefile")).read()
    for name, ok in res.items():
        if not ok or "old_agbcc" in ok and "agbcc" in ok:
            continue
        cc = ok[0]
        mk = re.sub(r"^CC1_%s := .*\n" % name, "", mk, flags=re.M)
        if cc != "old_agbcc":
            mk = mk.replace("# C files: preprocess", "CC1_%s := tools/agbcc/bin/%s\n\n# C files: preprocess" % (name, cc), 1)
    open(os.path.join(ROOT, "Makefile"), "w").write(mk)
