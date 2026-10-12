#!/usr/bin/env python3
"""c89fix.py [FILE...]  make C99-style code acceptable to agbcc (GCC 2.95, C89):
  * `for (T v = init; ...)`            -> `T v;` at the start of the enclosing block, `for (v = init; ...)`
  * `T v = expr;` after a statement    -> `T v;` at the start of the block, `v = expr;` in place
Only code that agbcc cannot compile is touched, so matching code is never changed."""
import os, re, sys
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
KW = {"return", "else", "goto", "case", "break", "continue", "do", "while", "if", "for", "switch", "sizeof", "default", "typedef", "extern", "static", "define", "include"}
TYPE = r"(?:const\s+|volatile\s+|unsigned\s+|signed\s+|struct\s+|union\s+|register\s+)*[A-Za-z_]\w*"
DECL = re.compile(r"^(\s*)(" + TYPE + r")(\s+\**\s*|\s*\*+\s*)(\w+)((?:\[[^\]]*\])*)\s*(?:=\s*(.+?))?;\s*(//.*|/\*.*\*/)?$")
FORDECL = re.compile(r"\bfor\s*\(\s*(" + TYPE + r")(\s+\**\s*|\s*\*+\s*)(\w+)\s*=")


REGDECL = re.compile(r"^(\s*)(register\s+[\w\s\*]+?)\s*\b(\w+)(\s+asm\s*\(\"[^\"]*\"\))\s*(?:=\s*(.+?))?;\s*$")


def is_decl(line):
    r = REGDECL.match(line)
    if r:
        class M:  # adapt to DECL groups: ind, type, sp, name, arr, init
            def __init__(s):
                s.g = {1: r.group(1), 2: r.group(2).rstrip() + "", 3: " ", 4: r.group(3), 5: r.group(4), 6: r.group(5)}
            def group(s, n): return s.g[n]
        return M()
    m = DECL.match(line)
    if not m:
        return None
    first = m.group(2).split()[-1]
    if m.group(2).split()[0] in KW or first in KW:
        return None
    return m


def split_top(s):
    parts, depth, cur = [], 0, ""
    for ch in s:
        if ch in "({[": depth += 1
        elif ch in ")}]": depth -= 1
        if ch == "," and depth == 0:
            parts.append(cur.strip()); cur = ""
        else:
            cur += ch
    if cur.strip(): parts.append(cur.strip())
    return parts


def init_list_assigns(ind, name, arr, init):
    """'{a, b, c}' for an array -> 'name[0] = a; ...' lines (None if not an initializer list)."""
    t = init.strip()
    if not (t.startswith("{") and t.endswith("}")):
        return None
    elems = split_top(t[1:-1])
    if any(e.startswith("{") or e.startswith(".") for e in elems):
        return None
    lines = ["%s%s[%d] = %s;" % (ind, name, i, e) for i, e in enumerate(elems)]
    mm = re.match(r"\[(\d+)\]$", arr or "")
    if mm:
        lines += ["%s%s[%d] = 0;" % (ind, name, i) for i in range(len(elems), int(mm.group(1)))]
    return lines


