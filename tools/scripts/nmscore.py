#!/usr/bin/env python3
"""nmscore.py [--unwrap] [--only FUNC,FUNC] [MODULE...] : score selected C drafts with the real build rules
(0 = identical -> with --unwrap it is converted to plain C and its .s removed; run `make compare` afterwards).
Output lines: `func score` (score = number of differing diff lines after normalising branch targets; -1 = no compile)."""
import argparse, contextlib, io, os, re, subprocess, sys, tempfile
sys.path.insert(0, os.path.dirname(__file__))
import decomp
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("--unwrap", action="store_true")
parser.add_argument("--only", help="score/unwrap only these comma-separated functions, even inside a shared module")
parser.add_argument("modules", nargs="*")
options = parser.parse_args()
args = options.modules
unwrap = options.unwrap
only = None if options.only is None else set(filter(None, (f.strip() for f in options.only.split(","))))
root = decomp.ROOT
def norm(l):
    return re.sub(r"^([-+])(b\w*(?:\.n)?|bl) [0-9a-f]+$", r"\1\2 X", l)
for fn in sorted(os.listdir(os.path.join(root, "src"))):
    if not fn.endswith(".c") or (args and fn[:-2] not in args):
        continue
    mod = fn[:-2]
    with open(os.path.join(root, "src", fn), encoding="utf-8") as source:
        text = source.read()
    funcs = re.findall(r'#ifdef NONMATCHING\n(?:(?!#ifdef|#endif).|\n)*?#else\nINCLUDE_ASM\("[^"]*", (sub_[0-9A-F]{8})\);\n#endif', text)
    if only is not None:
        funcs = [f for f in funcs if f in only]
    if not funcs:
        continue
    obj = "build_nm/src/%s.o" % mod
    r = subprocess.run(["make", "-s", "BUILD=build_nm", "NAME=shiningsoul2_nm", "NM_FLAGS=-DNONMATCHING", obj], cwd=root, capture_output=True, text=True)
    if r.returncode:
        for f in funcs: print(f, -1, flush=True)
        continue
    for f in funcs:
        try:
            with tempfile.TemporaryDirectory() as td:
                o = os.path.join(td, "o.o")
                on = decomp.assemble_orig(f, o)
                buf = io.StringIO()
                with contextlib.redirect_stdout(buf):
                    ok = decomp.compare(o, os.path.join(root, obj), f, verbose=True, orig_name=on)
            lines = buf.getvalue().splitlines()
            minus = sorted(norm(l)[1:] for l in lines if l[:1] == "-" and l[:3] != "---" and ".short 0x0000" not in l)
            plus = sorted(norm(l)[1:] for l in lines if l[:1] == "+" and l[:3] != "+++" and ".short 0x0000" not in l)
            sz = re.search(r"size: orig (\d+), candidate (\d+)", "\n".join(lines)); same = (not sz) or sz.group(1) == sz.group(2)
            sc = 0 if (ok or (minus == plus and same)) else max(len(minus), len(plus)) if any(("size:" in l) for l in lines) else -1
            if sc and not any("size:" in l for l in lines): sc = -1
        except BaseException:
            sc = -1
        print(f, sc, flush=True)
        if sc == 0 and unwrap:
            subprocess.run([sys.executable, os.path.join(os.path.dirname(__file__), "unwrap_func.py"), f], cwd=root)
