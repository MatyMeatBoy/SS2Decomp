#!/usr/bin/env python3
"""Pair functions of a reference C file with the functions of a module.

Compiles FILE.c, then compares every function it defines with every original
function of MODULE, ignoring the bytes covered by relocations (so names do not
need to be known yet). Prints exact pairs and, for the rest, the closest size.

usage: fmatch.py MODULE FILE.c [--cc1 PATH] [--flags "-O1 ..."]
"""

import argparse
import os
import sys
import tempfile

sys.path.insert(0, os.path.dirname(__file__))
import decomp  # noqa: E402
from elftools.elf.elffile import ELFFile  # noqa: E402


def masked(obj, name):
    data, relocs = decomp.func_code(obj, name)
    if data is None:
        return None
    data = bytearray(data)
    for off in relocs:
        data[off:off + 4] = b"\0\0\0\0"
    # BL pairs to local targets are resolved: mask all BL instructions too
    i = 0
    while i + 4 <= len(data):
        h = data[i] | (data[i + 1] << 8)
        h2 = data[i + 2] | (data[i + 3] << 8)
        if h >> 11 == 0x1E and h2 >> 11 == 0x1F:
            data[i:i + 4] = b"\0\0\0\0"
            i += 4
        else:
            i += 2
    return bytes(data)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("module")
    ap.add_argument("cfile")
    ap.add_argument("--cc1")
    ap.add_argument("--flags")
    args = ap.parse_args()
    cc1 = args.cc1 or decomp.module_cc1(args.module)
    flags = args.flags.split() if args.flags else decomp.module_flags(args.module)
    with tempfile.TemporaryDirectory() as td:
        cand = os.path.join(td, "cand.o")
        err = decomp.compile_c(args.cfile, cand, cc1, flags)
        if err:
            print(err)
            return
        with open(cand, "rb") as fh:
            elf = ELFFile(fh)
            cnames = [s.name for s in elf.get_section_by_name(".symtab").iter_symbols()
                      if s["st_info"]["type"] == "STT_FUNC" and s["st_shndx"] != "SHN_UNDEF"]
        cbytes = {n: masked(cand, n) for n in cnames}
        orig = {}
        if args.module == "ALL":
            mods = [l.split()[1] for l in open(os.path.join(decomp.ROOT, "tools/config/modules.cfg")) if l.strip() and not l.startswith("#")]
        else:
            mods = [args.module]
        names = [n for m in mods for n in decomp.module_functions(m)]
        for n in names:
            o = os.path.join(td, "o_%s.o" % n)
            try:
                on = decomp.assemble_orig(n, o)
            except SystemExit:
                continue
            orig[n] = masked(o, on)
        used = set()
        symmap = {}
        for cn in cnames:
            cb = cbytes[cn]
            exact = [on for on, ob in orig.items() if ob == cb]
            if exact:
                print("%-36s = %s" % (cn, " ".join(exact)))
                used.update(exact)
                if len(exact) == 1:
                    o = os.path.join(td, "o_%s.o" % exact[0])
                    on = decomp.assemble_orig(exact[0], o)
                    _, ra = decomp.func_code(o, on)
                    _, rb = decomp.func_code(cand, cn)
                    for off, (t, nb) in rb.items():
                        if off in ra and ra[off][1] != nb and not nb.startswith("<"):
                            symmap.setdefault(nb, set()).add(ra[off][1])
            else:
                near = sorted(orig.items(), key=lambda kv: abs(len(kv[1]) - len(cb)))[:3]
                print("%-36s ? size %d, nearest: %s" % (cn, len(cb), ", ".join(
                    "%s(%d)" % (k, len(v)) for k, v in near)))
        print("unpaired originals:", " ".join(n for n in orig if n not in used))
        print("symbol map (candidate -> original):")
        for k, v in sorted(symmap.items()):
            print("  %-32s %s" % (k, " ".join(sorted(v))))


if __name__ == "__main__":
    main()
