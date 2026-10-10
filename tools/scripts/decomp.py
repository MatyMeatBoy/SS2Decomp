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
import struct
import tempfile

from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
AGBCC = os.path.join(ROOT, "tools/agbcc/bin/agbcc")
M2C = os.environ.get("M2C", os.path.join(ROOT, "tools/m2c/m2c.py"))
VALID_SYNTAX = False
CC1FLAGS = ["-mthumb-interwork", "-Wimplicit", "-Wparentheses", "-O2", "-fhex-asm"]
CPPFLAGS = ["-nostdinc", "-I", os.path.join(ROOT, "tools/agbcc/include"),
            "-iquote", os.environ.get("DECOMP_INC", os.path.join(ROOT, "include")), "-undef"]


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


_SYMS = None


def symbol_values():
    """name -> address, from the last good build (ref.syms) or the current ELF."""
    global _SYMS
    if _SYMS is not None:
        return _SYMS
    _SYMS = {}
    for path in (os.path.join(ROOT, "build/ref.syms"),):
        if os.path.exists(path):
            for line in open(path):
                p = line.split()
                if len(p) == 2:
                    _SYMS[p[1]] = int(p[0], 16)
    return _SYMS


def resolve(name):
    syms = symbol_values()
    if name in syms:
        return syms[name] & ~1 if name.startswith("sub_") else syms[name]
    m = re.match(r"(?:gUnk|sub|arm)_([0-9A-F]{8})$", name)
    if m:
        return int(m.group(1), 16)
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


def normalized(obj, func):
    """Bytes with relocated fields replaced by their resolved target."""
    data, relocs = func_code(obj, func)
    if data is None:
        return None
    data = bytearray(data)
    items = []
    for off, (rtype, name) in sorted(relocs.items()):
        val = resolve(name) if name != "<section>" else None
        if rtype == 2:  # R_ARM_ABS32
            addend = struct.unpack_from("<I", data, off)[0]
            if val is not None:
                v = (val + addend) & 0xFFFFFFFF
                if name.startswith("sub_") and val is not None:
                    v |= 1
                struct.pack_into("<I", data, off, v)
            else:
                items.append((off, rtype, name, addend))
        else:
            # calls / branches: keep target identity, blank the encoded offset
            items.append((off, rtype, val if val is not None else name))
            data[off:off + 4] = b"\0\0\0\0"
    return bytes(data), items


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
        elif re.match(r"\s*[0-9a-f]+: R_ARM", l):
            lines.append(re.sub(r"^\s*[0-9a-f]+:\s*", "", l).strip())
    # literal words with a relocation are shown as ".word 0" + reloc: keep the reloc only
    out = []
    for i, l in enumerate(lines):
        if l.startswith(".word 0x00000000") and i + 1 < len(lines) and lines[i + 1].startswith("R_ARM"):
            continue
        out.append(l)
    return out


def compare(orig_o, cand_o, func, verbose=True):
    a = normalized(orig_o, func)
    b = normalized(cand_o, func)
    if b is None:
        if verbose:
            print("candidate does not define %s" % func)
        return False
    ok = a == b
    a, b = a[0], b[0]
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
        ctx = os.path.join(td, "ctx.h")
        with open(ctx, "w") as fh:
            for h in ("include/m2c_context.h", "include/variables.h", "include/functions.h"):
                fh.write(re.sub(r"^#.*$", "", open(os.path.join(ROOT, h)).read(), flags=re.M) + "\n")
            # Return type hints from the agbcc epilogue: "pop {r1}; bx r1" keeps
            # r0 alive (value returned), "pop {r0}; bx r0" clobbers it (void).
            asm = open(find_asm(func)[0]).read()
            known = func in header_names(os.path.join(ROOT, "include/functions.h"))
            if not known and re.search(r"pop \{r[1-3]\}\n\tbx r[1-3]", asm):
                fh.write("s32 %s();\n" % func)
        cmd = [sys.executable, M2C, "--target", "gba", "--no-cache", "--context", ctx]
        if VALID_SYNTAX:
            cmd.append("--valid-syntax")
        asm = open(find_asm(func)[0]).read()
        if re.search(r"pop \{r0\}\n\tbx r0", asm) and not re.search(r"pop \{r[1-3]\}\n\tbx r[1-3]", asm):
            cmd.append("--void")
        r = run(cmd + list(extra) + [s])
        return r.stdout + r.stderr


def module_of(func):
    return find_asm(func)[1]


