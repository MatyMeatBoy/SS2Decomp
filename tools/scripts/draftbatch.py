#!/usr/bin/env python3
"""draftbatch.py FUNC... | --file LIST : m2c draft -> c89fix -> insert as `#ifdef NONMATCHING` -> make nonmatching module object;
the insertion (src + headers) is rolled back if the draft does not compile. Prints OK/FAIL per function."""
import os, re, shutil, subprocess, sys, tempfile
sys.path.insert(0, os.path.dirname(__file__))
import decomp
root = decomp.ROOT
funcs = sys.argv[1:]
if funcs and funcs[0] == "--file":
    funcs = [l.split()[-1] for l in open(funcs[1]) if l.strip()]
HDRS = ["include/variables.h", "include/functions.h", "include/structs.h"]
def snap(files):
    return {f: open(os.path.join(root, f)).read() for f in files}
def restore(s):
    for f, t in s.items():
        open(os.path.join(root, f), "w").write(t)
ok = fail = 0
for fn in funcs:
    try:
        path, mod = decomp.find_asm(fn)
    except BaseException:
        print(fn, "SKIP (no stub)"); continue
    srcf = "src/%s.c" % mod
    s = snap(HDRS + [srcf])
    draft = decomp.m2c(fn)
    if "Decompilation failure" in draft or "<<" in draft[:200] or len(draft) < 40:
        print(fn, "FAIL m2c"); fail += 1; continue
    with tempfile.NamedTemporaryFile("w", suffix=".c", delete=False) as t:
        t.write('#include "global.h"\n' + decomp.m2c_to_c(draft) if hasattr(decomp, "m2c_to_c") else draft)
        tmp = t.name
    subprocess.run([sys.executable, os.path.join(root, "tools/scripts/c89fix.py"), tmp], cwd=root, capture_output=True)
    try:
        import io, contextlib
        with contextlib.redirect_stdout(io.StringIO()):
            decomp.apply_nonmatch(fn, tmp)
    except BaseException as e:
        restore(s); print(fn, "FAIL apply", e); fail += 1; continue
    r = subprocess.run(["make", "-s", "BUILD=build_nm", "NAME=shiningsoul2_nm", "NM_FLAGS=-DNONMATCHING", "build_nm/src/%s.o" % mod], cwd=root, capture_output=True, text=True)
    if r.returncode:
        restore(s); print(fn, "FAIL compile"); fail += 1
    else:
        print(fn, "OK"); ok += 1
    os.unlink(tmp)
print("ok", ok, "fail", fail)
