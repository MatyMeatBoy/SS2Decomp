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
import contextlib
import io
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
AGBCC = os.environ.get("DECOMP_CC1", AGBCC)
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


ORIG_COMMIT = "e79213b"  # first matching disassembly, every function still in asm


def func_address(func):
    m = re.match(r"(?:sub|arm)_([0-9A-F]{8})$", func)
    if m:
        return int(m.group(1), 16)
    for line in open(os.path.join(ROOT, "tools/config/functions.cfg")):
        p = line.split()
        if len(p) > 2 and p[0] in ("thumb", "arm") and p[2] == func:
            return int(p[1], 0)
    return None


def orig_asm(func, workdir):
    """Path of the original asm of func and the symbol name used in it."""
    path, mod = find_asm(func)
    if path is not None:
        return path, func
    addr = func_address(func)
    if addr is None:
        raise SystemExit("unknown function %s" % func)
    r = run(["git", "ls-tree", "-r", "--name-only", ORIG_COMMIT, "asm/nonmatchings"])
    for f in r.stdout.split():
        name = os.path.basename(f)[:-2]
        if name == "sub_%08X" % addr or (addr == 0x08000618 and name == "AgbMain"):
            text = run(["git", "show", "%s:%s" % (ORIG_COMMIT, f)]).stdout
            out = os.path.join(workdir, name + ".s")
            open(out, "w").write(text)
            return out, name
    raise SystemExit("no original asm for %s" % func)


def current_names():
    """address -> current symbol name (functions.cfg, sym_ram.ld, data labels)."""
    names = {}
    for line in open(os.path.join(ROOT, "tools/config/functions.cfg")):
        p = line.split()
        if len(p) > 2 and p[0] in ("thumb", "arm"):
            names[int(p[1], 0)] = p[2]
    for line in open(os.path.join(ROOT, "sym_ram.ld")):
        m = re.match(r"(\w+) = (0x[0-9A-Fa-f]+);", line)
        if m and not m.group(1).startswith("gUnk_"):
            names[int(m.group(2), 16)] = m.group(1)
    data = open(os.path.join(ROOT, "data/rodata.s")).read()
    # data labels: "name:" lines follow incbins; compute addresses from the incbin offsets
    addr = 0x080B9704
    for line in data.splitlines():
        m = re.match(r'\t\.incbin "baserom.gba", (0x[0-9A-F]+), (0x[0-9A-F]+)', line)
        if m:
            addr = 0x08000000 + int(m.group(1), 16) + int(m.group(2), 16)
            continue
        m = re.match(r"(\w+):$", line)
        if m and not m.group(1).startswith("gUnk_"):
            names[addr] = m.group(1)
    return names


def module_of_addr(addr):
    mod = None
    for line in open(os.path.join(ROOT, "tools/config/modules.cfg")):
        p = line.split()
        if p and not line.startswith("#") and addr is not None and int(p[0], 0) <= addr:
            mod = p[1]
    return mod


def restore_asm(func):
    """Recreate asm/nonmatchings/<module>/<func>.s from the original disassembly."""
    addr = func_address(func)
    mod = None
    for line in open(os.path.join(ROOT, "tools/config/modules.cfg")):
        p = line.split()
        if p and not line.startswith("#") and int(p[0], 0) <= addr:
            mod = p[1]
    with tempfile.TemporaryDirectory() as td:
        path, oname = orig_asm("sub_%08X" % addr, td)
        text = open(path).read()
    names = current_names()

    def sub(m):
        a = int(m.group(2), 16)
        return names.get(a, m.group(0))
    text = re.sub(r"\b(sub|gUnk)_([0-9A-F]{8})\b", sub, text)
    out = os.path.join(ROOT, "asm/nonmatchings/%s/%s.s" % (mod, func))
    open(out, "w").write(text)
    return out


def assemble_orig(func, out_o):
    path, name = orig_asm(func, os.path.dirname(out_o))
    rel = os.path.relpath(path, ROOT)
    src = out_o[:-2] + ".s"
    with open(src, "w") as fh:
        fh.write('\t.include "asm/macros.inc"\n\t.syntax unified\n\t.text\n\t.include "%s"\n' % rel)
    r = run(["arm-none-eabi-as", "-mcpu=arm7tdmi", "-I", ROOT, "-o", out_o, src])
    if r.returncode:
        raise SystemExit(r.stderr)
    return name