def apply(func, cfile):
    """Insert the C of cfile (everything after the include line) into src/<module>.c."""
    path, mod = find_asm(func)
    src = os.path.join(ROOT, "src/%s.c" % mod)
    vars_, protos, code = split_decls(open(cfile).read())
    sig = signature(code, func)
    if sig:
        protos.append((func, sig))
    add_decls(os.path.join(ROOT, "include/variables.h"), "// AUTO-VARIABLES (keep this marker, decomp.py appends below it)", vars_)
    add_decls(os.path.join(ROOT, "include/functions.h"), "// AUTO-PROTOTYPES (keep this marker, decomp.py appends below it)", protos)
    text = open(src).read()
    stub = 'INCLUDE_ASM("asm/nonmatchings/%s", %s);' % (mod, func)
    if stub not in text:
        raise SystemExit("stub for %s not found in %s" % (func, src))
    text = text.replace(stub, code)
    open(src, "w").write(text)
    os.remove(path)
    print("applied %s -> src/%s.c" % (func, mod))


def apply_nonmatch(func, cfile):
    """Keep equivalent but not matching C next to the asm, under #ifdef NONMATCHING."""
    path, mod = find_asm(func)
    src = os.path.join(ROOT, "src/%s.c" % mod)
    vars_, protos, code = split_decls(open(cfile).read())
    add_decls(os.path.join(ROOT, "include/variables.h"), "// AUTO-VARIABLES (keep this marker, decomp.py appends below it)", vars_)
    text = open(src).read()
    stub = 'INCLUDE_ASM("asm/nonmatchings/%s", %s);' % (mod, func)
    if stub not in text:
        raise SystemExit("stub for %s not found in %s" % (func, src))
    text = text.replace(stub, "#ifdef NONMATCHING\n%s\n#else\n%s\n#endif" % (code, stub))
    open(src, "w").write(text)
    print("kept %s as NONMATCHING in src/%s.c" % (func, mod))


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
    out = re.sub(r"(?m)^\? ", "s32 ", out)          # unknown return type
    out = re.sub(r"\(\?(?=[,)])", "(s32", out)        # unknown first argument
    out = re.sub(r", \?(?=[,)])", ", s32", out)      # unknown other arguments
    out = re.sub(r"\(\? ", "(s32 ", out)
    out = re.sub(r", \? ", ", s32 ", out)
    out = re.sub(r"[ \t]+$", "", out, flags=re.M)
    return '#include "global.h"\n' + out


DECL_RE = re.compile(r"^(extern .*?(\w+)(\[[^\]]*\])*;|[\w ]+?\**\s*\**(\w+)\(.*\);)\s*$")


def split_decls(code):
    """Split C code into (variable decls, prototypes, body)."""
    vars_, protos, body = [], [], []
    depth = 0
    for line in code.splitlines():
        if depth == 0 and line.startswith("#include"):
            continue
        m = DECL_RE.match(line) if depth == 0 else None
        if m:
            if line.startswith("extern"):
                vars_.append((m.group(2), line.strip()))
            else:
                protos.append((m.group(4), line.strip()))
            continue
        depth += line.count("{") - line.count("}")
        body.append(line)
    return vars_, protos, "\n".join(body).strip("\n")


def header_names(path):
    names = set()
    for line in open(path):
        m = DECL_RE.match(line.strip())
        if m:
            names.add(m.group(2) or m.group(4))
    return names


def add_decls(path, marker, decls):
    names = header_names(path)
    new = [d for n, d in decls if n not in names]
    if not new:
        return
    text = open(path).read()
    i = text.index(marker) + len(marker)
    j = text.index("\n#endif", i)
    existing = text[i:j].strip("\n").splitlines()
    allv = sorted(set([e for e in existing if e.strip()] + new), key=lambda l: DECL_RE.match(l).group(2) or DECL_RE.match(l).group(4))
    text = text[:i] + "\n" + "\n".join(allv) + "\n" + text[j:]
    open(path, "w").write(text)


def signature(body, func):
    m = re.search(r"^([\w \*]+?\b%s\(.*?\))\s*\{" % func, body, flags=re.M | re.S)
    return m.group(1).strip() + ";" if m else None


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
    p = sub.add_parser("nonmatch")
    p.add_argument("func")
    p.add_argument("cfile")
    p = sub.add_parser("auto")
    p.add_argument("funcs", nargs="+")
    p.add_argument("--keep", help="directory to keep drafts of failed functions")
    p.add_argument("--valid-syntax", action="store_true", help="m2c --valid-syntax (M2C_FIELD macros)")
    args = ap.parse_args()
    global VALID_SYNTAX
    VALID_SYNTAX = getattr(args, "valid_syntax", False)

    if args.cmd == "m2c":
        print(m2c(args.func))
    elif args.cmd == "check":
        ok = check(args.func, args.cfile)
        print("MATCH" if ok else "NO MATCH")
        sys.exit(0 if ok else 1)
    elif args.cmd == "apply":
        apply(args.func, args.cfile)
    elif args.cmd == "nonmatch":
        apply_nonmatch(args.func, args.cfile)
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
