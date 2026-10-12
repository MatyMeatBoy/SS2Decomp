#!/usr/bin/env python3
"""nmdiff.py FUNC : rebuild the module's NONMATCHING object (make build_nm/...) and diff FUNC against the original asm.
Uses the real build rules, so it works for drafts that need project headers/aliases."""
import os, subprocess, sys, tempfile
sys.path.insert(0, os.path.dirname(__file__))
import decomp
func = sys.argv[1]
mod = decomp.module_of(func)
obj = os.path.join(decomp.ROOT, "build_nm/src/%s.o" % mod)
r = subprocess.run(["make", "-s", obj], cwd=decomp.ROOT, capture_output=True, text=True)
if r.returncode:
    print(r.stdout[-1500:], r.stderr[-1500:]); sys.exit(1)
with tempfile.TemporaryDirectory() as td:
    o = os.path.join(td, "o.o")
    on = decomp.assemble_orig(func, o)
    print("MATCH" if decomp.compare(o, obj, func, verbose=True, orig_name=on) else "NO MATCH")
