#!/usr/bin/env python3
"""Split a C module at a function address.

usage: split_module.py ADDRESS NEWNAME [--cc1 PATH] [--cflags "..."]

Functions from ADDRESS up to the next module start move from the containing
module to src/NEWNAME.c (C code and INCLUDE_ASM stubs, in order), their asm
files move to asm/nonmatchings/NEWNAME/, and modules.cfg / ld_script.ld /
Makefile are updated.
"""

import argparse
import os
import re
import sys

sys.path.insert(0, os.path.dirname(__file__))
import decomp  # noqa: E402

ROOT = decomp.ROOT


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("address", type=lambda x: int(x, 0))
    ap.add_argument("name")
    ap.add_argument("--cc1")
    ap.add_argument("--cflags")
    args = ap.parse_args()
    old = decomp.module_of_addr(args.address)
    funcs = decomp.module_functions(old)
    names_after = [n for n in funcs if decomp.func_address(n) >= args.address]
    if not names_after:
        raise SystemExit("no functions at/after address in module %s" % old)

    src = os.path.join(ROOT, "src/%s.c" % old)
    text = open(src).read()
    # locate the first moved function in the C file
    first = names_after[0]
    pos = None
    for pat in (r'(#ifdef NONMATCHING\n(?:(?!#endif).)*?)?INCLUDE_ASM\("asm/nonmatchings/%s", %s\);' % (old, first),
                r"^[\w \*]+?\b%s\s*\(" % first):
        m = re.search(pat, text, flags=re.M | re.S)
        if m:
            pos = m.start()
            break
    if pos is None:
        raise SystemExit("cannot find %s in %s" % (first, src))
    # include prelude (everything before first function) in both files
    prelude, _, _ = decomp.split_functions(text)
    prelude = re.sub(r"#ifdef NONMATCHING\n.*?#endif\n?", "", prelude, flags=re.S)
    prelude = re.sub(r"INCLUDE_ASM\([^)]*\);\n?", "", prelude)
    head, tail = text[:pos], text[pos:]
    tail = tail.replace('asm/nonmatchings/%s"' % old, 'asm/nonmatchings/%s"' % args.name)
    open(src, "w").write(head.rstrip() + "\n")
    open(os.path.join(ROOT, "src/%s.c" % args.name), "w").write(prelude.rstrip() + "\n\n" + tail)

    os.makedirs(os.path.join(ROOT, "asm/nonmatchings", args.name), exist_ok=True)
    for n in names_after:
        p = os.path.join(ROOT, "asm/nonmatchings", old, n + ".s")
        if os.path.exists(p):
            os.rename(p, os.path.join(ROOT, "asm/nonmatchings", args.name, n + ".s"))

    cfg = os.path.join(ROOT, "tools/config/modules.cfg")
    lines = open(cfg).read().splitlines()
    out = []
    inserted = False
    for l in lines:
        p = l.split()
        if not inserted and p and not l.startswith("#") and int(p[0], 0) > args.address:
            cat = "game"
            out.append("0x%08X %s c %s" % (args.address, args.name, cat))
            inserted = True
        out.append(l)
    if not inserted:
        out.append("0x%08X %s c game" % (args.address, args.name))
    open(cfg, "w").write("\n".join(out) + "\n")

    ld = os.path.join(ROOT, "ld_script.ld")
    s = open(ld).read()
    s = s.replace("        build/src/%s.o(.text);\n" % old,
                  "        build/src/%s.o(.text);\n        build/src/%s.o(.text);\n" % (old, args.name))
    open(ld, "w").write(s)

    if args.cc1 or args.cflags:
        mk = os.path.join(ROOT, "Makefile")
        s = open(mk).read()
        add = ""
        if args.cc1:
            add += "CC1_%s := %s\n" % (args.name, args.cc1)
        if args.cflags:
            add += "CC1FLAGS_%s := %s\n" % (args.name, args.cflags)
        s = s.replace("# C files: preprocess, compile with agbcc, assemble.",
                      add + "\n# C files: preprocess, compile with agbcc, assemble.")
        open(mk, "w").write(s)
    print("moved %d functions from %s to %s" % (len(names_after), old, args.name))


if __name__ == "__main__":
    main()
