#!/usr/bin/env python3
"""fix_decls.py [MAKE_TARGET=nonmatching]  iterate: build, then repair header declarations from compiler errors
(undeclared sub_/gUnk_ symbols, conflicting types, wrong argument counts) by making the declarations unprototyped.
Only touches include/functions.h and include/variables.h (append / loosen), never source files."""
import re, subprocess, sys, os
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
os.chdir(ROOT)
target = sys.argv[1] if len(sys.argv) > 1 else "nonmatching"
for it in range(10):
    r = subprocess.run(["make", "-k", "-j4", target], capture_output=True, text=True)
    out = r.stdout + r.stderr
    errs = re.findall(r"^(src/\S+\.c):(\d+): (.*)$", out, re.M)
    fh = open("include/functions.h").read(); vh = open("include/variables.h").read()
    changed = 0
    for f, ln, msg in errs:
        m = re.search(r"`(\w+)' undeclared", msg)
        if m:
            n = m.group(1)
            if re.fullmatch(r"sub_[0-9A-F]{8}|arm_[0-9A-F]{8}", n) and not re.search(r"\b%s\b" % n, fh):
                fh += "s32 %s();\n" % n; changed += 1
            elif re.fullmatch(r"gUnk_[0-9A-F]{8}", n) and not re.search(r"\b%s\b" % n, vh):
                vh += "extern u32 %s;\n" % n; changed += 1
            continue
        m = re.search(r"(?:conflicting types for|too (?:few|many) arguments to function) `(\w+)'", msg)
        if m:
            n = m.group(1)
            if re.fullmatch(r"sub_[0-9A-F]{8}", n):
                try:
                    sl = open(f).read().split("\n")
                    dl = sl[int(ln) - 1]
                    if dl.strip() == "{":
                        dl = sl[int(ln) - 2]
                    rt = dl.split(n)[0].strip() or None
                    if rt and not re.fullmatch(r"(?:static\s+|const\s+|struct\s+\w+|unsigned\s+|signed\s+)*[A-Za-z_]\w*\s*\**", rt):
                        rt = None
                except Exception:
                    rt = None
                if rt and "conflicting" in msg:
                    new = re.sub(r"^[A-Za-z_][\w \*]*?\b%s\([^;]*\);$" % n, "%s %s();" % (rt, n), fh, count=1, flags=re.M)
                else:
                    new = re.sub(r"^([A-Za-z_][\w \*]*?\b)%s\([^;]*\);$" % n, r"\1%s();" % n, fh, count=1, flags=re.M)
                if new != fh: fh = new; changed += 1
    open("include/functions.h", "w").write(fh); open("include/variables.h", "w").write(vh)
    left = [e for e in errs if "warning" not in e[2]]
    print("iteration", it, "errors", len(left), "header edits", changed)
    if not changed:
        for f, ln, msg in left[:40]: print("%s:%s %s" % (f, ln, msg))
        break
