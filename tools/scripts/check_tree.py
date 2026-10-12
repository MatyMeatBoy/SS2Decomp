#!/usr/bin/env python3
"""check_tree.py  structural sanity checks that do not need the ROM (run by the pre-commit hook and CI).
Fails on: INCLUDE_ASM without its .s file, a function both in C and as INCLUDE_ASM, .s files of functions already in C,
functions out of ROM-address order inside a module, C edits to hand-written asm modules."""
import os, re, sys
sys.path.insert(0, os.path.dirname(__file__))
import decomp
ROOT = decomp.ROOT
errors = []
kinds = {}
for l in open(os.path.join(ROOT, "tools/config/modules.cfg")):
    p = l.split()
    if len(p) > 3 and not l.startswith("#"): kinds[p[1]] = (p[2], p[3])
for fn in sorted(os.listdir(os.path.join(ROOT, "src"))):
    if not fn.endswith(".c"): continue
    mod = fn[:-2]
    if mod not in kinds:
        errors.append("src/%s: module not in modules.cfg (hand-written asm modules must not get a C file)" % fn); continue
    text = open(os.path.join(ROOT, "src", fn), encoding="utf-8").read()
    stubs = re.findall(r"INCLUDE_ASM\(\s*\"asm/nonmatchings/([^\"]+)\"\s*,\s*(\w+)\s*\)", text)
    seen = {}
    for d, name in stubs:
        if not os.path.exists(os.path.join(ROOT, "asm/nonmatchings", d, name + ".s")):
            errors.append("%s: INCLUDE_ASM %s but asm/nonmatchings/%s/%s.s is missing" % (fn, name, d, name))
        seen[name] = seen.get(name, 0) + 1
    for name, c in seen.items():
        if c > 1: errors.append("%s: INCLUDE_ASM of %s appears %d times" % (fn, name, c))
    plain = re.sub(r"#ifdef NONMATCHING\n.*?#else\n", "", text, flags=re.S)
    _, funcs, order = decomp.split_functions(plain)
    stubset = set(seen)
    for name in order:
        if name in stubset and re.fullmatch(r"sub_[0-9A-F]{8}", name):
            errors.append("%s: %s is defined in C and also included as asm" % (fn, name))
    addrs = [int(n[4:], 16) for n in order if re.fullmatch(r"sub_[0-9A-F]{8}", n)]
    seq = []
    for m in re.finditer(r"INCLUDE_ASM\([^,]*,\s*(sub_[0-9A-F]{8})\s*\)|^(?:[\w\*][\w \*]*?)\b(sub_[0-9A-F]{8})\s*\([^;{]*\)\s*\n?\{", plain, re.M):
        seq.append(int((m.group(1) or m.group(2))[4:], 16))
    for a, b in zip(seq, seq[1:]):
        if b < a:
            errors.append("%s: functions out of address order (sub_%08X after sub_%08X); run tools/scripts/sort_module.py %s" % (fn, b, a, mod)); break
    if kinds[mod][0] == "c":
        for p in os.listdir(os.path.join(ROOT, "asm/nonmatchings", mod)) if os.path.isdir(os.path.join(ROOT, "asm/nonmatchings", mod)) else []:
            n = p[:-2]
            if p.endswith(".s") and n not in stubset:
                errors.append("asm/nonmatchings/%s/%s: orphan .s (function not INCLUDE_ASM'd in src/%s)" % (mod, p, fn))
for e in errors: print("ERROR:", e)
print("check_tree: %d error(s)" % len(errors))
sys.exit(1 if errors else 0)
