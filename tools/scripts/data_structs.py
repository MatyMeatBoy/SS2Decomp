#!/usr/bin/env python3
"""Describe raw data objects from the struct types the matched C already gives them. Needs agbcc.

  data_structs.py            add rows to tools/config/data_arrays.txt and rewrite scalar pointer-table targets

For every raw object it looks at the C declarations of its label (`extern struct T label[]`, also through an
asm("label") alias) and, for objects that are only reached through a pointer table, at the declaration of the
table (`extern struct T *table[]`, `extern u16 *table[]`). The record size is not guessed: the tool appends
`sizeof(struct T)` probes to a copy of the source file and compiles it with the project compiler.
An object is accepted only when its size is a whole number of records.
"""
import re, subprocess, sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import data_progress, data_split

ROOT = Path(__file__).resolve().parents[2]
PROBE = ROOT / "build/probe"
TABLE = re.compile(r'^([A-Za-z_]\w*):\n((?:\t\.4byte [A-Za-z_]\w*\n|\t\.4byte 0\n)+)', re.M)


def declarations():
    """{label: [(file, type, stars, is_array)]} for every extern in src/ and include/."""
    found = {}
    for path in sorted((ROOT / "src").glob("*.c")):
        for m in data_split.EXTERN.finditer(path.read_text(encoding="utf-8", errors="replace")):
            kind = m[1].replace("const ", "").replace("volatile ", "").strip()
            found.setdefault(m[5] or m[3], []).append((path, kind, len(m[2]), bool(m[4])))
    return found


def sizes(wanted):
    """wanted: {path: set of struct type names}. Returns {(path, type): sizeof} using the project compiler."""
    PROBE.mkdir(parents=True, exist_ok=True)
    result = {}
    for path, kinds in sorted(wanted.items()):
        kinds = sorted(kinds)
        probe = PROBE / path.name
        text = path.read_text(encoding="utf-8", errors="replace")
        text += "\n" + "\n".join("const unsigned int zzProbe%d = sizeof(%s);" % (i, k) for i, k in enumerate(kinds)) + "\n"
        probe.write_text(text, encoding="utf-8")
        pre = probe.with_suffix(".i")
        out = probe.with_suffix(".s")
        cpp = subprocess.run(["arm-none-eabi-cpp", "-nostdinc", "-I", "tools/agbcc/include", "-iquote", "include", "-undef",
                              "-std=gnu17", str(probe), "-o", str(pre)], cwd=ROOT, capture_output=True, text=True)
        if cpp.returncode:
            continue
        cc = subprocess.run([str(ROOT / "tools/agbcc/bin/agbcc"), "-mthumb-interwork", "-O2", "-fhex-asm", "-o", str(out), str(pre)],
                            cwd=ROOT, capture_output=True, text=True)
        if cc.returncode or not out.exists():
            continue
        asm = out.read_text(encoding="utf-8", errors="replace")
        for i, k in enumerate(kinds):
            m = re.search(r'^zzProbe%d:\s*\n\s*\.word\s+(\S+)' % i, asm, re.M)
            if m:
                result[(path, k)] = int(m[1], 0)
    return result


def main():
    rules = data_progress.load_types(ROOT)
    arrays = data_progress.load_arrays(ROOT)
    objects = data_split.raw_objects()                      # offset -> (label, size)
    typed = tuple(data_progress.TYPED_PREFIXES)
    open_labels = {name: (offset, size) for offset, (name, size) in objects.items()
                   if not (name.startswith(typed) or data_progress.declared_type(rules, name, size) or name in arrays)}
    decl = declarations()
    # objects seen only through a pointer table inherit the table's element type
    views = {name: [(p, k, a) for p, k, stars, a in decl.get(name, []) if stars == 0] for name in open_labels}
    for path in data_split.data_files():
        for m in TABLE.finditer(path.read_text(encoding="utf-8")):
            element = [(p, k) for p, k, stars, a in decl.get(m[1], []) if stars == 1]
            for target in set(re.findall(r'\.4byte ([A-Za-z_]\w*)', m[2])):
                if target in views:
                    views[target] += [(p, k, True) for p, k in element]
    wanted = {}
    for name, seen in views.items():
        for p, k, _ in seen:
            if k.startswith(("struct ", "union ")):
                wanted.setdefault(p, set()).add(k)
    size_of = sizes(wanted)
    rows, scalar_done, scalar_bytes = [], 0, 0
    rom = data_split.rom_bytes()
    import struct as st
    for name, (offset, size) in sorted(open_labels.items(), key=lambda item: item[1][0]):
        seen = views[name]
        strides = sorted({(size_of[(p, k)], k, p.name) for p, k, _ in seen if (p, k) in size_of and size_of[(p, k)]
                          and size % size_of[(p, k)] == 0}, reverse=True)
        scalars = {k for p, k, _ in seen if k in data_split.SCALAR}
        kinds = {k for p, k, _ in seen}
        if strides and not scalars:
            stride, kind, where = strides[0]
            rows.append("%s 0x%X %d src/%s %s" % (name, stride, size // stride, where, kind))
        elif len(kinds) == 1 and len(scalars) == 1:
            width, code, directive = data_split.SCALAR[next(iter(scalars))]
            if size % width or offset % width:
                continue
            values = st.unpack_from("<%d%s" % (size // width, code), rom, offset)
            per_line, fmt = (16, "%d") if width < 4 else (8, "0x%08X")
            if width == 4:
                values = [v & 0xFFFFFFFF for v in values]
            data_split.replace_range(offset, offset + size, "\n".join(
                "\t%s %s" % (directive, ", ".join(fmt % v for v in values[i:i + per_line])) for i in range(0, len(values), per_line)))
            scalar_done += 1
            scalar_bytes += size
    if rows:
        path = ROOT / "tools/config/data_arrays.txt"
        text = path.read_text(encoding="utf-8").rstrip("\n")
        text += "\n#\n# Added by data_structs.py: record size from sizeof() of the struct the C code uses for the label\n"
        path.write_text(text + "\n".join(rows) + "\n", encoding="utf-8", newline="\n")
    print("%d record array(s) declared, %d object(s) (%d bytes) written as numbers; %d struct size(s) probed" % (
        len(rows), scalar_done, scalar_bytes, len(size_of)))


if __name__ == "__main__":
    main()
