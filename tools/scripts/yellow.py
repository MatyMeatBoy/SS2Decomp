#!/usr/bin/env python3
"""yellow.py [--min 1] [--max 12] [--time 300] [--procs 8] [--only FUNC,FUNC] [--no-permute]
Pipeline for the yellow cells (C drafts in #ifdef NONMATCHING):
  1. nmscore.py --unwrap: score every draft in place; drafts that already match are converted to plain C
  2. extract drafts with min <= score <= max into build/yellow/FUNC.c (module prelude + draft)
  3. permute_batch.py on them, then apply_permuted.py on build/yellow/permuted (ROM is checked, rolled back on mismatch)
Afterwards `make compare` must still be OK. Read `tools/scripts/nmdiff.py FUNC` for the ones left: most remaining
diffs are a wrong constant, a u8/u16 parameter declared u32, or a missing `return`."""
import argparse, os, re, subprocess, sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
S = os.path.join(ROOT, "tools", "scripts")
DRAFT = re.compile(r'#ifdef NONMATCHING\n((?:(?!#ifdef|#endif).|\n)*?)#else\nINCLUDE_ASM\("[^"]*", (\w+)\);\n#endif')


def run(*a, **kw):
    return subprocess.run([sys.executable] + list(a), cwd=ROOT, text=True, **kw)


def prelude(text):
    out = []
    for line in text.split("\n"):
        if line.startswith(("#ifdef", "INCLUDE_ASM")) or (re.match(r"^\w.*\)\s*\{?\s*$", line) and not line.rstrip().endswith(";")):
            break
        out.append(line)
    return "\n".join(out) + "\n"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--min", type=int, default=1)
    ap.add_argument("--max", type=int, default=12)
    ap.add_argument("--time", type=int, default=300)
    ap.add_argument("--procs", type=int, default=max(1, (os.cpu_count() or 2) // 2))
    ap.add_argument("--only", default="")
    ap.add_argument("--no-permute", action="store_true")
    a = ap.parse_args()
    out = os.path.join(ROOT, "build", "yellow")
    os.makedirs(out, exist_ok=True)
    only = set(filter(None, a.only.split(",")))
    mods = []
    if only:  # stay inside your shard: only score/unwrap the modules that hold these functions
        for fn in os.listdir(os.path.join(ROOT, "src")):
            if fn.endswith(".c") and any(f in open(os.path.join(ROOT, "src", fn), encoding="utf-8").read() for f in only):
                mods.append(fn[:-2])
    r = run(os.path.join(S, "nmscore.py"), "--unwrap", *mods, capture_output=True)
    scores = {}
    for line in r.stdout.splitlines():
        p = line.split()
        if len(p) == 2 and p[1].lstrip("-").isdigit():
            scores[p[0]] = int(p[1])
        elif line.startswith("unwrapped"):
            print(line)
    picked = []
    for fn in sorted(os.listdir(os.path.join(ROOT, "src"))):
        if not fn.endswith(".c"):
            continue
        text = open(os.path.join(ROOT, "src", fn), encoding="utf-8").read()
        pre = prelude(text)
        for m in DRAFT.finditer(text):
            f = m.group(2)
            if (only and f in only) or (not only and a.min <= scores.get(f, -1) <= a.max):
                open(os.path.join(out, f + ".c"), "w", newline="\n").write(pre + m.group(1))
                picked.append(f)
    with open(os.path.join(out, "scores.txt"), "w", newline="\n") as fh:
        for f in picked:
            fh.write("%s %d\n" % (f, max(1, scores.get(f, 1))))
    print("%d drafts in build/yellow (score %d..%d)" % (len(picked), a.min, a.max))
    if a.no_permute or not picked:
        return
    run(os.path.join(S, "permute_batch.py"), out, os.path.join(out, "scores.txt"), "--min-score", "1",
        "--max-score", "1000000", "--time", str(a.time), "--procs", str(a.procs))
    perm = os.path.join(out, "permuted")
    if os.path.isdir(perm) and os.listdir(perm):
        run(os.path.join(S, "apply_permuted.py"), perm)


if __name__ == "__main__":
    main()
