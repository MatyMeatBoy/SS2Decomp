#!/usr/bin/env python3
"""Generate the matching disassembly of Shining Soul II.

Reads tools/config/functions.cfg (function list) and tools/config/modules.cfg
(module boundaries) and writes:

    asm/rom_header.s, asm/crt0.s           hand-written start code
    asm/nonmatchings/<module>/<func>.s     one file per THUMB function
    src/<module>.c                         INCLUDE_ASM stubs, in ROM order
    data/rodata.s                          ROM data (incbin from baserom.gba)
    ld_script.ld, sym_ram.ld               linker script and RAM symbols

Only data that is not code is taken from baserom.gba with .incbin, so the
repository does not contain the game's assets.
"""

import argparse
import os
import struct
import subprocess
import sys
import tempfile

sys.path.insert(0, os.path.dirname(__file__))
from analyze import Analyzer, BASE  # noqa: E402
from thumbfmt import format_insn  # noqa: E402

CODE_END = 0x080B9704
ROM_END = 0x09000000


def load_cfg(path):
    funcs = {}
    farjumps = set()
    for line in open(path):
        line = line.split("#")[0].strip()
        if not line:
            continue
        p = line.split()
        if p[0] == "farjump":
            farjumps.add(int(p[1], 0))
            continue
        addr = int(p[1], 0)
        name = p[2] if len(p) > 2 else None
        funcs[addr] = (p[0], name)
    return funcs, farjumps


def load_modules(path):
    mods = []
    for line in open(path):
        line = line.split("#")[0].strip()
        if not line:
            continue
        p = line.split()
        kind = p[2] if len(p) > 2 else "c"
        mods.append((int(p[0], 0), p[1], kind))
    mods.sort()
    return mods


