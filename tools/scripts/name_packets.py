#!/usr/bin/env python3
"""name_packets.py : self-contained naming work for small models (see docs/agents/NAMING_PIPELINE.md).

  name_packets.py queue [N]            unidentified game functions, best next ones first
  name_packets.py packet FUNC...       write build/names/packets/FUNC.md for each function
  name_packets.py batch N [--skip K]   packets for queue entries K..K+N, plus build/names/batch.txt
  name_packets.py check FILE.json      validate a worker's proposal file against the catalog and sources

A packet holds everything a worker needs: the C body, every callee with its current name and one-line
role, every caller with the calling line, and the answer template. Nothing here edits the catalog or any
symbol; proposals go to a reviewer, who integrates them through the normal catalog workflow.
Reads build/progress/{callgraph,functions}.json when present (python3 tools/scripts/progress.py --out
build/progress), otherwise the committed docs/progress copies."""
import json, os, re, sys

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..")
os.chdir(ROOT)
OUT = "build/names"


def load(name):
    for d in ("build/progress", "docs/progress"):
        p = os.path.join(d, name)
        if os.path.exists(p):
            return json.load(open(p, encoding="utf-8"))
    sys.exit("missing %s: run python3 tools/scripts/progress.py --out build/progress" % name)


def graph():
    g = load("callgraph.json")
    nodes = {n["canonical_symbol"]: n for n in g["nodes"]}
    callees, callers = {}, {}
    for e in g["edges"]:
        callees.setdefault(e["caller"], {})[e["callee"]] = e["observations"]
        callers.setdefault(e["callee"], {})[e["caller"]] = e["observations"]
    return nodes, callees, callers


def named(n):
    return n.get("name_status") in ("confirmed", "existing")


def first_sentence(node):
    for ev in node.get("evidence") or []:
        d = ev.get("detail", "")
        m = re.match(r"(.+?[.;])(\s|$)", d)
        return (m.group(1) if m else d)[:200]
    return ""


def queue(nodes, callees, callers):
    """Bottom-up: functions whose callees are already named come first; then the most-called ones."""
    rows = []
    for sym, n in nodes.items():
        if n.get("domain") != "game" or named(n) or n.get("implementation") == "original_asm":
            continue
        cs = [c for c in callees.get(sym, {}) if c in nodes and c != sym]
        unknown = [c for c in cs if not named(nodes[c])]
        rows.append((len(unknown), -len(callers.get(sym, {})), n.get("size", 0), sym, len(cs)))
    rows.sort()
    return rows


def body(sym, node):
    src = "src/%s.c" % node["module"]
    if not os.path.exists(src):
        return src, 0, None
    lines = open(src, encoding="utf-8").read().split("\n")
    pat = re.compile(r"^[A-Za-z_][\w \t\*]*\b%s\s*\([^;]*$" % re.escape(sym))
    for i, l in enumerate(lines):
        if pat.match(l) and not l.rstrip().endswith(";"):
            depth = 0; seen = False
            for j in range(i, min(len(lines), i + 4000)):
                depth += lines[j].count("{") - lines[j].count("}")
                seen = seen or "{" in lines[j]
                if seen and depth == 0:
                    return src, i + 1, lines[i:j + 1]
    return src, 0, None


def packet(sym, nodes, callees, callers):
    n = nodes[sym]
    src, line, text = body(sym, n)
    o = ["# Naming packet: %s" % sym, "",
         "Address %s, module %s, %d bytes. Source: %s:%d" % (n["address"], n["module"], n.get("size", 0), src, line), "",
         "## Rules", "",
         "- Describe only what this code does. No guesses about story, characters or screens unless a callee or",
         "  caller named below proves it. If the role is unclear, answer `\"confidence\": \"low\"` and say what is missing.",
         "- Name: PascalCase, verb first (`UpdateShopCursor`), at most 5 words, no addresses, no `Maybe`/`Unk`.",
         "- Every evidence line must quote a line number of the body below and say what that line does.", "",
         "## Callees", ""]
    cs = sorted(c for c in callees.get(sym, {}) if c in nodes)
    if not cs:
        o.append("(none: leaf function)")
    for c in cs:
        cn = nodes[c]
        o.append("- `%s` = **%s**%s" % (c, cn.get("display_name", c) if named(cn) else "UNNAMED",
                                         (": " + first_sentence(cn)) if named(cn) and first_sentence(cn) else ""))
    o += ["", "## Callers", ""]
    rs = sorted(callers.get(sym, {}))
    if not rs:
        o.append("(no direct C caller: probably a task/callback entry stored in a table or passed as a pointer)")
    for r in rs[:25]:
        rn = nodes.get(r, {})
        ob = callers[sym][r][0]
        o.append("- `%s` = **%s** at %s:%s" % (r, rn.get("display_name", r) if named(rn) else "UNNAMED", ob.get("source"), ob.get("line")))
    if len(rs) > 25:
        o.append("- ... and %d more callers" % (len(rs) - 25))
    o += ["", "## Body", ""]
    if text is None:
        o.append("(no C body found in %s; skip this function)" % src)
    else:
        if len(text) > 400:
            o.append("(%d lines; only the first 400 are shown. Large function: prefer `\"confidence\": \"low\"`.)" % len(text))
        o.append("```c")
        o += ["%5d  %s" % (line + k, l) for k, l in enumerate(text[:400])]
        o.append("```")
    o += ["", "## Answer (JSON only)", "", "```json",
          json.dumps({"canonical_symbol": sym, "address": n["address"], "display_name": "",
                      "summary": "one sentence: what it reads, what it changes, what it returns",
                      "confidence": "high | medium | low",
                      "evidence": [{"source": src, "line": 0, "detail": ""}],
                      "open_questions": []}, indent=2), "```", ""]
    os.makedirs(OUT + "/packets", exist_ok=True)
    p = "%s/packets/%s.md" % (OUT, sym)
    open(p, "w", encoding="utf-8", newline="\n").write("\n".join(o))
    return p


