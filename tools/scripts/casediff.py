#!/usr/bin/env python3
"""casediff.py FUNC [-v CASE] : per-switch-case size/diff of a big NONMATCHING draft vs the original.

Splits original and candidate at the targets of the function's first jump table (TBL=n env picks
another one) plus the switch's default target ("post"). Columns: byte ranges, size delta, diff
lines (branch targets and pc-relative offsets masked) and rdiff (registers masked too).
-v CASE (e.g. case7, post, pre) prints that segment's diff. Jump-table case k = C `case k:`."""
import os, sys, re, struct, subprocess, tempfile, difflib
ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(ROOT, "tools", "scripts"))
os.chdir(ROOT)
import decomp
FUNC = sys.argv[1]
sys.argv = sys.argv[1:]
mod = decomp.module_of(FUNC)
obj = "build_nm/src/%s.o" % mod
os.environ["MAKEFLAGS"] = ""
r = subprocess.run(["make", "-s", "BUILD=build_nm", "NAME=shiningsoul2_nm", "NM_FLAGS=-DNONMATCHING", obj], capture_output=True, text=True)
if r.returncode:
    print(chr(10).join(l for l in (r.stdout+r.stderr).splitlines() if "warning" not in l and "In function" not in l and "At top" not in l)[-3000:]); sys.exit(1)
td = tempfile.mkdtemp()
oo = os.path.join(td, "o.o")
on = decomp.assemble_orig(FUNC, oo)

def tables(o, name):
    data, rel = decomp.func_code(o, name)
    start = decomp.func_code.start
    ent = {}
    for off, (t, n) in rel.items():
        if t == 2 and n.startswith("<section"):
            add = struct.unpack_from("<I", data, off)[0]
            if n == "<section>": add -= start
            elif n.startswith("<section+"): add += int(n[9:-1])
            ent[off] = add & ~1
    runs = []; cur = []
    for off in sorted(ent):
        if cur and off == cur[-1][0] + 4: cur.append((off, ent[off]))
        else:
            if cur: runs.append(cur)
            cur = [(off, ent[off])]
    if cur: runs.append(cur)
    return data, runs

def dis(o, name):
    r = decomp.run(["arm-none-eabi-objdump", "-d", "--no-show-raw-insn", "--disassemble=%s" % name, o])
    out = []
    base = None
    global raw_t
    raw_t = {}
    for l in r.stdout.splitlines():
        m = re.match(r"\s*([0-9a-f]+):\s*(.*)", l)
        if m:
            a = int(m.group(1), 16)
            if base is None: base = a
            t = re.sub(r"\s+", " ", m.group(2)).strip()
            t = re.sub(r"@.*", "", t).strip()
            t = re.sub(r"\s*<[^>]*>", "", t)
            # mask branch targets and pc-rel offsets
            mm = re.match(r"^(b[a-z]*(.n|.w)?) ([0-9a-f]+)$", t)
            if mm: raw_t[len(out)] = int(mm.group(3), 16) - (base or 0)
            t = re.sub(r"^(b[a-z]*(\.n|\.w)?) [0-9a-f]+$", r"\1 X", t)
            t = re.sub(r"\[pc, #\d+\]", "[pc, #X]", t)
            if t.startswith(".word") or t.startswith(".short") : t = ".word"
            out.append((a - base, t))
    return out

def regnorm(t):
    return re.sub(r"\b(r\d+|r1[0-2]|ip|sl|fp|sb|lr)\b", "R", t)

do, ro = tables(oo, on)
dc, rc = tables(obj, FUNC)
def main_table(runs):
    r_ = runs[int(os.environ.get("TBL", "0"))]
    if r_[0][1] == r_[0][0] + 4: r_ = r_[1:]
    return r_
to = [a for _, a in main_table(ro)]
tc = [a for _, a in main_table(rc)]
Do = dis(oo, on); RTo = raw_t; Dc = dis(obj, FUNC); RTc = raw_t
def post(D, RT):
    for i, (a, t) in enumerate(D):
        if re.match(r"cmp r\d+, #%d$" % (len(to) - 1), t) and D[i+1][1].startswith("bls"):
            return RT[i+2]
po = post(Do, RTo); pc_ = post(Dc, RTc)
to = to + [po]; tc = tc + [pc_]
def segs(D, t, size):
    starts = sorted(set(t))
    res = {}
    for i, tgt in enumerate(t):
        if tgt in res: continue
    bounds = {}
    for j, s in enumerate(starts):
        e = starts[j + 1] if j + 1 < len(starts) else size
        bounds[s] = (s, e)
    return bounds
bo = segs(Do, to, len(do)); bc = segs(Dc, tc, len(dc))
pre_o = (0, min(to)); pre_c = (0, min(tc))
def lines(D, rng):
    return [t for a, t in D if rng[0] <= a < rng[1]]
names = [("pre", pre_o, pre_c)]
seen = set()
for k in range(len(to)):
    if to[k] in seen: continue
    seen.add(to[k])
    names.append(("case%d" % k if k < len(to) - 1 else "post", bo[to[k]], bc[tc[k]]))
verbose = sys.argv[2] if len(sys.argv) > 2 and sys.argv[1] == "-v" else None
print("total orig %d cand %d" % (len(do), len(dc)))
print("%-8s %12s %12s %6s %6s %6s" % ("case", "orig", "cand", "dsz", "diff", "rdiff"))
tot = rtot = 0
for nm, ro_, rc_ in names:
    a = lines(Do, ro_); b = lines(Dc, rc_)
    sm = difflib.SequenceMatcher(None, a, b, autojunk=False)
    d = sum(max(i2 - i1, j2 - j1) for op, i1, i2, j1, j2 in sm.get_opcodes() if op != "equal")
    ar = [regnorm(x) for x in a]; br = [regnorm(x) for x in b]
    sm2 = difflib.SequenceMatcher(None, ar, br, autojunk=False)
    d2 = sum(max(i2 - i1, j2 - j1) for op, i1, i2, j1, j2 in sm2.get_opcodes() if op != "equal")
    tot += d; rtot += d2
    print("%-8s %5x-%5x %5x-%5x %6d %6d %6d" % (nm, ro_[0], ro_[1], rc_[0], rc_[1], (rc_[1]-rc_[0])-(ro_[1]-ro_[0]), d, d2))
    if verbose == nm:
        for l in difflib.unified_diff(a, b, "orig", "cand", lineterm="", n=4): print(l)
print("sum diff %d rdiff %d" % (tot, rtot))
if "-t" in sys.argv:
    for r_ in ro: print("orig run at %x len %d" % (r_[0][0], len(r_)))
    for r_ in rc: print("cand run at %x len %d" % (r_[0][0], len(r_)))
