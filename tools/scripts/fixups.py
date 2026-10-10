"""Textual rewrites applied to m2c drafts to get closer to agbcc output.

fixups(code) yields (name, new_code) variants. Variants are cumulative
alternatives; callers try each one."""
import re


def array_index(code):
    """(expr * 0xN) + &sym  ->  ((struct SzN *)&sym)[expr]"""
    sizes = set()

    def rep(m):
        expr, n, sym = m.group(1), int(m.group(2), 0), m.group(3)
        sizes.add(n)
        return "(&((struct Sz%d *)&%s)[%s])" % (n, sym, expr.strip())
    pat = r"\((\w+(?:\(\))?) \* (0x[0-9A-Fa-f]+|\d+)\) \+ &(\w+)"
    new = re.sub(pat, rep, code)
    if not sizes:
        return None
    import os
    hp = os.path.join(os.path.dirname(__file__), "..", "..", "include", "structs.h")
    h = open(hp).read()
    add = "".join("struct Sz%d { u8 b[%d]; };\n" % (n, n) for n in sorted(sizes) if "struct Sz%d " % n not in h)
    if add:
        h = h.replace("#endif // GUARD_STRUCTS_H", "// placeholder structs: array element of N bytes\n" + add + "\n#endif // GUARD_STRUCTS_H")
        open(hp, "w").write(h)
    return new


def neg_const(code):
    """0xFFFC written to s16/u16 -> -4"""
    def rep(m):
        v = int(m.group(0), 16)
        return str(v - 0x10000) if 0xFF00 <= v <= 0xFFFF else m.group(0)
    return re.sub(r"0xFF[0-9A-F]{2}\b", rep, code)


def drop_casts(code):
    return re.sub(r"\(\((?:u|s)(?:8|16|32)\) (\w+)\)", r"\1", code)


def fixups(code):
    out = []
    a = array_index(code)
    if a:
        out.append(("array", a))
    n = neg_const(code)
    if n != code:
        out.append(("neg", n))
        if a:
            out.append(("array+neg", neg_const(a)))
    return out
