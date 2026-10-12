#!/usr/bin/env python3
"""cc_scan.py OUT.txt  for every C function (matched or NONMATCHING draft) of the game modules, compile it alone with agbcc
and with old_agbcc and record the diff score against the original asm: 'module func kind score_agbcc score_old'.
Used to find modules (or address ranges) compiled with the wrong compiler."""
import io, contextlib, os, re, sys, tempfile
sys.path.insert(0, os.path.dirname(__file__))
import decomp
ROOT = decomp.ROOT
CCS = [os.path.join(ROOT, "tools/agbcc/bin/agbcc"), os.path.join(ROOT, "tools/agbcc/bin/old_agbcc")]
out = open(sys.argv[1], "w")
kinds = {}
for l in open(os.path.join(ROOT, "tools/config/modules.cfg")):
    p = l.split()
    if len(p) > 3 and not l.startswith("#"): kinds[p[1]] = (p[2], p[3])

def score(func, path, cc):
    buf = io.StringIO()
    os.environ["DECOMP_CC1"] = cc
    try:
        with contextlib.redirect_stdout(buf):
            ok = decomp.check(func, path, verbose=True)
    except BaseException:
        return -1
    o = buf.getvalue()
    if ok: return 0
    if "size:" not in o: return -1
    return sum(1 for l in o.splitlines() if l[:1] in "+-" and l[:3] not in ("---", "+++"))

for fn in sorted(os.listdir(os.path.join(ROOT, "src"))):
    mod = fn[:-2]
    if not fn.endswith(".c") or kinds.get(mod) != ("c", "game"): continue
    text = open(os.path.join(ROOT, "src", fn), encoding="utf-8").read()
    drafts = set(re.findall(r"#ifdef NONMATCHING\n.*?#else\nINCLUDE_ASM\(\s*\"[^\"]*\"\s*,\s*(\w+)\s*\);\n#endif", text, re.S))
    flat = re.sub(r"#ifdef NONMATCHING\n(.*?)#else\nINCLUDE_ASM\([^)]*\);\n#endif\n?", lambda m: m.group(1), text, flags=re.S)
    prelude, funcs, order = decomp.split_functions(flat)
    prelude = re.sub(r"#ifdef NONMATCHING\n.*?#endif\n?", "", prelude, flags=re.S)
    prelude = re.sub(r"INCLUDE_ASM\([^)]*\);\n?", "", prelude)
    for name in order:
        if not re.fullmatch(r"sub_[0-9A-F]{8}", name): continue
        with tempfile.TemporaryDirectory() as td:
            c = os.path.join(td, name + ".c")
            open(c, "w").write(prelude + "\n" + funcs[name] + "\n")
            s = [score(name, c, cc) for cc in CCS]
        out.write("%s %s %s %d %d\n" % (mod, name, "draft" if name in drafts else "c", s[0], s[1])); out.flush()
