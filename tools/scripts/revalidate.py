#!/usr/bin/env python3
"""revalidate.py [--apply] [MODULE...]  re-check every C function against the original asm with the module compiler.

Functions whose C does not compile with agbcc or does not match are (with --apply) turned back into
INCLUDE_ASM stubs (asm file restored), so the tree builds and `make compare` can pass. Prints a summary."""
import os, re, sys, tempfile
sys.path.insert(0, os.path.dirname(__file__))
import decomp

apply_ = "--apply" in sys.argv
frm = sys.argv[sys.argv.index("--from") + 1] if "--from" in sys.argv else None
only = [a for a in sys.argv[1:] if not a.startswith("--") and a != frm]
prebad = {l.split()[1] for l in open(frm)} if frm else None
ROOT = decomp.ROOT
kinds = {}
for l in open(os.path.join(ROOT, "tools/config/modules.cfg")):
    p = l.split()
    if len(p) > 3 and not l.startswith("#"):
        kinds[p[1]] = (p[2], p[3])
bad, good, skipped = [], [], []
for fn in sorted(os.listdir(os.path.join(ROOT, "src"))):
    if not fn.endswith(".c"):
        continue
    mod = fn[:-2]
    if kinds.get(mod, ("", ""))[0] != "c" or kinds[mod][1] != "game" or (only and mod not in only):
        continue
    path = os.path.join(ROOT, "src", fn)
    text = open(path, encoding="utf-8").read()
    prelude, funcs, order = decomp.split_functions(text)
    prelude = re.sub(r"#ifdef NONMATCHING\n.*?#endif\n?", "", prelude, flags=re.S)
    prelude = re.sub(r"INCLUDE_ASM\([^)]*\);\n?", "", prelude)
    for name in order:
        try:
            decomp.func_address(name)
        except BaseException:
            skipped.append(name); continue
        if not re.match(r"sub_[0-9A-F]{8}$", name):
            skipped.append(name); continue
        if prebad is not None:
            (bad if name in prebad else good).append((mod, name))
            continue
        with tempfile.TemporaryDirectory() as td:
            c = os.path.join(td, name + ".c")
            open(c, "w").write(prelude + "\n" + funcs[name] + "\n")
            try:
                ok = decomp.check(name, c, verbose=False)
            except BaseException as e:
                ok = False
        (good if ok else bad).append((mod, name))
        print("%s %s" % ("OK " if ok else "BAD", name), flush=True)
    if apply_:
        changed = False
        for m, name in [b for b in bad if b[0] == mod]:
            decomp.restore_asm(name)
            text = text.replace(funcs[name], '#ifdef NONMATCHING\n%s\n#else\nINCLUDE_ASM("asm/nonmatchings/%s", %s);\n#endif' % (funcs[name], mod, name), 1)
            changed = True
        if changed:
            open(path, "w", encoding="utf-8").write(text)
print("good %d  bad %d  skipped %d" % (len(good), len(bad), len(skipped)))
open(os.path.join(ROOT, "build/revalidate_bad.txt" if not frm else "build/revalidate_applied.txt"), "w").write("\n".join("%s %s" % b for b in bad) + "\n")
