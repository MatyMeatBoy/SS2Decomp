#!/usr/bin/env python3
"""Helpers for decompiling one function at a time.

  decomp.py m2c FUNC            print an m2c draft for FUNC
  decomp.py check FUNC FILE.c   compile FILE.c (must define FUNC) with agbcc in
                                isolation and compare its object code with the
                                original assembly (bytes + relocations)
  decomp.py auto FUNC...        try the m2c draft directly; on a match, put it in
                                src/<module>.c and delete the .s file
  decomp.py apply FUNC FILE.c   put a matching C file into src/<module>.c

The comparison is done on relocatable objects, like objdiff, so calls and
references to other symbols are compared by name and a function can be checked
without rebuilding the ROM.
"""

import argparse
import difflib
import glob
import os
import re
import subprocess
import sys
import tempfile

from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
AGBCC = os.path.join(ROOT, "tools/agbcc/bin/agbcc")
M2C = os.environ.get("M2C", os.path.join(ROOT, "tools/m2c/m2c.py"))
CC1FLAGS = ["-mthumb-interwork", "-Wimplicit", "-Wparentheses", "-O2", "-fhex-asm"]
CPPFLAGS = ["-nostdinc", "-I", os.path.join(ROOT, "tools/agbcc/include"),
            "-iquote", os.path.join(ROOT, "include"), "-undef"]


def run(cmd, **kw):
    return subprocess.run(cmd, capture_output=True, text=True, cwd=ROOT, **kw)


def find_asm(func):
    hits = glob.glob(os.path.join(ROOT, "asm/nonmatchings/*/%s.s" % func))
    if not hits:
        return None, None
    path = hits[0]
    return path, os.path.basename(os.path.dirname(path))


def assemble_orig(func, out_o):
    path, mod = find_asm(func)
    if path is None:
        raise SystemExit("no asm for %s" % func)
    rel = os.path.relpath(path, ROOT)
    src = out_o[:-2] + ".s"
    with open(src, "w") as fh:
        fh.write('\t.include "asm/macros.inc"\n\t.syntax unified\n\t.text\n\t.include "%s"\n' % rel)
    r = run(["arm-none-eabi-as", "-mcpu=arm7tdmi", "-I", ROOT, "-o", out_o, src])
    if r.returncode:
        raise SystemExit(r.stderr)


def compile_c(cfile, out_o):
    i = out_o[:-2] + ".i"
    s = out_o[:-2] + ".s"
    r = run(["arm-none-eabi-cpp"] + CPPFLAGS + [cfile, "-o", i])
    if r.returncode:
        return r.stderr
    r = run([AGBCC] + CC1FLAGS + ["-o", s, i])
    if r.returncode:
        return r.stderr or r.stdout
    with open(s, "a") as fh:
        fh.write("\t.text\n\t.align 2, 0\n")
    r = run(["arm-none-eabi-as", "-mcpu=arm7tdmi", "-I", ROOT, "-o", out_o, s])
    if r.returncode:
        return r.stderr
    return None


def func_code(obj, func):
    """Return (bytes, relocs) for func in obj. relocs: {offset: (type, symbol)}."""
    with open(obj, "rb") as fh:
        elf = ELFFile(fh)
        symtab = elf.get_section_by_name(".symtab")
        sym = None
        for s in symtab.iter_symbols():
            if s.name == func and s["st_info"]["type"] == "STT_FUNC":
                sym = s
                break
        if sym is None:
            return None, None
        sec = elf.get_section(sym["st_shndx"])
        start = sym["st_value"] & ~1
        size = sym["st_size"]
        data = sec.data()[start:start + size]
        relocs = {}
        for rs in elf.iter_sections():
            if isinstance(rs, RelocationSection) and elf.get_section(rs["sh_info"]).name == sec.name:
                st = elf.get_section(rs["sh_link"])
                for r in rs.iter_relocations():
                    off = r["r_offset"]
                    if start <= off < start + size:
                        s2 = st.get_symbol(r["r_info_sym"])
                        name = s2.name
                        if s2["st_info"]["type"] == "STT_SECTION":
                            name = "<section>"
                        relocs[off - start] = (r["r_info_type"], name)
        return data, relocs


def disasm(obj, func):
    r = run(["arm-none-eabi-objdump", "-d", "-r", "--no-show-raw-insn", "--disassemble=%s" % func, obj])
    lines = []
    for l in r.stdout.splitlines():
        m = re.match(r"\s*([0-9a-f]+):\s*(.*)", l)
        if m:
            txt = re.sub(r"\s+", " ", m.group(2)).strip()
            txt = re.sub(r"@ \(.*\)", "", txt).strip()
            txt = re.sub(r"\s*<[^>]*>", "", txt)
            lines.append(txt)
    return lines


