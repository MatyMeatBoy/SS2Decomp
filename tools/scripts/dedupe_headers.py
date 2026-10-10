#!/usr/bin/env python3
"""After union merges of worker branches: drop later duplicate single-line declarations of the same
sub_/gUnk_ symbol in include/functions.h and variables.h (keeps the first occurrence)."""
import re, os
ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
for h in ("include/functions.h", "include/variables.h"):
    p = os.path.join(ROOT, h)
    seen, out, dropped = set(), [], 0
    for l in open(p).read().split("\n"):
        m = re.match(r"^(?:extern\s+)?[\w\s\*\(\)]+?\b(gUnk_[0-9A-Fa-f]{8}|sub_[0-9A-Fa-f]{8})\b\s*(\(|\[|;)", l)
        if m and l.rstrip().endswith(";") and "{" not in l:
            if m.group(1) in seen:
                dropped += 1
                continue
            seen.add(m.group(1))
        out.append(l)
    open(p, "w").write("\n".join(out))
    print(h, "dropped", dropped)
