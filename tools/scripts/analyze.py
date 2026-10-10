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

    def word(self, addr):
        return struct.unpack_from("<I", self.rom, addr - BASE)[0]

    def in_code(self, addr):
        return self.code_start <= addr < self.code_end

    def add_func(self, addr, mode, source):
        if addr in self.funcs:
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
                    if self.in_code(ins.target):
                        self.add_func(ins.target, "thumb", "bl")
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
        """Linear+branch decode from t; must reach a return without invalid insns."""
        work = [t]
        seen = set()
        steps = 0
        while work:
            a = work.pop()
            while True:
                steps += 1
                if steps > limit:
                    return False
                if a in seen:
                    break
                if not self.in_code(a):
                    return False
                if a in self.owner and self.owner[a] != t:
                    return False
                ins = decode(self.rom, a)
                if ins is None:
                    return False
                seen.add(a)
                k = ins.kind
                if k == "bcc":
                    work.append(ins.target)
                elif k == "b":
                    a = ins.target
                    continue
                elif k in ("bx", "ret", "jmpreg"):
                    break
                elif k == "bl" and not self.in_code(ins.target):
                    return False
                a += ins.size
        return True

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


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("rom")
    ap.add_argument("--code-end", type=lambda x: int(x, 0), default=0x080BA000)
    ap.add_argument("-o", "--output", default="-")
    ap.add_argument("--seed", action="append", default=[], help="extra thumb function addresses")
    args = ap.parse_args()

    rom = open(args.rom, "rb").read()
    an = Analyzer(rom, BASE, args.code_end)
    an.funcs[0x080000C0] = ("arm", "entry")
    an.funcs[0x08000104] = ("arm", "entry")
    an.add_func(0x08000618, "thumb", "entry")
    for s in args.seed:
        an.add_func(int(s, 0), "thumb", "seed")
    an.run()
    print("pass0: %d funcs" % len(an.funcs), file=sys.stderr)
    for it in range(20):
        n1 = an.scan_data_pointers(BASE, BASE + len(rom))
        an.run()
        n2 = an.fill_gaps()
        an.run()
        print("pass%d: +%d dataptr +%d gap -> %d funcs" % (it + 1, n1, n2, len(an.funcs)), file=sys.stderr)
        if n1 == 0 and n2 == 0:
            break

    ends = an.compute_extents()
    out = sys.stdout if args.output == "-" else open(args.output, "w")
    for f in sorted(an.funcs):
        mode, src = an.funcs[f]
        size = ends.get(f, f) - f
        flag = an.bad.get(f, "")
        out.write("%s 0x%08X 0x%X %s %s\n" % (mode, f, size, src, ("# " + flag) if flag else ""))
    print("bad: %d" % len(an.bad), file=sys.stderr)


if __name__ == "__main__":
    main()