class Gen:
    def __init__(self, rom, funcs, farjumps):
        self.rom = rom
        self.funcs = funcs
        an = Analyzer(rom, BASE, CODE_END)
        an.farjump_targets = set(farjumps)
        for a, (mode, name) in funcs.items():
            an.funcs[a] = (mode, "cfg")
            if mode == "thumb":
                an.queue.append(a)
        an.run()
        extra = set(an.funcs) - set(funcs)
        if extra:
            print("warning: %d functions found during generation not in cfg: %s" % (
                len(extra), " ".join("%08X" % x for x in sorted(extra)[:20])), file=sys.stderr)
            for x in extra:
                funcs[x] = (an.funcs[x][0], None)
        self.an = an
        self.entries = sorted(funcs)
        # labels
        self.labels = set()
        for a, ins in an.insns.items():
            if ins.kind in ("b", "bcc"):
                self.labels.add(ins.target)
            elif ins.kind == "bl" and a in an.farjumps:
                self.labels.add(ins.target)
            elif ins.kind == "adr":
                self.labels.add(ins.lit)
        for t, (entries, f) in an.jumptables.items():
            self.labels.add(t)
            for e in entries:
                self.labels.add(e)
        self.data_refs = set()
        self.ram_refs = set()
        self.global_labels = set()
        self.owner_of = {}

    def word(self, a):
        return struct.unpack_from("<I", self.rom, a - BASE)[0]

    def half(self, a):
        return struct.unpack_from("<H", self.rom, a - BASE)[0]

    def fname(self, a):
        mode, name = self.funcs[a]
        if name:
            return name
        return ("sub_%08X" if mode == "thumb" else "arm_%08X") % a

    def lname(self, a):
        if a in self.funcs:
            return self.fname(a)
        return "_%08X" % a

    def sym(self, v):
        """Symbolic expression for a 32 bit literal value."""
        if v & 1 and (v - 1) in self.funcs and self.funcs[v - 1][0] == "thumb":
            return self.fname(v - 1)
        if v in self.funcs and self.funcs[v][0] == "arm":
            return self.fname(v)
        if BASE <= v < CODE_END and v in self.labels and v not in self.funcs:
            return self.lname(v)
        if CODE_END <= v < ROM_END:
            self.data_refs.add(v)
            return "gUnk_%08X" % v
        if 0x02000000 <= v < 0x02040000 or 0x03000000 <= v < 0x03008000:
            self.ram_refs.add(v)
            return "gUnk_%08X" % v
        return "0x%08X" % v

    def label_cb(self, func):
        def cb(a, kind):
            if kind == "lit":
                return "_%08X" % a
            n = self.lname(a)
            if a not in self.funcs:
                # local label: is it in another function?
                o = self.region_of(a)
                if o != func:
                    self.global_labels.add(a)
            return n
        return cb

    def region_of(self, a):
        import bisect
        i = bisect.bisect_right(self.entries, a) - 1
        return self.entries[i] if i >= 0 else None

    def gen_thumb_func(self, f, end, aligned):
        """Return list of lines for the function region [f, end)."""
        an = self.an
        name = self.fname(f)
        out = []
        out.append("\t%s %s" % ("thumb_func_start" if aligned else "non_word_aligned_thumb_func_start", name))
        out.append("%s: @ 0x%08X" % (name, f))
        a = f
        cb = self.label_cb(f)
        # trailing alignment padding is produced by the next function's .align
        stop = end
        if end % 4 == 0 and end - 2 >= f and (end - 2) not in an.insns and (end - 2) not in an.lits \
                and (end - 4) not in an.lits and self.half(end - 2) == 0 and self.next_aligned(end):
            stop = end - 2
        while a < stop:
            if a != f and (a in self.labels or a in self.funcs):
                lbl = self.lname(a)
                if a in self.global_labels:
                    out.append("\t.global %s" % lbl)
                out.append("%s:" % lbl)
            if a in an.insns:
                ins = an.insns[a]
                h = self.half(a)
                h2 = self.half(a + 2) if ins.size == 4 else None
                txt = format_insn(h, a, cb, h2)
                if txt is None or a + ins.size > end:
                    out.append("\t.2byte 0x%04X" % h)
                    a += 2
                    continue
                out.append("\t" + txt)
                a += ins.size
                continue
            if a in an.lits and a % 4 == 0 and a + 4 <= stop:
                v = self.word(a)
                out.append("_%08X: .4byte %s" % (a, self.sym(v)) if a not in self.labels
                           else "\t.4byte %s" % self.sym(v))
                a += 4
                continue
            # unknown data
            if a % 4 == 0 and a + 4 <= stop and not any(x in an.insns or x in self.labels or x in self.funcs
                                                         for x in (a + 2,)):
                v = self.word(a)
                out.append("\t.4byte %s" % self.sym(v) if (v & 1 and (v - 1) in self.funcs) else
                           "\t.4byte 0x%08X" % v)
                a += 4
                continue
            out.append("\t.2byte 0x%04X" % self.half(a))
            a += 2
        out.append("\tthumb_func_end %s" % name)
        return out

    def next_aligned(self, a):
        return a % 4 == 0


def disasm_arm(rom, start, end):
    """Disassemble ARM code with capstone, verifying each insn with gas."""
    import capstone
    md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM)
    code = rom[start - BASE:end - BASE]
    lines = []
    for i in range(0, len(code), 4):
        w = struct.unpack_from("<I", code, i)[0]
        insn = list(md.disasm(code[i:i + 4], start + i))
        txt = None
        if insn:
            txt = "%s %s" % (insn[0].mnemonic, insn[0].op_str)
        lines.append((start + i, w, txt))
    # verify all in one go
    with tempfile.TemporaryDirectory() as td:
        src = os.path.join(td, "a.s")
        good = []
        for a, w, txt in lines:
            ok = False
            if txt and "pc" not in txt.split(",")[-1] and "[pc" not in txt and not txt.startswith("b"):
                with open(src, "w") as fh:
                    fh.write(".syntax unified\n.arm\n%s\n" % txt)
                r = subprocess.run(["arm-none-eabi-as", "-mcpu=arm7tdmi", src, "-o", src + ".o"],
                                   capture_output=True)
                if r.returncode == 0:
                    subprocess.run(["arm-none-eabi-objcopy", "-O", "binary", src + ".o", src + ".bin"])
                    b = open(src + ".bin", "rb").read()
                    ok = len(b) == 4 and struct.unpack("<I", b)[0] == w
            good.append((a, w, txt if ok else None))
    return good


