#!/usr/bin/env python3
"""nm_check.py [FUNC...]  check NONMATCHING drafts in situ: compile the real src/<module>.c with -DNONMATCHING and compare each
function with the original asm. Prints 'func score' (0 = matches, -1 = no compile). With no args checks every draft."""
import io, contextlib, os, re, sys
os.environ["DECOMP_CPPFLAGS"] = "-DNONMATCHING"
sys.path.insert(0, os.path.dirname(__file__))
import decomp
ROOT = decomp.ROOT
names = sys.argv[1:]
for fn in sorted(os.listdir(os.path.join(ROOT, "src"))):
    if not fn.endswith(".c"):
        continue
    p = os.path.join(ROOT, "src", fn)
    text = open(p, encoding="utf-8").read()
    drafts = re.findall(r"#ifdef NONMATCHING\n.*?#else\nINCLUDE_ASM\(\s*\"[^\"]*\"\s*,\s*(\w+)\s*\);\n#endif", text, re.S)
    for name in drafts:
        if names and name not in names or not re.fullmatch(r"sub_[0-9A-F]{8}", name):
            continue
        buf = io.StringIO()
        try:
            with contextlib.redirect_stdout(buf):
                ok = decomp.check(name, p, verbose=True)
        except BaseException:
            ok = False
        o = buf.getvalue()
        sc = 0 if ok else (-1 if "size:" not in o else sum(1 for l in o.splitlines() if l[:1] in "+-" and l[:3] not in ("---", "+++")))
        print(name, sc, flush=True)
