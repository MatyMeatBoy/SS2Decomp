#!/usr/bin/env python3
"""nm_drafts.py OUTDIR [MODULE...]  export the NONMATCHING C drafts of src/*.c as standalone files OUTDIR/<func>.c and write
OUTDIR/scores.txt ('func score': 0 = matches, -1 = does not compile, else number of differing diff lines).
Feed the directory to permute_batch.py (--min-score/--max-score) and apply winners with apply_permuted.py."""
import io, contextlib, os, re, sys
sys.path.insert(0, os.path.dirname(__file__))
import decomp
out = sys.argv[1]; only = sys.argv[2:]
os.makedirs(out, exist_ok=True)
log = open(os.path.join(out, "scores.txt"), "a")
for fn in sorted(os.listdir(os.path.join(decomp.ROOT, "src"))):
    if not fn.endswith(".c") or (only and fn[:-2] not in only):
        continue
    text = open(os.path.join(decomp.ROOT, "src", fn), encoding="utf-8").read()
    prelude, funcs, order = decomp.split_functions(re.sub(r"#ifdef NONMATCHING\n(.*?)#else\nINCLUDE_ASM\([^)]*\);\n#endif\n?", lambda m: m.group(1), text, flags=re.S))
    stubbed = set(re.findall(r"#ifdef NONMATCHING\n.*?#else\nINCLUDE_ASM\(\s*\"[^\"]*\"\s*,\s*(\w+)\s*\);\n#endif", text, flags=re.S))
    prelude = re.sub(r"#ifdef NONMATCHING\n.*?#endif\n?", "", prelude, flags=re.S)
    prelude = re.sub(r"INCLUDE_ASM\([^)]*\);\n?", "", prelude)
    for name in order:
        if name not in stubbed or not re.fullmatch(r"sub_[0-9A-F]{8}", name):
            continue
        c = os.path.join(out, name + ".c")
        open(c, "w").write(prelude + "\n" + funcs[name] + "\n")
        buf = io.StringIO()
        try:
            with contextlib.redirect_stdout(buf):
                ok = decomp.check(name, c, verbose=True)
        except BaseException:
            ok = False
        o = buf.getvalue()
        sc = 0 if ok else (-1 if "size:" not in o else sum(1 for l in o.splitlines() if l[:1] in "+-" and l[:3] not in ("---", "+++")))
        log.write("%s %d\n" % (name, sc)); log.flush()