def module_cc1(mod):
    """Compiler used for src/<mod>.c (per file overrides in the Makefile)."""
    for line in open(os.path.join(ROOT, "Makefile")):
        m = re.match(r"\$\(BUILD\)/src/(\w+)\.o: CC1 := (\S+)", line)
        if m and m.group(1) == mod:
            return os.path.join(ROOT, m.group(2))
    return AGBCC


def module_flags(mod):
    for line in open(os.path.join(ROOT, "Makefile")):
        m = re.match(r"\$\(BUILD\)/src/(\w+)\.o: CC1FLAGS := (.*)$", line)
        if m and m.group(1) == mod:
            return m.group(2).split()
    return None


def compile_c(cfile, out_o, cc1=None, flags=None):
    i = out_o[:-2] + ".i"
    s = out_o[:-2] + ".s"
    # drop prototypes of the functions defined by cfile (they may be stale guesses)
    defined = set(split_functions(open(cfile).read())[2])
    incdir = out_o[:-2] + "_inc"
    real_inc = os.environ.get("DECOMP_INC", os.path.join(ROOT, "include"))
    import shutil
    shutil.copytree(real_inc, incdir, dirs_exist_ok=True)
    fh = open(os.path.join(real_inc, "functions.h")).read().splitlines()
    keep = []
    for l in fh:
        m = DECL_RE.match(l.strip())
        if m and not l.startswith("#") and (m.group(4) in defined):
            continue
        keep.append(l)
    open(os.path.join(incdir, "functions.h"), "w").write("\n".join(keep) + "\n")
    # same for variables the candidate declares itself
    own = set(n for n, _ in split_decls(open(cfile).read())[0])
    vh = open(os.path.join(real_inc, "variables.h")).read().splitlines()
    vh = [l for l in vh if not (DECL_RE.match(l.strip()) and DECL_RE.match(l.strip()).group(2) in own)]
    open(os.path.join(incdir, "variables.h"), "w").write("\n".join(vh) + "\n")
    cppflags = [f if f != real_inc else incdir for f in CPPFLAGS]
    r = run(["arm-none-eabi-cpp"] + cppflags + [cfile, "-o", i])
    if r.returncode:
        return r.stderr
    fl = flags or (os.environ["DECOMP_CFLAGS"].split() if "DECOMP_CFLAGS" in os.environ else CC1FLAGS)
    r = run([cc1 or AGBCC] + fl + ["-o", s, i])
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
                if len(p) >= 2:
                    v = int(p[0], 16)
                    if len(p) > 2 and p[2] in "Tt":
                        v &= ~1  # THUMB function
                    _SYMS[p[1]] = v
    return _SYMS


def resolve(name):
    syms = symbol_values()
    if name in syms:
        return syms[name]
    m = re.match(r"(?:gUnk|sub|arm)_([0-9A-F]{8})$", name)
    if m:
        return int(m.group(1), 16)
    global _NAMES_INV
    if _NAMES_INV is None:
        _NAMES_INV = {v: k for k, v in current_names().items()}
        for line in open(os.path.join(ROOT, "sym_ram.ld")):
            mm = re.match(r"(\w+) = (0x[0-9A-Fa-f]+|\d+);", line)
            if mm:
                _NAMES_INV[mm.group(1)] = int(mm.group(2), 0)
    return _NAMES_INV.get(name)


_NAMES_INV = None
_THUMB = None


def is_thumb_func(name, val):
    """Is the symbol a THUMB function? (data words referencing it get bit 0 set)"""
    global _THUMB
    if _THUMB is None:
        _THUMB = set()
        for line in open(os.path.join(ROOT, "tools/config/functions.cfg")):
            p = line.split()
            if len(p) >= 2 and p[0] == "thumb":
                _THUMB.add(int(p[1], 0))
    return val in _THUMB


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
                        if s2["st_info"]["type"] == "STT_SECTION" or (
                                s2["st_shndx"] == sym["st_shndx"] and s2["st_info"]["bind"] == "STB_LOCAL"):
                            # reference into the same section: make it function relative
                            name = "<section>"
                            if s2["st_info"]["type"] != "STT_SECTION":
                                name = "<section+%d>" % (s2["st_value"] - start)
                        relocs[off - start] = (r["r_info_type"], name)
        func_code.start = start
        return data, relocs


