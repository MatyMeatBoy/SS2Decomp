#!/usr/bin/env python3
"""Function discovery for Shining Soul II (agbcc compiled THUMB code).

Recursive descent from the known entry points, following BL calls, literal
pool function pointers, agbcc switch jump tables and function pointers stored
in data.  Gaps between discovered functions are then examined for
unreferenced functions.

Output: a text config with one function per line:
    <thumb|arm> <address> <size> <source>
"""

import argparse
import bisect
import struct
import sys

sys.path.insert(0, __import__("os").path.dirname(__file__))
from thumb import decode  # noqa: E402

BASE = 0x08000000


class Analyzer:
    def __init__(self, rom, code_start, code_end):
        self.rom = rom
        self.code_start = code_start
        self.code_end = code_end
        self.funcs = {}       # addr -> (mode, source)
        self.insns = {}       # addr -> Insn (thumb)
        self.owner = {}       # insn addr -> function entry
        self.lits = {}        # literal word addr -> function entry
        self.jumptables = {}  # table addr -> (entries, func)
        self.bad = {}         # func -> reason
        self.queue = []
        self.ptr_refs = {}    # target -> list of referencing literal addrs
        self.farjumps = set()  # addresses of bl insns used as far jumps
        self.farjump_targets = set()
        self.bl_refs = {}     # target -> set of calling funcs
        self.data_start = code_end
        self.blacklist = set()
        self.intrusions = set()

    def dead_after_bl(self, fn, a, t):
        """agbcc far jump: bl followed by alignment padding / literal pool."""
        if t in self.funcs or not (fn < t < fn + 0x10000):
            return False
        n = a + 4
        if n in self.lits:
            return True
        if n % 4 == 2 and struct.unpack_from("<H", self.rom, n - BASE)[0] == 0:
            return True
        return False

    def is_farjump(self, fn, t):
        if t in self.farjump_targets:
            return True
        if t in self.funcs:
            return False
        # agbcc C functions are always 4 byte aligned; a bl to a 2-aligned
        # address close to the current function is a far jump.
        if t % 4 != 0 and fn < t < fn + 0x10000:
            return True
        return False

    def word(self, addr):
        return struct.unpack_from("<I", self.rom, addr - BASE)[0]

    def in_code(self, addr):
        return self.code_start <= addr < self.code_end

    def add_func(self, addr, mode, source):
        if addr in self.funcs or addr in self.blacklist:
            return
        if not self.in_code(addr):
            return
        self.funcs[addr] = (mode, source)
        self.queue.append(addr)

    def run(self):
        while self.queue:
            fn = self.queue.pop()
            mode = self.funcs[fn][0]
            if mode == "thumb":
                self.explore_thumb(fn)

    def try_jumptable(self, fn, ins, local):
        # Look back for the ldr that loads the table address.
        table = None
        n = None
        a = ins.addr
        back = []
        p = a - 2
        for _ in range(12):
            i = self.insns.get(p) or decode(self.rom, p)
            if i is None:
                break
            back.append(i)
            p -= 2
        for i in back:
            if i.kind == "ldrpc" and table is None:
                v = self.word(i.lit)
                if self.in_code(v) and v > ins.addr and v - ins.addr < 0x400 and v % 4 == 0:
                    table = v
        for idx, i in enumerate(back):
            if i.kind == "cmpimm":
                # make sure a bhi/bcs follows somewhere after (i.e. earlier in back list)
                n = i.imm + 1
                break
        if table is None:
            return False
        entries = []
        if n is None or n > 512:
            # unknown length: read while plausible
            t = table
            while True:
                v = self.word(t)
                if not (fn <= v < fn + 0x8000) or v & 1:
                    break
                entries.append(v)
                t += 4
                if len(entries) > 512:
                    break
        else:
            for k in range(n):
                v = self.word(table + 4 * k)
                if not self.in_code(v) or v & 1:
                    return False
                entries.append(v)
        for k in range(len(entries)):
            self.lits[table + 4 * k] = fn
        self.jumptables[table] = (entries, fn)
        for e in entries:
            local.append(e)
        return True

    def explore_thumb(self, fn):
        local = [fn]
        seen = set()
        while local:
            a = local.pop()
            while True:
                if a in seen:
                    break
                if not self.in_code(a):
                    self.bad.setdefault(fn, "flow leaves code region at %08X" % a)
                    break
                if a in self.lits or (a - 2) in self.lits:
                    self.bad.setdefault(fn, "flow into literal at %08X" % a)
                    break
                o = self.owner.get(a)
                if o is not None and o != fn:
                    # shared code (e.g. hand written asm jumping into other function)
                    if a != o:
                        self.intrusions.add((fn, o))
                    break
                ins = decode(self.rom, a)
                if ins is None:
                    self.bad.setdefault(fn, "invalid insn at %08X" % a)
                    break
                seen.add(a)
                self.insns[a] = ins
                self.owner[a] = fn
                k = ins.kind
                if k == "ldrpc":
                    self.lits[ins.lit] = fn
                    v = self.word(ins.lit)
                    if v & 1 and self.in_code(v - 1):
                        self.ptr_refs.setdefault(v - 1, []).append(ins.lit)
                        self.add_func(v - 1, "thumb", "litptr")
                elif k == "bl":
                    t = ins.target
                    if self.is_farjump(fn, t) or self.dead_after_bl(fn, a, t):
                        # agbcc emits "bl" as a long unconditional branch
                        self.farjumps.add(a)
                        a = t
                        continue
                    if self.in_code(t):
                        self.add_func(t, "thumb", "bl")
                        self.bl_refs.setdefault(t, set()).add(fn)
                elif k == "swi" and ins.imm in (0x00,):
                    break
                elif k == "bcc":
                    local.append(ins.target)
                elif k == "b":
                    if ins.target in self.funcs and ins.target != fn:
                        break  # tail jump
                    a = ins.target
                    continue
                elif k in ("bx", "ret"):
                    break
                elif k == "jmpreg":
                    if ins.reg == 14:  # mov pc, lr
                        break
                    if not self.try_jumptable(fn, ins, local):
                        self.bad.setdefault(fn, "unresolved jump at %08X" % a)
                    break
                a += ins.size

    def func_extent(self, fn):
        """Return the end address (exclusive) of explored code+literals for fn."""
        end = fn
        return end

    def compute_extents(self):
        ends = {}
        for a, ins in self.insns.items():
            f = self.owner[a]
            e = a + ins.size
            if e > ends.get(f, f):
                ends[f] = e
        for l, f in self.lits.items():
            e = l + 4
            if e > ends.get(f, f):
                ends[f] = e
        return ends

    def scan_data_pointers(self, start, end):
        """Scan words in [start,end) not part of code for thumb pointers."""
        found = 0
        for off in range(start - BASE, end - BASE - 3, 4):
            a = BASE + off
            if a in self.insns or (a + 2) in self.insns:
                continue
            v = struct.unpack_from("<I", self.rom, off)[0]
            if not (v & 1):
                continue
            t = v - 1
            if t % 4 != 0:  # agbcc functions are word aligned
                continue
            if not self.in_code(t) or t in self.funcs:
                continue
            if t in self.owner:  # middle of a known function
                continue
            if t in self.lits:
                continue
            if self.plausible_func(t):
                self.ptr_refs.setdefault(t, []).append(a)
                self.add_func(t, "thumb", "dataptr")
                found += 1
        return found

    def plausible_func(self, t, limit=4000):
        r = self._plausible(t, limit)
        if t in getattr(self, "debug_addrs", ()):
            print("plausible %08X -> %s" % (t, r), file=sys.stderr)
        return r is True

    def _plausible(self, t, limit=4000):
        """Linear+branch decode from t; must reach a return without invalid insns."""
        work = [t]
        seen = set()
        steps = 0
        while work:
            a = work.pop()
            while True:
                steps += 1
                if steps > limit:
                    return "limit"
                if a in seen:
                    break
                if not self.in_code(a):
                    return "leaves code at %08X" % a
                if a in self.owner and self.owner[a] != t:
                    o = self.owner[a]
                    if PRIO[self.funcs[o][1]] <= 2:
                        break
                    return "into func %08X at %08X" % (o, a)
                ins = decode(self.rom, a)
                if ins is None:
                    return "invalid at %08X" % a
                seen.add(a)
                k = ins.kind
                if k == "bcc":
                    work.append(ins.target)
                elif k == "b":
                    a = ins.target
                    continue
                elif k in ("bx", "ret", "jmpreg"):
                    break
                elif k == "bl":
                    if not self.in_code(ins.target):
                        return "bl out of code at %08X" % a
                    if self.is_farjump(t, ins.target) or self.dead_after_bl(t, a, ins.target):
                        a = ins.target
                        continue
                elif k == "swi" and ins.imm == 0:
                    break
                a += ins.size
        return True

    def uncovered(self):
        """Return sorted list of (start, end) code ranges not covered by any function extent."""
        ends = self.compute_extents()
        entries = sorted(self.funcs)
        out = []
        for i, f in enumerate(entries):
            e = ends.get(f, f)
            nxt = entries[i + 1] if i + 1 < len(entries) else self.code_end
            if e < nxt:
                out.append((e, nxt))
        return out

    def dataptr_in_gaps(self):
        """Thumb pointers in the data region whose target lies in an uncovered gap."""
        if not hasattr(self, "_dataptrs"):
            self._dataptrs = set()
            for off in range(self.data_start - BASE, len(self.rom) - 3, 4):
                v = struct.unpack_from("<I", self.rom, off)[0]
                if v & 1 and (v - 1) % 4 == 0 and self.in_code(v - 1):
                    self._dataptrs.add(v - 1)
        gaps = self.uncovered()
        starts = [g[0] for g in gaps]
        added = 0
        for t in sorted(self._dataptrs):
            if t in self.funcs or t in self.owner or t in self.lits or t in self.blacklist:
                continue
            i = bisect.bisect_right(starts, t) - 1
            if i < 0 or not (gaps[i][0] <= t < gaps[i][1]):
                continue
            if self.plausible_func(t):
                self.add_func(t, "dataptr", "dataptr") if False else self.add_func(t, "thumb", "dataptr")
                added += 1
        return added

    def fill_gaps(self):
        """Look for unreferenced functions in gaps between known functions."""
        ends = self.compute_extents()
        entries = sorted(self.funcs)
        added = 0
        for i, f in enumerate(entries):
            e = ends.get(f, f)
            nxt = entries[i + 1] if i + 1 < len(entries) else None
            if nxt is None:
                continue
            a = (e + 3) & ~3 if e % 4 else e
            # skip padding
            while a < nxt and a + 2 <= nxt and struct.unpack_from("<H", self.rom, a - BASE)[0] == 0 and a % 4 != 0:
                a += 2
            if a >= nxt:
                continue
            # skip literal words
            while a < nxt and a in self.lits:
                a += 4
            if a >= nxt:
                continue
            if self.plausible_func(a):
                self.add_func(a, "thumb", "gap")
                added += 1
        return added