def write(path, text):
    os.makedirs(os.path.dirname(path) or ".", exist_ok=True)
    with open(path, "w") as fh:
        fh.write(text)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("rom")
    ap.add_argument("--root", default=".")
    ap.add_argument("--force", action="store_true", help="overwrite existing src/*.c files")
    args = ap.parse_args()
    root = args.root
    rom = open(args.rom, "rb").read()
    funcs, farjumps = load_cfg(os.path.join(root, "tools/config/functions.cfg"))
    mods = load_modules(os.path.join(root, "tools/config/modules.cfg"))
    g = Gen(rom, funcs, farjumps)

    # asm/crt0.s (ARM start up code) is hand written.

    # ---- THUMB functions, grouped in modules
    thumb = [a for a in g.entries if a >= 0x0800023C and funcs[a][0] == "thumb"]
    import bisect
    starts = [m[0] for m in mods]
    per_mod = {}
    for i, f in enumerate(thumb):
        end = thumb[i + 1] if i + 1 < len(thumb) else CODE_END
        mi = bisect.bisect_right(starts, f) - 1
        per_mod.setdefault(mi, []).append((f, end))

    # first pass to collect global labels (cross function references)
    bodies = {}
    for _ in range(2):
        for mi, fl in per_mod.items():
            for f, end in fl:
                bodies[f] = g.gen_thumb_func(f, end, f % 4 == 0)

    order = []
    for mi in sorted(per_mod):
        maddr, mname, kind = mods[mi]
        order.append((mname, kind))
        stubs = []
        for f, end in per_mod[mi]:
            fn = g.fname(f)
            rel = "asm/nonmatchings/%s/%s.s" % (mname, fn)
            write(os.path.join(root, rel), "\n".join(bodies[f]) + "\n")
            stubs.append((fn, rel))
        if kind == "c":
            cpath = os.path.join(root, "src/%s.c" % mname)
            if os.path.exists(cpath) and not args.force:
                continue
            c = ['#include "global.h"', ""]
            for fn, rel in stubs:
                c.append('INCLUDE_ASM("asm/nonmatchings/%s", %s);' % (mname, fn))
            write(os.path.join(root, "src/%s.c" % mname), "\n".join(c) + "\n")
        else:
            s = ['\t.include "asm/macros.inc"', "", "\t.syntax unified", "\t.text", ""]
            for fn, rel in stubs:
                s.append('\t.include "%s"' % rel)
            s.append("\t.align 2, 0 @ Don't pad with nop")
            write(os.path.join(root, "asm/%s.s" % mname), "\n".join(s) + "\n")

    # ---- ROM data
    refs = sorted(r for r in g.data_refs if CODE_END <= r < BASE + len(rom))
    d = ['\t.include "asm/macros.inc"', "", "\t.section .rodata", ""]
    cur = CODE_END
    for r in refs + [BASE + len(rom)]:
        if r > cur:
            d.append('\t.incbin "baserom.gba", 0x%X, 0x%X' % (cur - BASE, r - cur))
        if r < BASE + len(rom):
            d.append("\t.global gUnk_%08X" % r)
            d.append("gUnk_%08X:" % r)
        cur = r
    write(os.path.join(root, "data/rodata.s"), "\n".join(d) + "\n")

    # ---- RAM symbols
    ram = ["/* RAM symbols referenced by code (generated by gen_asm.py) */"]
    for r in sorted(g.ram_refs):
        ram.append("gUnk_%08X = 0x%08X;" % (r, r))
    write(os.path.join(root, "sym_ram.ld"), "\n".join(ram) + "\n")

    # ---- object order for the linker script
    objs = ["build/asm/rom_header.o", "build/asm/crt0.o"]
    for mname, kind in order:
        objs.append("build/%s/%s.o" % ("src" if kind == "c" else "asm", mname))
    tmpl = open(os.path.join(root, "tools/config/ld_script.ld.in")).read()
    text = "\n".join("        %s(.text);" % o for o in objs)
    write(os.path.join(root, "ld_script.ld"), tmpl.replace("        /* LINK_ORDER_TEXT */", text))
    print("functions: %d, data labels: %d, ram symbols: %d" % (len(thumb), len(refs), len(g.ram_refs)),
          file=sys.stderr)


if __name__ == "__main__":
    main()