def fix_function(lines):
    """lines: body text lines of one function (including braces). Returns new lines."""
    out = list(lines)
    blocks = []      # stack of dicts: {'ins': index to insert decls, 'seen': bool, 'decls': []}
    inserts = {}     # line index -> list of decl strings
    repl = {}
    depth_started = False
    for i, line in enumerate(lines):
        s = line.strip()
        code = re.sub(r"//.*|/\*.*?\*/", "", line)
        # closing braces first
        closes = code.count("}")
        opens = code.count("{")
        stripped = code.strip()
        starts_with_close = stripped.startswith("}")
        if starts_with_close and blocks:
            blk = blocks.pop()
            if blk["decls"]:
                inserts.setdefault(blk["ins"], []).extend(blk["decls"])
            closes -= 1
        # statement handling in current block (only lines that do not just open/close)
        if blocks:
            blk = blocks[-1]
            fm = FORDECL.search(code)
            if fm:
                ty, sp, name = fm.group(1), fm.group(2), fm.group(3)
                if name not in blk["names"]:
                    blk["decls"].append("%s%s%s;" % (ty, sp if sp.strip() else " ", name)); blk["names"].add(name)
                repl[i] = FORDECL.sub("for (" + name + " =", line, count=1)
                blk["seen"] = True
            else:
                m = is_decl(line) if stripped and not stripped.startswith(("}", "{", "#")) else None
                if m and blk["seen"]:
                    ind, ty, sp, name, arr, init = m.group(1), m.group(2), m.group(3), m.group(4), m.group(5), m.group(6)
                    # split `T a = x, *b = y, c;` into declarators
                    base = ty
                    stars = sp.strip()
                    full = ("%s%s" % (name, arr)) + ((" = " + init) if init else "")
                    decls = []
                    for k, part in enumerate(split_top(full)):
                        pm = re.match(r"^(\**)\s*(\w+)((?:\[[^\]]*\])*)\s*(?:=\s*(.*))?$", part, re.S)
                        if not pm:
                            decls = None; break
                        st = stars if k == 0 else pm.group(1)
                        decls.append((st, pm.group(2), pm.group(3), pm.group(4)))
                    if decls is None:
                        blk["seen"] = True
                    else:
                        out_lines = []
                        for st, nm, ar, ini in decls:
                            if nm not in blk["names"]:
                                blk["decls"].append("%s %s%s%s;" % (base, st, nm, ar)); blk["names"].add(nm)
                            il = init_list_assigns(ind, nm, ar, ini) if ini else None
                            if il: out_lines += il
                            elif ini: out_lines.append("%s%s = %s;" % (ind, nm, ini))
                        repl[i] = "\n".join(out_lines)
                elif m:
                    blk["names"].add(m.group(4))  # leading declaration, fine
                elif stripped and not stripped.startswith(("{", "#", "//", "/*")) and not re.match(r"^\*(\s|/|$)", stripped) and stripped != "}":
                    blk["seen"] = True
        # opening braces
        for _ in range(closes):
            if blocks:
                blk = blocks.pop()
                if blk["decls"]:
                    inserts.setdefault(blk["ins"], []).extend(blk["decls"])
        for _ in range(opens):
            blocks.append({"ins": i + 1, "seen": False, "decls": [], "names": set()})
        if blocks and opens and not depth_started:
            depth_started = True
    res = []
    for i, line in enumerate(out):
        for d in inserts.get(i, []):
            ind = re.match(r"\s*", line).group(0) or "    "
            res.append(ind + d)
        res.append(repl[i] if i in repl else line)
        if i in repl and repl[i] == "":
            res.pop()
    return res


def fix_text(text):
    lines = text.split("\n")
    out, i = [], 0
    n = len(lines)
    while i < n:
        line = lines[i]
        # function start: a line at column 0 ending with ')' or '{' ... followed by '{' at column 0
        if re.match(r"^[A-Za-z_][\w \*]*\(.*\)\s*\{?\s*$", line) and not line.startswith(("#", "INCLUDE_ASM")) and not line.rstrip().endswith(";"):
            j = i
            if "{" not in line:
                if j + 1 < n and lines[j + 1].strip() == "{":
                    j += 1
                else:
                    out.append(line); i += 1; continue
            # find matching close at column 0
            k = j + 1
            while k < n and not lines[k].startswith("}"):
                k += 1
            if k >= n:
                out.append(line); i += 1; continue
            head = lines[i:j + 1]
            body = lines[j:k + 1]
            # body[0] contains/is the opening brace line
            fixed = fix_function(body) if line.strip() else body
            out.extend(head[:-1])
            out.extend(fixed)
            i = k + 1
        else:
            out.append(line); i += 1
    return "\n".join(out)


if __name__ == "__main__":
    files = sys.argv[1:] or [os.path.join(ROOT, "src", f) for f in sorted(os.listdir(os.path.join(ROOT, "src"))) if f.endswith(".c")]
    for f in files:
        t = open(f, encoding="utf-8").read()
        n = fix_text(t)
        if n != t:
            open(f, "w", encoding="utf-8").write(n)
            print("fixed", os.path.basename(f))
