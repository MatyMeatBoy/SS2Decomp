#!/usr/bin/env python3
"""Write the catalog's name and description of every function as a comment above its definition in src/.

  annotate_names.py            insert or refresh the comments
  annotate_names.py --check    report functions without a comment; change nothing

The comment is generated, so do not edit it by hand: improve the row in tools/config/function_names.json
and run this again. Format (the `[Name]` on the first line is what makes a block replaceable):

    /* [LoadBackgroundAsset] Resolves a background asset header, graphics and palette. ...
     * ... */
    void sub_0800B650(s32 a, s32 b, s32 c, u16 d, u16 e)

Comments never change the object code; `make compare` must still print OK afterwards.
"""
import json, re, sys, textwrap
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
LIMIT = 700             # characters of description kept in the source; the catalog has the full text
BLOCK = r'/[*] \[\w+\](?:(?![*]/)[\s\S])*[*]/\n'


def description(row):
    for item in row.get("evidence") or []:
        detail = " ".join(str(item.get("detail", "")).split())
        if detail and not detail.startswith(("Renamed from", "Canonical ")):
            if len(detail) > LIMIT:
                cut = detail.rfind(". ", 0, LIMIT)
                detail = detail[:cut + 1] if cut > LIMIT // 2 else detail[:LIMIT].rstrip() + "..."
            return detail.replace("*/", "* /").replace("/*", "/ *")
    return ""


def comment(row):
    text = "[%s] %s" % (row["display_name"], description(row))
    lines = textwrap.wrap(text.strip(), 108, break_long_words=False, break_on_hyphens=False)
    if len(lines) == 1:
        return "/* %s */\n" % lines[0]
    return "/* " + lines[0] + "\n" + "".join(" * %s\n" % l for l in lines[1:-1]) + " * %s */\n" % lines[-1]


def definition(text, symbol):
    """Offset of the line that starts the definition of `symbol` (also through an asm("symbol") alias)."""
    names = [symbol] + re.findall(r'\b(\w+)\s*\([^;{}]*\)\s*(?:__asm__|asm)\s*\(\s*"%s"\s*\)\s*;' % re.escape(symbol), text)
    for name in dict.fromkeys(names):
        m = re.search(r'^(?![ \t#/])[^\n;{}#]*\b%s\s*\((?:[^;{}()]|\([^()]*\))*\)\s*\{' % re.escape(name), text, re.M)
        if m:
            return m.start()
    return None


def main():
    check = "--check" in sys.argv
    rows = [r for r in json.loads((ROOT / "tools/config/function_names.json").read_text(encoding="utf-8-sig"))["functions"]
            if r.get("status") == "confirmed" and r["display_name"] != r["canonical_symbol"]]
    files = {p: p.read_bytes().decode("utf-8") for p in sorted((ROOT / "src").glob("*.c"))}
    done, missing = 0, []
    for row in rows:
        for path, text in files.items():
            at = definition(text, row["canonical_symbol"])
            if at is None:
                continue
            head = text[:at]
            old = re.search(r'(?:%s)\Z' % BLOCK, head)
            if old:
                head = head[:old.start()]
            elif check:
                missing.append(row["canonical_symbol"])
            files[path] = head + comment(row) + text[at:]
            done += 1
            break
        else:
            missing.append(row["canonical_symbol"] + " (definition not found)")
    if check:
        print("%d function(s) without a generated comment" % len(missing))
        for m in missing[:40]:
            print("  " + m)
        return 1 if missing else 0
    for path, text in files.items():
        if text != path.read_bytes().decode("utf-8"):
            path.write_bytes(text.encode("utf-8"))
    print("%d comment(s) written, %d definition(s) not found" % (done, len(missing)))
    for m in missing[:40]:
        print("  " + m)
    return 0


if __name__ == "__main__":
    sys.exit(main())
