#!/usr/bin/env python3
"""addnm.py FUNC FILE.c [--keep] : insert hand-written C (the function(s) after the include line) as the NONMATCHING draft of FUNC,
rebuild the module's NM object, diff against the original. MATCH -> unwrapped to plain C (then run make compare);
no compile -> rolled back; otherwise the draft is kept (it compiles). Prints the nmdiff verdict."""
import io, contextlib, os, subprocess, sys
sys.path.insert(0, os.path.dirname(__file__))
import decomp
root = decomp.ROOT
func, cfile = sys.argv[1:3]
path, mod = decomp.find_asm(func)
srcf = os.path.join(root, "src/%s.c" % mod)
H = ["include/variables.h", "include/functions.h", "include/structs.h"]
snap = {f: open(os.path.join(root, f)).read() for f in H}
snap[srcf] = open(srcf).read()
with contextlib.redirect_stdout(io.StringIO()):
    decomp.apply_nonmatch(func, cfile)
r = subprocess.run(["make", "-s", "BUILD=build_nm", "NAME=shiningsoul2_nm", "NM_FLAGS=-DNONMATCHING", "build_nm/src/%s.o" % mod], cwd=root, capture_output=True, text=True)
def rollback():
    for f, t in snap.items():
        open(f if os.path.isabs(f) else os.path.join(root, f), "w").write(t)
if r.returncode:
    rollback(); print(func, "NO COMPILE"); print((r.stdout + r.stderr)[-600:]); sys.exit(1)
d = subprocess.run([sys.executable, os.path.join(root, "tools/scripts/nmdiff.py"), func], capture_output=True, text=True).stdout
last = d.strip().splitlines()[-1] if d.strip() else ""
if last == "MATCH" or last.startswith("MATCH ("):
    subprocess.run([sys.executable, os.path.join(root, "tools/scripts/unwrap_func.py"), func], cwd=root)
    print(func, "MATCH (unwrapped; run make compare)")
else:
    sz = d.splitlines()[0] if d else "?"
    print(func, "draft kept,", sz)