def normalized(obj, func):
    """Bytes with relocated fields replaced by their resolved target."""
    data, relocs = func_code(obj, func)
    if data is None:
        return None
    data = bytearray(data)
    items = []
    start = func_code.start
    for off, (rtype, name) in sorted(relocs.items()):
        val = resolve(name) if not name.startswith("<section") else None
        if rtype == 2:  # R_ARM_ABS32
            addend = struct.unpack_from("<I", data, off)[0]
            if name == "<section>":
                addend -= start
            elif name.startswith("<section+"):
                addend += int(name[9:-1])
                name = "<section>"
            if val is not None:
                v = (val + addend) & 0xFFFFFFFF
                if is_thumb_func(name, val):
                    v |= 1
                struct.pack_into("<I", data, off, v)
            else:
                items.append((off, rtype, name, addend))
                data[off:off + 4] = b"\0\0\0\0"
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


def compare(orig_o, cand_o, func, verbose=True, orig_name=None):
    a = normalized(orig_o, orig_name or func)
    b = normalized(cand_o, func)
    if b is None:
        if verbose:
            print("candidate does not define %s" % func)
        return False
    ok = a == b
    a, b = a[0], b[0]
    if not ok and verbose:
        print("size: orig %d, candidate %d" % (len(a), len(b)))
        da = disasm(orig_o, orig_name or func)
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


def ensure_sz_structs(code):
    sizes = set(int(x) for x in re.findall(r"struct Sz(\d+)", code))
    hp = os.path.join(ROOT, "include/structs.h")
    h = open(hp).read()
    add = "".join("struct Sz%d { u8 b[%d]; };\n" % (n, n) for n in sorted(sizes) if "struct Sz%d " % n not in h)
    if add:
        open(hp, "w").write(h.replace("#endif // GUARD_STRUCTS_H", add + "\n#endif // GUARD_STRUCTS_H"))


def apply(func, cfile):
    ensure_sz_structs(open(cfile).read())
    """Insert the C of cfile (everything after the include line) into src/<module>.c."""
    path, mod = find_asm(func)
    src = os.path.join(ROOT, "src/%s.c" % mod)
    vars_, protos, code = split_decls(open(cfile).read())
    for n, d in vars_:
        replace_var(n, d)
    vars_ = []
    sig = signature(code, func)
    if sig:
        replace_proto(func, sig)
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
        oname = assemble_orig(func, orig)
        mod = module_of_addr(func_address(func))
        err = compile_c(cfile, cand, module_cc1(mod) if "DECOMP_CC1" not in os.environ else None,
                        module_flags(mod) if "DECOMP_CFLAGS" not in os.environ else None)
        if err:
            if verbose:
                print(err)
            return False
        return compare(orig, cand, func, verbose, oname)


def check_file(cfile, verbose=False, only=None, cc1=None, flags=None):
    """Compile cfile once and compare every function it defines."""
    results = {}
    with tempfile.TemporaryDirectory() as td:
        cand = os.path.join(td, "cand.o")
        err = compile_c(cfile, cand, cc1, flags)
        if err:
            print(err)
            return None
        with open(cand, "rb") as fh:
            elf = ELFFile(fh)
            names = [sy.name for sy in elf.get_section_by_name(".symtab").iter_symbols()
                     if sy["st_info"]["type"] == "STT_FUNC" and sy["st_shndx"] != "SHN_UNDEF"]
        for n in names:
            if only and n not in only:
                continue
            if func_address(n) is None:
                continue
            orig = os.path.join(td, "orig_%s.o" % n)
            try:
                oname = assemble_orig(n, orig)
            except SystemExit:
                continue
            buf = io.StringIO()
            with contextlib.redirect_stdout(buf):
                ok = compare(orig, cand, n, True, oname)
            out = buf.getvalue()
            ndiff = sum(1 for l in out.splitlines() if l[:1] in "+-" and l[:3] not in ("---", "+++"))
            results[n] = (ok, ndiff, out)
            print("%-32s %s" % (n, "MATCH" if ok else "%d diff lines" % ndiff))
            if verbose and not ok:
                print(out)
    return results


FUNC_RE = re.compile(r"^(?:static\s+)?(?:inline\s+)?[\w \*]+?\b(\w+)\s*\(([^;{]*?)\)\s*\n?\{", re.M)


def split_functions(text):
    """-> (prelude, {name: code}, [names in order])"""
    funcs = {}
    order = []
    first = None
    for m in FUNC_RE.finditer(text):
        start = m.start()
        if order and start < funcs_end:
            continue
        j = text.index("{", m.end() - 1)
        depth = 0
        for k in range(j, len(text)):
            if text[k] == "{":
                depth += 1
            elif text[k] == "}":
                depth -= 1
                if depth == 0:
                    break
        funcs[m.group(1)] = text[start:k + 1]
        order.append(m.group(1))
        funcs_end = k + 1
        if first is None:
            first = start
    # prelude: all top level text that is not a function body
    rest = text
    for n in order:
        rest = rest.replace(funcs[n], "", 1)
    prelude = re.sub(r"\n{3,}", "\n\n", rest)
    return prelude, funcs, order


