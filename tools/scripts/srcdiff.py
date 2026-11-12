#!/usr/bin/env python3
"""srcdiff.py FUNC [outfile]: diff a NONMATCHING draft against the original, hunk by hunk, with the C source line of
each candidate instruction (the module is compiled with -g, which does not change the code).
Writes build/srcdiff_MOD/{hunks,shunks,orig,cand}.txt. hunks = address-insensitive diff; shunks = the same diff with
register names normalised (structural differences only: reload-register rotation that cascades from an earlier
difference is hidden). The header prints both counts; fix shunks in address order first."""
import os, subprocess, sys, tempfile, difflib, re
sys.path.insert(0, "tools/scripts")
import decomp
func = sys.argv[1]
mod = decomp.module_of(func)
base = int(func[4:], 16)
W = "build/srcdiff_%s" % mod
os.makedirs(W, exist_ok=True)
def sh(cmd):
    r = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    return r
r = sh("arm-none-eabi-cpp -DNONMATCHING -nostdinc -I tools/agbcc/include -iquote include -undef -std=gnu17 src/%s.c -o %s/m.i" % (mod, W))
if r.returncode: print(r.stderr[-2000:]); sys.exit(1)
r = sh("sh -c \"tools/agbcc/bin/agbcc %s/m.i -mthumb-interwork -O2 -fhex-asm -fprologue-bugfix -g -o %s/mg.s\"" % (W, W))
if r.returncode: print(r.stderr[-3000:]); sys.exit(1)
r = sh("arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -I . %s/mg.s -o %s/mg.o" % (W, W))
if r.returncode: print(r.stderr[-2000:]); sys.exit(1)
def dis(data, nm):
    p = os.path.join(W, nm); open(p, "wb").write(data)
    r = subprocess.run(["arm-none-eabi-objdump", "-D", "-b", "binary", "-marm", "-Mforce-thumb", "--adjust-vma=0x%x" % base, p], capture_output=True, text=True)
    out = []
    for l in r.stdout.splitlines():
        m = re.match(r"\s*([0-9a-f]+):\s+([0-9a-f ]+?)\s+(.*)", l)
        if m:
            t = re.sub(r"\s+", " ", m.group(3)); t = re.sub(r";.*", "", t).strip()
            out.append((int(m.group(1), 16), t))
    return out
with tempfile.TemporaryDirectory() as td:
    o = os.path.join(td, "o.o")
    on = decomp.assemble_orig(func, o)
    a = decomp.normalized(o, on or func); b = decomp.normalized("%s/mg.o" % W, func)
A = dis(a[0], "a.bin"); B = dis(b[0], "b.bin")
# line map
r = subprocess.run(["arm-none-eabi-objdump", "-d", "-l", "--disassemble=%s" % func, "%s/mg.o" % W], capture_output=True, text=True)
lm = {}; cur = 0; start = None
for l in r.stdout.splitlines():
    m = re.match(r".*\.c:(\d+)", l)
    if m: cur = int(m.group(1)); continue
    m = re.match(r"\s*([0-9a-f]+):\s", l)
    if m:
        ad = int(m.group(1), 16)
        if start is None: start = ad
        lm[base + ad - start] = cur
def nrm(t):
    t = re.sub(r"0x[0-9a-f]{7}\b", "X", t)
    t = re.sub(r"^[0-9a-f]{4} bl X$", "bl", t)
    t = re.sub(r"\[pc, #\d+\] @ \(X\)", "[pc]", t)
    return t
NA = [nrm(x[1]) for x in A]; NB = [nrm(x[1]) for x in B]
sm = difflib.SequenceMatcher(None, NA, NB, autojunk=False)
out = []; n = 0; hunks = 0
for tag, i1, i2, j1, j2 in sm.get_opcodes():
    if tag == "equal": continue
    hunks += 1; n += max(i2 - i1, j2 - j1)
    ln = lm.get(B[min(j1, len(B) - 1)][0], 0)
    out.append("@@ orig %08x cand %08x line %d" % (A[min(i1, len(A)-1)][0], B[min(j1, len(B)-1)][0], ln))
    for k in range(max(0, i1 - 3), i1): out.append("   %08x %s" % A[k])
    for k in range(i1, i2): out.append(" - %08x %s" % A[k])
    for k in range(j1, j2): out.append(" + %08x %s   [L%d]" % (B[k][0], B[k][1], lm.get(B[k][0], 0)))
    for k in range(i2, min(len(A), i2 + 2)): out.append("   %08x %s" % A[k])
NL = chr(10)
open("%s/orig.txt" % W, "w").write(NL.join("%08x %s" % x for x in A) + NL)
open("%s/cand.txt" % W, "w").write(NL.join("%08x %s  L%d" % (x[0], x[1], lm.get(x[0], 0)) for x in B) + NL)
def rn(t): return re.sub(r"(?<![a-z0-9])(r[0-9]+|sl|ip|fp|lr)(?![a-z0-9])", "R", t)
RA = [rn(x) for x in NA]; RB = [rn(x) for x in NB]
sm2 = difflib.SequenceMatcher(None, RA, RB, autojunk=False)
sh = 0; sn = 0
sout = []
for tag, i1, i2, j1, j2 in sm2.get_opcodes():
    if tag == "equal": continue
    sh += 1; sn += max(i2 - i1, j2 - j1)
    sout.append("@@ orig %08x cand %08x line %d" % (A[min(i1, len(A)-1)][0], B[min(j1, len(B)-1)][0], lm.get(B[min(j1, len(B) - 1)][0], 0)))
    for k in range(max(0, i1 - 4), i1): sout.append("   %08x %s" % A[k])
    for k in range(i1, i2): sout.append(" - %08x %s" % A[k])
    for k in range(j1, j2): sout.append(" + %08x %s   [L%d]" % (B[k][0], B[k][1], lm.get(B[k][0], 0)))
    for k in range(i2, min(len(A), i2 + 3)): sout.append("   %08x %s" % A[k])
open("%s/shunks.txt" % W, "w").write(NL.join(sout) + NL)
head = "size orig %d cand %d equal=%s relocs=%s hunks=%d insns=%d shunks=%d sinsns=%d" % (len(a[0]), len(b[0]), a[0] == b[0], a[1] == b[1], hunks, n, sh, sn)
open(sys.argv[2] if len(sys.argv) > 2 else "%s/hunks.txt" % W, "w").write(head + NL + NL.join(out) + NL)
print(head)