def check(path, nodes):
    data = json.load(open(path, encoding="utf-8"))
    rows = data if isinstance(data, list) else data.get("proposals", [data])
    taken = {n.get("display_name"): s for s, n in nodes.items() if named(n)}
    errors = 0
    seen = {}
    for r in rows:
        sym = r.get("canonical_symbol"); name = r.get("display_name", "")
        def bad(msg):
            nonlocal errors
            errors += 1
            print("%s: %s" % (sym, msg))
        if sym not in nodes:
            bad("unknown function"); continue
        n = nodes[sym]
        if r.get("address", "").lower() != n["address"].lower():
            bad("address does not match the canonical symbol")
        if named(n):
            bad("already identified as %s" % n.get("display_name"))
        if r.get("confidence") not in ("high", "medium", "low"):
            bad("confidence must be high, medium or low")
        if r.get("confidence") == "low":
            continue
        if not re.fullmatch(r"[A-Z][a-z0-9]+(?:[A-Z][a-z0-9]*){1,5}", name):
            bad("display_name %r is not PascalCase with 2-6 words" % name)
        if re.search(r"(?i)maybe|unk|unknown|sub[0-9a-f]{4}|[0-9a-f]{6,}", name):
            bad("display_name %r contains a placeholder or an address" % name)
        if name in taken:
            bad("display_name %r already belongs to %s" % (name, taken[name]))
        if name in seen:
            bad("display_name %r repeated in this file (%s)" % (name, seen[name]))
        seen[name] = sym
        src, line, text = body(sym, n)
        ev = r.get("evidence") or []
        if not ev:
            bad("no evidence")
        for e in ev:
            if text is not None and e.get("source") == src and not (line <= int(e.get("line", 0)) < line + len(text)):
                bad("evidence line %s is outside the function body (%d-%d)" % (e.get("line"), line, line + len(text) - 1))
            if len(e.get("detail", "")) < 15:
                bad("evidence detail is too short to review")
    print("%d proposal(s), %d error(s)" % (len(rows), errors))
    return errors


def main():
    a = sys.argv[1:]
    if not a:
        sys.exit(__doc__)
    nodes, callees, callers = graph()
    if a[0] == "queue":
        q = queue(nodes, callees, callers)
        print("%d unidentified game functions with C" % len(q))
        print("unnamed_callees callers size symbol module")
        for u, nc, size, sym, _ in q[:int(a[1]) if len(a) > 1 else 40]:
            print("%3d %4d %6d %s %s" % (u, -nc, size, sym, nodes[sym]["module"]))
    elif a[0] == "packet":
        for sym in a[1:]:
            print(packet(sym, nodes, callees, callers))
    elif a[0] == "batch":
        n = int(a[1]); k = int(a[a.index("--skip") + 1]) if "--skip" in a else 0
        q = queue(nodes, callees, callers)[k:k + n]
        os.makedirs(OUT, exist_ok=True)
        open(OUT + "/batch.txt", "w", newline="\n").write("\n".join(r[3] for r in q) + "\n")
        for r in q:
            packet(r[3], nodes, callees, callers)
        print("%d packets in %s/packets, list in %s/batch.txt" % (len(q), OUT, OUT))
    elif a[0] == "check":
        sys.exit(1 if check(a[1], nodes) else 0)
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main()
