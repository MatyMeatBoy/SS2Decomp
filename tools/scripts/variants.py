#!/usr/bin/env python3
"""Try every combination of source alternatives for one function.

The template is a C file where alternatives are written as
    {{first||second||third}}
Every combination is compiled and compared with the original assembly; the
results are printed sorted by the number of differing lines (0 = match).

usage: variants.py FUNC template.c [--max N] [--write-best out.c]
"""

import argparse
import contextlib
import io
import itertools
import os
import re
import sys
import tempfile

sys.path.insert(0, os.path.dirname(__file__))
import decomp  # noqa: E402

ALT = re.compile(r"\{\{(.*?)\}\}", re.S)


def expand(text):
    parts = ALT.split(text)
    fixed = parts[0::2]
    choices = [p.split("||") for p in parts[1::2]]
    for combo in itertools.product(*choices):
        out = fixed[0]
        for c, f in zip(combo, fixed[1:]):
            out += c + f
        yield combo, out


def score(func, code):
    with tempfile.TemporaryDirectory() as td:
        c = os.path.join(td, "v.c")
        open(c, "w").write(code)
        buf = io.StringIO()
        with contextlib.redirect_stdout(buf):
            ok = decomp.check(func, c, verbose=True)
        if ok:
            return 0
        out = buf.getvalue()
        if "size:" not in out:
            return 10 ** 6  # compile error
        return sum(1 for l in out.splitlines() if l[:1] in "+-" and l[:3] not in ("---", "+++"))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("func")
    ap.add_argument("template")
    ap.add_argument("--max", type=int, default=2000)
    ap.add_argument("--write-best")
    args = ap.parse_args()
    text = open(args.template).read()
    results = []
    for i, (combo, code) in enumerate(expand(text)):
        if i >= args.max:
            break
        s = score(args.func, code)
        results.append((s, combo, code))
        if s == 0:
            break
    results.sort(key=lambda r: r[0])
    for s, combo, _ in results[:10]:
        print("%7d  %s" % (s, " | ".join(c.strip().replace("\n", " ")[:40] for c in combo)))
    if args.write_best and results:
        open(args.write_best, "w").write(results[0][2])
    sys.exit(0 if results and results[0][0] == 0 else 1)


if __name__ == "__main__":
    main()
