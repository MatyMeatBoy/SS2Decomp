#!/usr/bin/env python3
"""nmdiff.py FUNC : rebuild the module's NONMATCHING object (make build_nm/...) and diff FUNC against the original asm.
Uses the real build rules, so it works for drafts that need project headers/aliases."""
import os, subprocess, sys, tempfile
sys.path.insert(0, os.path.dirname(__file__))
import decomp
func = sys.argv[1]
mod = decomp.module_of(func)
obj = os.path.join(decomp.ROOT, "build_nm/src/%s.o" % mod)
os.environ["MAKEFLAGS"] = ""
r = subprocess.run(["make", "-s", "BUILD=build_nm", "NAME=shiningsoul2_nm", "NM_FLAGS=-DNONMATCHING", "build_nm/src/%s.o" % mod], cwd=decomp.ROOT, capture_output=True, text=True)
if r.returncode:
    print(r.stdout[-1500:], r.stderr[-1500:]); sys.exit(1)
import contextlib, io, re
with tempfile.TemporaryDirectory() as td:
    o = os.path.join(td, "o.o")
    on = decomp.assemble_orig(func, o)
    buf = io.StringIO()
    with contextlib.redirect_stdout(buf):
        ok = decomp.compare(o, obj, func, verbose=True, orig_name=on)
    out = buf.getvalue()
    if ok:
        print("MATCH"); sys.exit(0)
    # branch targets/bl addresses and pool padding depend on the position in the object: normalise them
    def norm(l):
        l = re.sub(r"^([-+])(b\w*(?:\.n)?|bl) [0-9a-f]+$", r"\1\2 X", l)
        return l
    lines = out.splitlines()
    minus = sorted(norm(l) for l in lines if l[:1] == "-" and l[:3] != "---")
    plus = sorted(norm(l)[1:] for l in lines if l[:1] == "+" and l[:3] != "+++")
    minus = [m[1:] for m in minus]
    plus = [x for x in plus if x != ".short 0x0000"]
    minus = [x for x in minus if x != ".short 0x0000"]
    if minus == plus:
        print("\n".join(lines[:3])); print("MATCH (positions only)"); sys.exit(0)
    print(out)
    print("NO MATCH")
