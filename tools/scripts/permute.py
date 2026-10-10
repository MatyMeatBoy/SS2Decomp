#!/usr/bin/env python3
"""Run decomp-permuter on one function.

usage: permute.py FUNC FILE.c [--time SECONDS] [--jobs N] [--out DIR]

FILE.c must define FUNC (plus whatever declarations it needs). A permuter
directory is created (preprocessed base.c, compile.sh using agbcc, target.o
assembled from the original asm) and the permuter is run for --time seconds.
The best source found is copied to <out>/FUNC.c ("score 0" means matching).
Set PERMUTER to the decomp-permuter checkout (default tools/decomp-permuter).
"""

import argparse
import glob
import os
import shutil
import subprocess
import sys
import tempfile

sys.path.insert(0, os.path.dirname(__file__))
import decomp  # noqa: E402

ROOT = decomp.ROOT
PERMUTER = os.environ.get("PERMUTER", os.path.join(ROOT, "tools/decomp-permuter"))


def setup(func, cfile, d):
    os.makedirs(d, exist_ok=True)
    mod = decomp.module_of_addr(decomp.func_address(func))
    cc1 = decomp.module_cc1(mod)
    flags = decomp.module_flags(mod) or decomp.CC1FLAGS
    # target.o
    oname = decomp.assemble_orig(func, os.path.join(d, "target.o"))
    if oname != func:
        # the permuter compares by function name: rename the original symbol
        subprocess.run(["arm-none-eabi-objcopy", "--redefine-sym", "%s=%s" % (oname, func),
                        os.path.join(d, "target.o")], check=True)
    # base.c: preprocessed, without asm() statements
    pre = subprocess.run(["arm-none-eabi-cpp", "-P"] + decomp.CPPFLAGS + [cfile],
                         capture_output=True, text=True, check=True).stdout
    pre = "\n".join(l for l in pre.splitlines() if not l.startswith("asm("))
    open(os.path.join(d, "base.c"), "w").write(pre)
    subprocess.run([sys.executable, os.path.join(PERMUTER, "strip_other_fns.py"),
                    os.path.join(d, "base.c"), func], check=True)
    sh = os.path.join(d, "compile.sh")
    open(sh, "w").write("""#!/bin/sh
# $1 = input.c, $3 = output.o
T=$(mktemp -d)
%s %s -o "$T/out.s" "$1" 2>/dev/null || { rm -rf "$T"; exit 1; }
printf '\\t.text\\n\\t.align 2, 0\\n' >> "$T/out.s"
arm-none-eabi-as -mcpu=arm7tdmi -o "$3" "$T/out.s"
r=$?
rm -rf "$T"
exit $r
""" % (cc1, " ".join(flags)))
    os.chmod(sh, 0o755)
    open(os.path.join(d, "settings.toml"), "w").write(
        'func_name = "%s"\ncompiler_type = "gcc"\nobjdump_command = "arm-none-eabi-objdump -drz -M force-thumb"\n' % func)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("func")
    ap.add_argument("cfile")
    ap.add_argument("--time", type=int, default=300)
    ap.add_argument("--jobs", type=int, default=1)
    ap.add_argument("--out", default=os.path.join(ROOT, "build/permuter_results"))
    ap.add_argument("--dir")
    args = ap.parse_args()
    d = args.dir or tempfile.mkdtemp(prefix="perm_%s_" % args.func)
    setup(args.func, args.cfile, d)
    try:
        subprocess.run([sys.executable, os.path.join(PERMUTER, "permuter.py"), d, "-j", str(args.jobs),
                        "--stop-on-zero", "--best-only", "--quiet"], timeout=args.time)
    except subprocess.TimeoutExpired:
        pass
    outs = sorted(glob.glob(os.path.join(d, "output-*")), key=lambda p: int(p.split("-")[-2]) if p.split("-")[-2].isdigit() else 10 ** 9)
    os.makedirs(args.out, exist_ok=True)
    if outs:
        best = outs[0]
        score = best.split("-")[-2]
        shutil.copy(os.path.join(best, "source.c"), os.path.join(args.out, "%s.c" % args.func))
        print("%s best score %s -> %s" % (args.func, score, os.path.join(args.out, args.func + ".c")))
    else:
        print("%s: no improvement found" % args.func)


if __name__ == "__main__":
    main()
