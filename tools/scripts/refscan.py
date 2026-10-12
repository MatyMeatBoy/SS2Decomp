#!/usr/bin/env python3
"""Find ROM functions matched byte-for-byte (relocs masked) by C from a reference decomp.

usage: refscan.py REPO_DIR [-I incdir ...] [--cc1 PATH] [--flags "..."] [--sub DIR]
Index of undecompiled originals is cached in $TMPDIR/refscan_idx.pkl (delete to rebuild).
Each reference .c is preprocessed with the host cpp, compiled with agbcc; every
defined function is compared to every original (and size-near misses are listed).
"""
import argparse, glob, os, pickle, subprocess, sys, tempfile
sys.path.insert(0, os.path.dirname(__file__))
import decomp, fmatch
from elftools.elf.elffile import ELFFile

IDX = os.path.join(tempfile.gettempdir(), "refscan_idx.pkl")


def build_index():
    if os.path.exists(IDX):
        return pickle.load(open(IDX, "rb"))
    idx = {}
    mods = [l.split()[1] for l in open(os.path.join(decomp.ROOT, "tools/config/modules.cfg")) if l.strip() and not l.startswith("#")]
    with tempfile.TemporaryDirectory() as td:
        for m in mods:
            for n in decomp.module_functions(m):
                o = os.path.join(td, n + ".o")
                try:
                    on = decomp.assemble_orig(n, o)
                    b = fmatch.masked(o, on)
                except BaseException:
                    continue
                if b:
                    idx[n] = b
    pickle.dump(idx, open(IDX, "wb"))
    return idx


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("repo")
    ap.add_argument("-I", action="append", default=[])
    ap.add_argument("--cc1", default=os.path.join(decomp.ROOT, "tools/agbcc/bin/agbcc"))
    ap.add_argument("--flags", default="-O2 -mthumb-interwork -fhex-asm -fprologue-bugfix")
    ap.add_argument("--sub", default="")
    ap.add_argument("--min", type=int, default=12, help="min function bytes")
    a = ap.parse_args()
    idx = build_index()
    print("index:", len(idx), "functions", flush=True)
    files = sorted(glob.glob(os.path.join(a.repo, a.sub, "**/*.c"), recursive=True))
    inc = sum([["-I", i] for i in a.I], [])
    hits = {}
    for f in files:
        with tempfile.TemporaryDirectory() as td:
            pre = os.path.join(td, "p.c")
            r = subprocess.run(["cc", "-E", "-P", "-nostdinc", "-undef", "-D__GNUC__"] + inc + [f], capture_output=True, text=True)
            if r.returncode:
                continue
            open(pre, "w").write(r.stdout)
            obj = os.path.join(td, "c.o")
            err = decomp.compile_c(pre, obj, a.cc1, a.flags.split())
            if err or not os.path.exists(obj):
                continue
            try:
                with open(obj, "rb") as fh:
                    elf = ELFFile(fh)
                    names = [s.name for s in elf.get_section_by_name(".symtab").iter_symbols()
                             if s["st_info"]["type"] == "STT_FUNC" and s["st_shndx"] != "SHN_UNDEF"]
                for cn in names:
                    cb = fmatch.masked(obj, cn)
                    if not cb or len(cb) < a.min:
                        continue
                    ex = [n for n, b in idx.items() if b == cb]
                    if ex:
                        print("%s:%s = %s (%d bytes)" % (os.path.relpath(f, a.repo), cn, " ".join(ex), len(cb)), flush=True)
                        hits[cn] = ex
            except Exception as e:
                print("ERR", f, e)
    print("total hits:", len(hits))


if __name__ == "__main__":
    main()