def module_functions(mod):
    """Function names of a module, in ROM order."""
    mods = []
    for line in open(os.path.join(ROOT, "tools/config/modules.cfg")):
        p = line.split()
        if p and not line.startswith("#"):
            mods.append((int(p[0], 0), p[1]))
    mods.sort()
    lo = hi = None
    for i, (a, n) in enumerate(mods):
        if n == mod:
            lo = a
            hi = mods[i + 1][0] if i + 1 < len(mods) else 0x080B9704
    out = []
    for line in open(os.path.join(ROOT, "tools/config/functions.cfg")):
        p = line.split()
        if len(p) >= 2 and p[0] == "thumb":
            a = int(p[1], 0)
            if lo <= a < hi:
                out.append((a, p[2] if len(p) > 2 else "sub_%08X" % a))
    return [n for a, n in sorted(out)]


def integrate(mod, cfile):
    """Rebuild src/<mod>.c from a candidate file defining (some of) its functions."""
    results = check_file(cfile, cc1=module_cc1(mod), flags=module_flags(mod)) or {}
    text = open(cfile).read()
    prelude, funcs, corder = split_functions(text)
    # hoist extern variables / prototypes into the shared headers
    vars_, protos, prelude = split_decls(prelude)
    for n, d in vars_:
        replace_var(n, d)
    for n, d in protos:
        if n in funcs:
            continue
        replace_proto(n, d)
    for n in corder:
        sig = signature(funcs[n], n)
        if sig and not funcs[n].lstrip().startswith("static"):
            replace_proto(n, sig)
    prelude = '#include "global.h"\n' + prelude
    src = os.path.join(ROOT, "src/%s.c" % mod)
    out = [prelude.rstrip() + "\n"]
    nmatch = 0
    rom = module_functions(mod)
    # helpers (static/inline functions with no ROM counterpart) go right before
    # the ROM function that follows them in the candidate file
    helpers_before = {}
    pending = []
    for n in corder:
        if n in rom:
            if pending:
                helpers_before.setdefault(n, []).extend(pending)
                pending = []
        else:
            pending.append(n)
    for name in rom:
        for h in helpers_before.get(name, []):
            out.append(funcs[h] + "\n")
        stub = 'INCLUDE_ASM("asm/nonmatchings/%s", %s);' % (mod, name)
        if name in funcs and results.get(name, (False,))[0]:
            out.append(funcs[name] + "\n")
            p = find_asm(name)[0]
            if p:
                os.remove(p)
            nmatch += 1
        else:
            if find_asm(name)[0] is None:
                restore_asm(name)
            if name in funcs:
                out.append("#ifdef NONMATCHING\n%s\n#else\n%s\n#endif\n" % (funcs[name], stub))
            else:
                out.append(stub + "\n")
    open(src, "w").write("\n".join(out))
    print("src/%s.c: %d functions matching" % (mod, nmatch))


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


DECL_RE = re.compile(r"^(extern .*?(\w+)(\[[^\]]*\])*;|[\w ]+?\**\s*\**(\w+)\(.*\);)\s*(//.*)?$")


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


def replace_proto(func, sig):
    path = os.path.join(ROOT, "include/functions.h")
    lines = open(path).read().splitlines()
    out = []
    done = False
    for l in lines:
        m = DECL_RE.match(l.strip())
        if m and not l.startswith("#") and m.group(4) == func:
            if not done:
                out.append(sig)
                done = True
            continue
        out.append(l)
    open(path, "w").write("\n".join(out) + "\n")
    if not done:
        add_decls(path, "// AUTO-PROTOTYPES (keep this marker, decomp.py appends below it)", [(func, sig)])


