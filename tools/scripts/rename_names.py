#!/usr/bin/env python3
"""rename_names.py RENAMES.json : change display names in the catalog and record why.

RENAMES.json is {"sub_XXXXXXXX": ["NewDisplayName", "reason the new name is better"], ...}.
The catalog is edited textually (its formatting is kept): the display name changes and one evidence
entry "Renamed from Old. reason" is appended with the current revision. Names already in use are refused.
Run `python3 tools/scripts/progress.py --out build/progress` afterwards.
"""
import json, re, subprocess, sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def main():
    rev = subprocess.run(["git", "rev-parse", "HEAD"], cwd=ROOT, capture_output=True, text=True).stdout.strip()
    ren = json.loads(Path(sys.argv[1]).read_text(encoding="utf-8"))
    path = ROOT / "tools/config/function_names.json"
    raw = path.read_bytes().decode("utf-8-sig")
    taken = {r["display_name"] for r in json.loads(raw)["functions"]}
    done = 0
    for symbol, (new, why) in ren.items():
        m = re.search(r'("canonical_symbol": "%s",\s*"display_name": ")([^"]+)(")' % re.escape(symbol), raw)
        if not m:
            sys.exit("no catalog row for " + symbol)
        old = m[2]
        if old == new:
            continue
        if new in taken or not re.fullmatch(r"[A-Z][A-Za-z0-9]+", new):
            sys.exit("name already used or not PascalCase: " + new)
        taken.add(new)
        raw = raw[:m.start(2)] + new + raw[m.end(2):]
        end = re.compile(r'\n(\s*)\]\s*\n\s*\}').search(raw, m.end())        # end of this row's evidence list
        source = re.compile(r'"source": "([^"]+)",\s*"line": (\d+)').search(raw, m.end())
        pad = end[1] + "  "
        entry = (",\n%s{\n%s  \"source\": %s,\n%s  \"line\": %s,\n%s  \"detail\": %s,\n%s  \"revision\": %s\n%s}" % (
            pad, pad, json.dumps(source[1]), pad, source[2], pad,
            json.dumps("Renamed from %s. %s" % (old, why)), pad, json.dumps(rev), pad))
        raw = raw[:end.start()] + entry + raw[end.start():]
        done += 1
    json.loads(raw)                                                         # must still be valid JSON
    path.write_bytes(raw.encode("utf-8"))
    print("renamed %d of %d" % (done, len(ren)))


if __name__ == "__main__":
    main()
