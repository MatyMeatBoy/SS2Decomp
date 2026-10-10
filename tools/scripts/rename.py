#!/usr/bin/env python3
"""Rename a symbol everywhere in the project.

usage: rename.py OLD NEW [OLD NEW ...]

Replaces whole words in asm/, src/, include/, data/, sym_ram.ld and
tools/config/*.cfg, renames asm/nonmatchings/*/OLD.s, and for functions also
records the new name in tools/config/functions.cfg.
"""

import glob
import os
import re
import sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))


def files():
    pats = ["asm/**/*.s", "asm/*.inc", "src/**/*.c", "src/*.c", "include/**/*.h", "include/*.h",
            "data/**/*.s", "data/*.s", "sym_ram.ld", "ld_script.ld", "tools/config/ld_script.ld.in"]
    seen = set()
    for p in pats:
        for f in glob.glob(os.path.join(ROOT, p), recursive=True):
            if f not in seen:
                seen.add(f)
                yield f


def main():
    args = sys.argv[1:]
    if not args or len(args) % 2:
        raise SystemExit(__doc__)
    pairs = list(zip(args[0::2], args[1::2]))
    regex = re.compile(r"\b(%s)\b" % "|".join(re.escape(o) for o, _ in pairs))
    mapping = dict(pairs)
    for f in files():
        text = open(f).read()
        new = regex.sub(lambda m: mapping[m.group(1)], text)
        if new != text:
            open(f, "w").write(new)
    for old, newname in pairs:
        for p in glob.glob(os.path.join(ROOT, "asm/nonmatchings/*/%s.s" % old)):
            os.rename(p, os.path.join(os.path.dirname(p), newname + ".s"))
    # functions.cfg: give the address its new name
    cfg = os.path.join(ROOT, "tools/config/functions.cfg")
    lines = open(cfg).read().splitlines()
    out = []
    for line in lines:
        p = line.split()
        if len(p) >= 2 and p[0] in ("thumb", "arm"):
            addr = int(p[1], 0)
            cur = p[2] if len(p) > 2 else ("sub_%08X" if p[0] == "thumb" else "arm_%08X") % addr
            if cur in mapping:
                line = "%s 0x%08X %s" % (p[0], addr, mapping[cur])
        out.append(line)
    open(cfg, "w").write("\n".join(out) + "\n")


if __name__ == "__main__":
    main()