def analyze(rom, code_end, seeds, farjump_targets, blacklist=()):
    an = Analyzer(rom, BASE, code_end)
    an.blacklist = set(blacklist)
    an.farjump_targets = set(farjump_targets)
    an.funcs[0x080000C0] = ("arm", "entry")
    an.funcs[0x08000104] = ("arm", "entry")
    an.add_func(0x08000618, "thumb", "entry")
    for s in seeds:
        an.add_func(s, "thumb", "seed")
    an.run()
    for it in range(200):
        n = an.fill_gaps()
        an.run()
        if n == 0:
            n = an.dataptr_in_gaps()
            an.run()
            if n == 0:
                break
    return an


PRIO = {"entry": 5, "seed": 5, "bl": 4, "litptr": 3, "dataptr": 2, "gap": 1}


def find_contained(an):
    """Entries that lie inside the control flow of another function."""
    lo = {}
    hi = {}
    for a, ins in an.insns.items():
        f = an.owner[a]
        if a < lo.get(f, a + 1):
            lo[f] = a
        if a + ins.size > hi.get(f, 0):
            hi[f] = a + ins.size
    entries = sorted(an.funcs)
    out = set()
    for f, g in an.intrusions:
        if f not in an.funcs or g not in an.funcs:
            continue
        pf = PRIO[an.funcs[f][1]]
        pg = PRIO[an.funcs[g][1]]
        if pg <= 2 and pg <= pf:
            out.add(g)
        elif pf <= 2:
            out.add(f)
    for f in entries:
        if f not in hi:
            continue
        pa = PRIO[an.funcs[f][1]]
        i = bisect.bisect_right(entries, f)
        while i < len(entries) and entries[i] < hi[f]:
            b = entries[i]
            pb = PRIO[an.funcs[b][1]]
            if pb <= 2 and pb <= pa:
                out.add(b)
            elif pa <= 2 and pb >= 3:
                out.add(f)
            i += 1
    return out


