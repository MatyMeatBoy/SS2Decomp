#!/usr/bin/env python3
"""Run the permuter on many near-matching drafts.

usage: permute_batch.py DRAFTDIR SCORES.txt [--max-score 12] [--time 90] [--procs 3]
Writes winners to DRAFTDIR/permuted/<func>.c (score 0) ."""
import argparse, os, subprocess, sys
from concurrent.futures import ThreadPoolExecutor
here = os.path.dirname(__file__)
ap = argparse.ArgumentParser()
ap.add_argument("dir"); ap.add_argument("scores")
ap.add_argument("--max-score", type=int, default=12)
ap.add_argument("--min-score", type=int, default=1)
ap.add_argument("--time", type=int, default=90)
ap.add_argument("--procs", type=int, default=3)
ap.add_argument("--cc1", default="")
a = ap.parse_args()
funcs = []
for l in open(a.scores):
    p = l.split()
    if len(p) == 2 and p[1].lstrip("-").isdigit() and a.min_score <= int(p[1]) <= a.max_score:
        funcs.append(p[0])
out = os.path.join(a.dir, "permuted")
os.makedirs(out, exist_ok=True)
def run(f):
    c = os.path.join(a.dir, f + ".c")
    if not os.path.exists(c):
        return
    env = dict(os.environ, DECOMP_CC1=a.cc1) if a.cc1 else dict(os.environ)
    r = subprocess.run([sys.executable, os.path.join(here, "permute.py"), f, c, "--time", str(a.time), "--out", out],
                       capture_output=True, text=True, env=env)
    print(r.stdout.strip().splitlines()[-1] if r.stdout.strip() else f + " ?", flush=True)
with ThreadPoolExecutor(a.procs) as ex:
    list(ex.map(run, funcs))