def compare(orig_o, cand_o, func, verbose=True):
    a, ra = func_code(orig_o, func)
    b, rb = func_code(cand_o, func)
    if b is None:
        if verbose:
            print("candidate does not define %s" % func)
        return False
    ok = a == b and ra == rb
    if not ok and verbose:
        print("size: orig %d, candidate %d" % (len(a), len(b)))
        da = disasm(orig_o, func)
        db = disasm(cand_o, func)
        for l in difflib.unified_diff(da, db, "original", "candidate", lineterm="", n=3):
            print(l)
    return ok


def m2c_input(func, out):
    path, mod = find_asm(func)
    text = open(path).read()
    text = re.sub(r"^\tthumb_func_start (\w+)", r"\t.align 2, 0\n\t.globl \1\n\t.thumb_func", text, flags=re.M)
    text = re.sub(r"^\tnon_word_aligned_thumb_func_start (\w+)", r"\t.globl \1\n\t.thumb_func", text, flags=re.M)
    text = re.sub(r"^\tthumb_func_end .*$", "", text, flags=re.M)
    text = re.sub(r"\.inst\.n 0x[0-9a-f]+ @ ", "", text)
    with open(out, "w") as fh:
        fh.write(".syntax unified\n.text\n" + text)


def m2c(func, extra=()):
    with tempfile.TemporaryDirectory() as td:
        s = os.path.join(td, func + ".s")
        m2c_input(func, s)
        ctx = os.path.join(ROOT, "include/m2c_context.h")
        cmd = [sys.executable, M2C, "--target", "gba", "--no-cache"]
        if os.path.exists(ctx):
            cmd += ["--context", ctx]
        r = run(cmd + list(extra) + [s])
        return r.stdout + r.stderr


def module_of(func):
    return find_asm(func)[1]


def apply(func, cfile):
    """Insert the C of cfile (everything after the include line) into src/<module>.c."""
    path, mod = find_asm(func)
    src = os.path.join(ROOT, "src/%s.c" % mod)
    code = open(cfile).read()
    code = re.sub(r'^#include "global.h"\n', "", code, flags=re.M).strip("\n")
    text = open(src).read()
    stub = 'INCLUDE_ASM("asm/nonmatchings/%s", %s);' % (mod, func)
    if stub not in text:
        raise SystemExit("stub for %s not found in %s" % (func, src))
    text = text.replace(stub, code)
    open(src, "w").write(text)
    os.remove(path)
    print("applied %s -> src/%s.c" % (func, mod))


def check(func, cfile, verbose=True):
    with tempfile.TemporaryDirectory() as td:
        orig = os.path.join(td, "orig.o")
        cand = os.path.join(td, "cand.o")
        assemble_orig(func, orig)
        err = compile_c(cfile, cand)
        if err:
            if verbose:
                print(err)
            return False
        return compare(orig, cand, func, verbose)


def m2c_to_c(out):
    """Clean m2c output into a compilable C file."""
    out = re.sub(r"/\*.*?\*/", "", out, flags=re.S)
    return '#include "global.h"\n' + out


def main():
    ap = argparse.ArgumentParser()
    sub = ap.add_subparsers(dest="cmd")
    p = sub.add_parser("m2c")
    p.add_argument("func")
    p = sub.add_parser("check")
    p.add_argument("func")
    p.add_argument("cfile")
    p = sub.add_parser("apply")
    p.add_argument("func")
    p.add_argument("cfile")
    p = sub.add_parser("auto")
    p.add_argument("funcs", nargs="+")
    p.add_argument("--keep", help="directory to keep drafts of failed functions")
    args = ap.parse_args()

    if args.cmd == "m2c":
        print(m2c(args.func))
    elif args.cmd == "check":
        ok = check(args.func, args.cfile)
        print("MATCH" if ok else "NO MATCH")
        sys.exit(0 if ok else 1)
    elif args.cmd == "apply":
        apply(args.func, args.cfile)
    elif args.cmd == "auto":
        good = 0
        for func in args.funcs:
            if find_asm(func)[0] is None:
                continue
            out = m2c(func)
            with tempfile.TemporaryDirectory() as td:
                c = os.path.join(td, func + ".c")
                open(c, "w").write(m2c_to_c(out))
                ok = check(func, c, verbose=False)
                if ok:
                    apply(func, c)
                    good += 1
                elif args.keep:
                    os.makedirs(args.keep, exist_ok=True)
                    open(os.path.join(args.keep, func + ".c"), "w").write(m2c_to_c(out))
            print("%-16s %s" % (func, "MATCH" if ok else "-"))
        print("%d/%d matched" % (good, len(args.funcs)))


if __name__ == "__main__":
    main()