def replace_var(name, decl):
    path = os.path.join(ROOT, "include/variables.h")
    lines = open(path).read().splitlines()
    out = []
    done = False
    for l in lines:
        m = DECL_RE.match(l.strip())
        if m and l.startswith("extern") and m.group(2) == name:
            if not done:
                out.append(decl)
                done = True
            continue
        out.append(l)
    open(path, "w").write("\n".join(out) + "\n")
    if not done:
        add_decls(path, "// AUTO-VARIABLES (keep this marker, decomp.py appends below it)", [(name, decl)])


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
    p = sub.add_parser("checkfile")
    p.add_argument("cfile")
    p.add_argument("-v", "--verbose", action="store_true")
    p.add_argument("-f", "--func", action="append")
    p.add_argument("--cc1", help="compiler (default agbcc)")
    p = sub.add_parser("score")
    p.add_argument("outdir")
    p.add_argument("funcs", nargs="+")
    p = sub.add_parser("fix")
    p.add_argument("dir")
    p.add_argument("funcs", nargs="+")
    p = sub.add_parser("trycc")
    p.add_argument("dir")
    p.add_argument("funcs", nargs="+")
    p = sub.add_parser("draft")
    p.add_argument("module")
    p.add_argument("out")
    p.add_argument("--valid-syntax", action="store_true")
    p = sub.add_parser("integrate")
    p.add_argument("module")
    p.add_argument("cfile")
    p = sub.add_parser("restore")
    p.add_argument("funcs", nargs="+")
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
    elif args.cmd == "checkfile":
        check_file(args.cfile, args.verbose, args.func, args.cc1)
    elif args.cmd == "score":
        # write m2c drafts and their diff scores (no files in the project are changed)
        VALID_SYNTAX = True
        os.makedirs(args.outdir, exist_ok=True)
        log = open(os.path.join(args.outdir, "scores.txt"), "a")
        for func in args.funcs:
            if find_asm(func)[0] is None:
                continue
            c = os.path.join(args.outdir, func + ".c")
            open(c, "w").write(m2c_to_c(m2c(func)))
            buf = io.StringIO()
            with contextlib.redirect_stdout(buf):
                ok = check(func, c, verbose=True)
            out = buf.getvalue()
            if ok:
                sc = 0
            elif "size:" not in out:
                sc = -1
            else:
                sc = sum(1 for l in out.splitlines() if l[:1] in "+-" and l[:3] not in ("---", "+++"))
            log.write("%s %d\n" % (func, sc))
            log.flush()
    elif args.cmd == "fix":
        import fixups
        for func in args.funcs:
            c = os.path.join(args.dir, func + ".c")
            if not os.path.exists(c):
                continue
            base = open(c).read()
            hit = None
            for name, code in fixups.fixups(base):
                tmp = os.path.join(args.dir, func + "." + name + ".c")
                open(tmp, "w").write(code)
                if check(func, tmp, verbose=False):
                    hit = name
                    os.replace(tmp, c)
                    break
                os.remove(tmp)
            print("%s %s" % (func, hit or "-"))
    elif args.cmd == "trycc":
        # which compiler/flags make the saved draft match?
        combos = [("agbcc", os.path.join(ROOT, "tools/agbcc/bin/agbcc"), ["-O2"]),
                  ("old_agbcc", os.path.join(ROOT, "tools/agbcc/bin/old_agbcc"), ["-O2"]),
                  ("agbcc-O1", os.path.join(ROOT, "tools/agbcc/bin/agbcc"), ["-O1"]),
                  ("old_agbcc-O1", os.path.join(ROOT, "tools/agbcc/bin/old_agbcc"), ["-O1"])]
        for func in args.funcs:
            c = os.path.join(args.dir, func + ".c")
            if not os.path.exists(c):
                continue
            hit = []
            for name, cc, opt in combos:
                with tempfile.TemporaryDirectory() as td:
                    o1 = os.path.join(td, "o.o"); o2 = os.path.join(td, "c.o")
                    on = assemble_orig(func, o1)
                    err = compile_c(c, o2, cc, ["-mthumb-interwork", "-Wimplicit"] + opt + ["-fhex-asm"])
                    if err:
                        continue
                    if compare(o1, o2, func, False, on):
                        hit.append(name)
            print("%s %s" % (func, ",".join(hit) or "-"))
    elif args.cmd == "draft":
        VALID_SYNTAX = args.valid_syntax
        out = ['#include "global.h"']
        for n in module_functions(args.module):
            if find_asm(n)[0] is None:
                continue
            c = m2c_to_c(m2c(n)).replace('#include "global.h"\n', "")
            out.append("// ---- %s\n%s" % (n, c))
        open(args.out, "w").write("\n".join(out) + "\n")
    elif args.cmd == "integrate":
        integrate(args.module, args.cfile)
    elif args.cmd == "restore":
        for f in args.funcs:
            print(restore_asm(f))
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