def find_aligned_farjumps(an):
    """bl targets only called from one function and lying inside it."""
    ends = an.compute_extents()
    new = set()
    for t, (mode, src) in an.funcs.items():
        if src != "bl":
            continue
        callers = an.bl_refs.get(t, set())
        if len(callers) != 1:
            continue
        f = next(iter(callers))
        if f < t < ends.get(f, f):
            new.add(t)
    return new


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("rom")
    ap.add_argument("--code-end", type=lambda x: int(x, 0), default=0x080B9704)
    ap.add_argument("-o", "--output", default="-")
    ap.add_argument("--seed", action="append", default=[], help="extra thumb function addresses")
    ap.add_argument("--config", help="write function config file")
    ap.add_argument("--debug", action="append", default=[], help="debug plausibility of address")
    args = ap.parse_args()
    Analyzer.debug_addrs = set(int(x, 0) for x in args.debug)

    rom = open(args.rom, "rb").read()
    seeds = [int(x, 0) for x in args.seed]
    fj = set()
    bl = set()
    while True:
        an = analyze(rom, args.code_end, seeds, fj, bl)
        new = find_aligned_farjumps(an) - fj
        if new:
            # far jumps change function extents: restart without containment blacklist
            print("%d funcs, %d new aligned far jumps" % (len(an.funcs), len(new)), file=sys.stderr)
            fj |= new
            bl = set()
            continue
        newbl = set()
        for f, (mode, src) in an.funcs.items():
            if src == "dataptr" and (f in an.lits or (f - 2) in an.lits or
                                     an.bad.get(f, "").startswith("flow into literal")):
                newbl.add(f)
        newbl |= find_contained(an)
        newbl -= bl
        print("%d funcs, %d bad, %d bad entries" % (len(an.funcs), len(an.bad), len(newbl)), file=sys.stderr)
        if not newbl:
            break
        bl |= newbl

    if args.config:
        with open(args.config, "w") as c:
            c.write("# Function list for Shining Soul II (generated by analyze.py, then hand edited)\n")
            c.write("# <thumb|arm> <address> [name]   /   farjump <address>\n")
            for f in sorted(an.funcs):
                c.write("%s 0x%08X\n" % (an.funcs[f][0], f))
            for t in sorted(fj):
                c.write("farjump 0x%08X\n" % t)
    ends = an.compute_extents()
    out = sys.stdout if args.output == "-" else open(args.output, "w")
    for f in sorted(an.funcs):
        mode, src = an.funcs[f]
        size = ends.get(f, f) - f
        flag = an.bad.get(f, "")
        out.write("%s 0x%08X 0x%X %s %s\n" % (mode, f, size, src, ("# " + flag) if flag else ""))


if __name__ == "__main__":
    main()
