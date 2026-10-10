#!/usr/bin/env python3
"""Merge candidate C files: merge_c.py OUT.c IN1.c IN2.c ... [--min A] [--max A]
Declarations are concatenated; for functions defined twice the later file wins.
Only functions with ROM address in [min, max) are kept (helpers always kept)."""
import argparse, os, sys
sys.path.insert(0, os.path.dirname(__file__))
import decomp
ap = argparse.ArgumentParser()
ap.add_argument("out"); ap.add_argument("inputs", nargs="+")
ap.add_argument("--min", type=lambda x: int(x, 0), default=0)
ap.add_argument("--max", type=lambda x: int(x, 0), default=1 << 32)
a = ap.parse_args()
pre, funcs, order = [], {}, []
for f in a.inputs:
    p, fs, o = decomp.split_functions(open(f).read())
    pre.append(p.replace('#include "global.h"', ""))
    for n in o:
        addr = decomp.func_address(n)
        if addr is not None and not (a.min <= addr < a.max):
            continue
        if n not in funcs:
            order.append(n)
        funcs[n] = fs[n]
open(a.out, "w").write('#include "global.h"\n' + "\n".join(pre) + "\n" + "\n\n".join(funcs[n] for n in order) + "\n")
