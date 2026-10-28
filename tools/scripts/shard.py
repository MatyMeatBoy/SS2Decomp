#!/usr/bin/env python3
"""Split the remaining game functions into balanced shards (contiguous in address order).

usage: shard.py gen K            write tools/config/shards.txt (lines: SHARD FUNC MODULE)
       shard.py show N           print the functions of shard N that are still undecompiled
"""
import glob, os, sys
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
CFG = os.path.join(ROOT, "tools/config/shards.txt")
SKIP = {"libagbsyscall", "m4a_1", "sched"}

def remaining():
    out = {}
    for p in glob.glob(os.path.join(ROOT, "asm/nonmatchings/*/*.s")):
        m = os.path.basename(os.path.dirname(p))
        if m in SKIP:
            continue
        out[os.path.basename(p)[:-2]] = (m, len(open(p).read().splitlines()))
    return out

if sys.argv[1] == "gen":
    k = int(sys.argv[2])
    rem = remaining()
    names = sorted(rem)  # sub_XXXXXXXX sorts by address
    total = sum(v[1] for v in rem.values())
    per = total / k
    acc, shard, lines = 0, 0, []
    for n in names:
        if acc >= per * (shard + 1) and shard < k - 1:
            shard += 1
        lines.append("%d %s %s" % (shard, n, rem[n][0]))
        acc += rem[n][1]
    open(CFG, "w").write("\n".join(lines) + "\n")
    print("%d functions, %d shards" % (len(names), shard + 1))
else:
    n = sys.argv[2]
    rem = remaining()
    for l in open(CFG):
        s, f, m = l.split()
        if s == n and f in rem:
            print("%-14s %-16s %5d asm lines" % (f, m, rem[f][1]))
