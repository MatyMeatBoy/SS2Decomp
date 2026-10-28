#!/usr/bin/env python3
"""nmdiff.py FUNC : rebuild the module's NONMATCHING object (make build_nm/...) and diff FUNC against the original asm.
Uses the real build rules, so it works for drafts that need project headers/aliases.
Exit 0 means identical normalized bytes and relocations; a mismatch exits 1."""
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
import contextlib, io
with tempfile.TemporaryDirectory() as td:
    o = os.path.join(td, "o.o")
    on = decomp.assemble_orig(func, o)
    buf = io.StringIO()
    with contextlib.redirect_stdout(buf):
        ok = decomp.compare(o, obj, func, verbose=True, orig_name=on)
    out = buf.getvalue()
    if ok:
        print("MATCH"); sys.exit(0)
    # The byte/relocation comparison is authoritative. A diff multiset can be
    # identical after instruction reordering or a changed local branch target.
    print(out)
    print("NO MATCH")
    sys.exit(1)
