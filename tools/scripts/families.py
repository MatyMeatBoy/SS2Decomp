#!/usr/bin/env python3
"""families.py [--min N] : census of undecompiled functions grouped by code shape (mnemonics + registers, immediates and
branch targets erased). A solved member gives the template for the rest (see docs / loopfix.py / entry-loop template).
Uses the cached refscan index (/tmp/refscan_idx.pkl; delete to rebuild)."""
import collections, os, pickle, re, sys
sys.path.insert(0, os.path.dirname(__file__))
import capstone
import refscan
idx = refscan.build_index()
md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_THUMB)
fam = collections.defaultdict(list)
def shape(b):
    out = []
    for i in md.disasm(b, 0):
        ops = re.sub(r"#-?(0x)?[0-9a-f]+", "#", i.op_str)
        ops = re.sub(r"\[pc, #\]", "[pc]", ops)
        mn = re.sub(r"\.n$", "", i.mnemonic)
        if mn.startswith("b") and mn not in ("bics", "bic", "bl", "bx", "blx") and len(mn) <= 3:
            ops = ""
        out.append(mn + " " + ops)
    return "\n".join(out)
for n, b in idx.items():
    if len(b) >= 8:
        fam[shape(b)].append((n, len(b)))
mn = int(sys.argv[sys.argv.index("--min") + 1]) if "--min" in sys.argv else 2
rows = sorted(((len(v) * v[0][1], k, v) for k, v in fam.items() if len(v) >= mn), reverse=True)
tot = 0
for score, k, v in rows[:60]:
    tot += score
    print("%3d members x %4d bytes: %s" % (len(v), v[0][1], " ".join(n for n, _ in v[:8])))
print("families>=%d: %d, bytes %d of %d" % (mn, len(rows), sum(s for s, _, _ in rows), sum(len(b) for b in idx.values())))
