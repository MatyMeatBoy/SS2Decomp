#!/usr/bin/env python3
"""List C functions that match with only one of agbcc / old_agbcc, in ROM order."""
import io, os, re, sys, contextlib, subprocess
sys.path.insert(0, os.path.dirname(__file__))
import decomp
ev = {}
for f in sorted(os.listdir(os.path.join(decomp.ROOT, "src"))):
    if not f.endswith(".c"):
        continue
    mod = f[:-2]
    text = open(os.path.join(decomp.ROOT, "src", f)).read()
    flags = decomp.module_flags(mod)
    res = {}
    for cc in ("agbcc", "old_agbcc"):
        buf = io.StringIO()
        with contextlib.redirect_stdout(buf):
            r = decomp.check_file(os.path.join(decomp.ROOT, "src", f), cc1=os.path.join(decomp.ROOT, "tools/agbcc/bin", cc), flags=flags)
        res[cc] = {k: v[0] for k, v in (r or {}).items()}
    for fn in res["agbcc"]:
        a, o = res["agbcc"][fn], res["old_agbcc"].get(fn)
        if a != o:
            ev[decomp.func_address(fn)] = (fn, "agbcc" if a else "old")
for addr in sorted(ev):
    print("%08X %-16s only %s" % (addr, ev[addr][0], ev[addr][1]))
