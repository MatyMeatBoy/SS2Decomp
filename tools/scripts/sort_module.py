#!/usr/bin/env python3
"""sort_module.py [MODULE...]  reorder the functions of src/<module>.c by ROM address.

Units: INCLUDE_ASM lines, '#ifdef NONMATCHING ... #else INCLUDE_ASM ... #endif' blocks and C function definitions.
Everything else (includes, externs, typedefs, static data, helper text) is kept, in order, in front of the functions.
Functions emitted out of address order would shift the whole ROM layout, so run this after merging worker/agent work."""
import os, re, sys
sys.path.insert(0, os.path.dirname(__file__))
import decomp
ROOT = decomp.ROOT

BLOCK = re.compile(r"#ifdef NONMATCHING\n(?:(?!#endif|#ifdef).)*?#else\nINCLUDE_ASM\(\s*\"[^\"]*\"\s*,\s*(\w+)\s*\);\n#endif\n?", re.S)
GUARD = re.compile(r"#ifdef NONMATCHING\n(?:(?!#endif|#ifdef|#else).)*?#endif\n?", re.S)
INC = re.compile(r"INCLUDE_ASM\(\s*\"[^\"]*\"\s*,\s*(\w+)\s*\);\n?")


def addr_of(name):
    m = re.search(r"sub_([0-9A-F]{8})", name)
    return int(m.group(1), 16) if m else None


def sort_text(text):
    text = re.sub(r"#ifdef NONMATCHING\n#else\n(INCLUDE_ASM[^\n]*\n)#endif\n", r"\1", text)
    spans = []  # (start, end, name)
    for rx in (BLOCK, INC):
        for m in rx.finditer(text):
            if not any(s <= m.start() < e for s, e, _ in spans):
                spans.append((m.start(), m.end(), m.group(1)))
    for m in GUARD.finditer(text):
        if any(s <= m.start() < e for s, e, _ in spans):
            continue
        fm = decomp.FUNC_RE.search(m.group(0))
        if fm:
            spans.append((m.start(), m.end(), fm.group(1)))
    for m in decomp.FUNC_RE.finditer(text):
        if any(s <= m.start() < e for s, e, _ in spans):
            continue
        if m.group(1) in ("switch", "if", "while", "for", "return") or text[m.start()] in " \t":
            continue
        line_end = text.rfind("\n", 0, m.start())
        prev_line = text[text.rfind("\n", 0, max(line_end, 0)) + 1:line_end] if line_end > 0 else ""
        if prev_line.rstrip().endswith("\\"):
            continue
        # skip matches nested in an unclaimed #ifdef block or already inside a function body
        j = text.index("{", m.end() - 1)
        depth = 0
        for k in range(j, len(text)):
            if text[k] == "{": depth += 1
            elif text[k] == "}":
                depth -= 1
                if depth == 0: break
        spans.append((m.start(), k + 1, m.group(1)))
    spans.sort()
    # drop spans nested in earlier ones
    clean = []
    for s in spans:
        if clean and s[0] < clean[-1][1]:
            continue
        clean.append(s)
    all_spans = list(clean)
    def rank(u):
        s_, e_, n_ = u
        body = text[s_:e_]
        if INC.fullmatch(body.rstrip("\n") + "\n"):
            return 0                      # plain stub
        if body.startswith("#ifdef NONMATCHING"):
            return 3 if re.search(r"\)\s*\{", body.split("#else")[0]) else 1   # block with a function body / without
        return 2                          # plain C function
    best = {}
    for u in clean:
        if u[2] not in best or rank(u) > rank(best[u[2]]):
            best[u[2]] = u
    clean = [u for u in clean if best[u[2]] is u]
    keep = set(clean)
    pre, units, pos = [], [], 0
    last_key = -1
    for s, e, name in all_spans:
        pre.append(text[pos:s])
        if (s, e, name) not in keep:
            pos = e
            continue
        body = text[s:e].rstrip("\n") + "\n"
        a = addr_of(name)
        if a is None:
            a = last_key  # helper without address: stays behind the previous function
        units.append((a, len(units), body))
        last_key = a if a is not None else last_key
        pos = e
    pre.append(text[pos:])
    units.sort(key=lambda u: (u[0], u[1]))
    head = "".join(pre)
    head = re.sub(r"\n{3,}", "\n\n", head).rstrip("\n") + "\n\n"
    return head + "".join(u[2] for u in units)


if __name__ == "__main__":
    mods = sys.argv[1:] or [f[:-2] for f in sorted(os.listdir(os.path.join(ROOT, "src"))) if f.endswith(".c")]
    kinds = {}
    for l in open(os.path.join(ROOT, "tools/config/modules.cfg")):
        p = l.split()
        if len(p) > 3 and not l.startswith("#"): kinds[p[1]] = (p[2], p[3])
    for m in mods:
        if kinds.get(m) != ("c", "game"): continue
        p = os.path.join(ROOT, "src", m + ".c")
        t = open(p, encoding="utf-8").read()
        n = sort_text(t)
        if n != t:
            open(p, "w", encoding="utf-8").write(n)
            print("sorted", m)
