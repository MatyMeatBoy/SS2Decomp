#!/usr/bin/env python3
"""try_aliases.py DRAFTDIR OUTDIR  rewrite drafts that use raw addresses / int globals cast to pointers, then re-check.

Agent-written drafts often say `*(u32 *)0x03005CF4` or `(u8 *)gUnk_03006440 + 0x1C` where the original code used a symbol
(literal pool relocation) and a pointer-typed global. Typed aliases with asm labels keep the real symbol name:
    extern u8 gUnkB_03001298[] asm("gUnk_03001298");     /* address of the object   */
    extern u8 *gUnkP_03006440 asm("gUnk_03006440");      /* the global as a pointer */
For every draft DRAFTDIR/<func>.c this tries: (1) absolute addresses -> symbols of the original literal pool,
(2) (1) + integer-global casts -> pointer aliases. Matching results go to OUTDIR/<func>.c (ready for apply_permuted.py);
the alias declarations are appended to include/variables.h when --declare is given. Prints func old_score -> new_score."""
import io, contextlib, os, re, sys
sys.path.insert(0, os.path.dirname(__file__))
import decomp
ROOT = decomp.ROOT


def pool_symbols(func):
    path, _ = decomp.find_asm(func)
    syms = []
    for m in re.finditer(r"\.4byte\s+(gUnk_([0-9A-F]{8}))(?:\s*\+\s*(0x[0-9A-Fa-f]+|\d+))?", open(path).read()):
        base = int(m.group(2), 16)
        off = int(m.group(3), 0) if m.group(3) else 0
        syms.append((base + off, m.group(1), off))
    return syms


def int_globals():
    out = set()
    for h in ("include/variables.h",):
        for l in open(os.path.join(ROOT, h)):
            m = re.match(r"extern\s+(?:s32|u32|s16|u16|u8|s8|M2C_UNK|int|unsigned int)\s+(gUnk_[0-9A-F]{8})\s*;", l)
            if m:
                out.add(m.group(1))
    return out


def rewrite_abs(code, pool, decls):
    def sub(m):
        cast, val = m.group(1), int(m.group(2), 16)
        best = None
        for addr, name, off in pool:
            if addr == val:
                best = (name, val - int(name[5:], 16)); break
        if best is None:
            cands = [(val - int(n[5:], 16), n) for a, n, o in pool if 0 <= val - int(n[5:], 16) < 0x2000]
            if cands:
                d, n = min(cands); best = (n, d)
        if best is None:
            return m.group(0)
        name, d = best
        alias = "gUnkB_" + name[5:]
        decls.add('extern u8 %s[] asm("%s");' % (alias, name))
        expr = alias if d == 0 else "(%s + 0x%X)" % (alias, d)
        return "(%s)%s" % (cast, expr)
    return re.sub(r"\(([\w\s]+\*+)\)\s*(0x0[2389][0-9A-Fa-f]{6})\b", sub, code)


def rewrite_casts(code, ints, decls):
    def sub(m):
        name = m.group(2)
        if name not in ints:
            return m.group(0)
        alias = "gUnkP_" + name[5:]
        decls.add('extern u8 *%s asm("%s");' % (alias, name))
        return "(%s)%s" % (m.group(1), alias)
    code = re.sub(r"\((u8\s*\*|void\s*\*|s8\s*\*|char\s*\*)\)\s*(gUnk_[0-9A-F]{8})\b", sub, code)
    def sub2(m):
        name, ty, off = m.group(1), m.group(2), m.group(3)
        if name not in ints:
            return m.group(0)
        alias = "gUnkP_" + name[5:]
        decls.add('extern u8 *%s asm("%s");' % (alias, name))
        return "(*(%s)(%s + %s))" % (ty, alias, off)
    return re.sub(r"M2C_FIELD\(\s*(gUnk_[0-9A-F]{8})\s*,\s*([\w\s\*]+?)\s*,\s*(0x[0-9A-Fa-f]+|\d+)\s*\)", sub2, code)


def score(func, path):
    buf = io.StringIO()
    try:
        with contextlib.redirect_stdout(buf):
            ok = decomp.check(func, path, verbose=True)
    except BaseException:
        return -1
    o = buf.getvalue()
    if ok:
        return 0
    if "size:" not in o:
        return -1
    return sum(1 for l in o.splitlines() if l[:1] in "+-" and l[:3] not in ("---", "+++"))


def main():
    src, out = sys.argv[1], sys.argv[2]
    declare = "--declare" in sys.argv
    os.makedirs(out, exist_ok=True)
    ints = int_globals()
    all_decls = set()
    for f in sorted(os.listdir(src)):
        if not f.endswith(".c"):
            continue
        func = f[:-2]
        if decomp.find_asm(func)[0] is None:
            continue
        text = open(os.path.join(src, f)).read()
        i = text.find(func + "(")
        head, body = text[:text.rfind("\n", 0, i) + 1], text[text.rfind("\n", 0, i) + 1:]
        pool = pool_symbols(func)
        best = None
        for stage in (1, 2):
            decls = set()
            nb = rewrite_abs(body, pool, decls)
            if stage == 2:
                nb = rewrite_casts(nb, ints, decls)
            if nb == body:
                continue
            cand = head + "\n".join(sorted(decls)) + "\n" + nb
            p = os.path.join(out, func + ".try.c")
            open(p, "w").write(cand)
            s = score(func, p)
            if best is None or (s >= 0 and (best[0] < 0 or s < best[0])):
                best = (s, cand, decls)
            if s == 0:
                break
        if best is None:
            continue
        old = None
        print("%s -> %d" % (func, best[0]), flush=True)
        if best[0] == 0:
            open(os.path.join(out, func + ".c"), "w").write(best[1])
            all_decls |= best[2]
        os.remove(os.path.join(out, func + ".try.c"))
    if declare and all_decls:
        vh = os.path.join(ROOT, "include/variables.h")
        t = open(vh).read()
        add = [d for d in sorted(all_decls) if d not in t]
        open(vh, "a").write("".join(d + "\n" for d in add))
        print("declared %d aliases" % len(add))


if __name__ == "__main__":
    main()
