#!/usr/bin/env python3
"""Decompilation progress report: badges + treemap SVG.

A function counts as decompiled when it is in a C module (src/<module>.c) and
is no longer pulled in with INCLUDE_ASM.  Modules marked "asm" in
tools/config/modules.cfg are original hand written assembly (crt0, m4a_1,
libgcc thunks...) and are shown separately.

Usage: progress.py [--out docs/progress] [--json]
Also exports evidence-backed names, a source call graph and raw data inventory.
Needs no ROM: function sizes come from tools/config/functions.cfg.
"""

import argparse
import bisect
import json
import os
import re
import sys
from pathlib import Path
from source_index import strip_comments
from html import escape

ROOT = os.path.join(os.path.dirname(__file__), "..", "..")
CODE_END = 0x080B9704

PURPLE = "#a371f7"
PURPLE_DARK = "#8957e5"

GREEN = "#3fb950"
GREEN_DARK = "#2a7f39"
GREY = "#6e7681"
GREY_DARK = "#484f58"
BLUE = "#388bfd"
BLUE_DARK = "#1f5fb8"
YELLOW = "#d29922"
YELLOW_DARK = "#9e6a03"
BG = "#0d1117"
FG = "#e6edf3"


def load(root=None):
    root = ROOT if root is None else root
    funcs = {}
    for line in Path(root, "tools/config/functions.cfg").read_text(encoding="utf-8").splitlines():
        line = line.split("#")[0].strip()
        if not line:
            continue
        p = line.split()
        if p[0] in ("thumb", "arm"):
            a = int(p[1], 0)
            funcs[a] = p[2] if len(p) > 2 else ("sub_%08X" if p[0] == "thumb" else "arm_%08X") % a
    mods = []
    for line in Path(root, "tools/config/modules.cfg").read_text(encoding="utf-8").splitlines():
        line = line.split("#")[0].strip()
        if not line:
            continue
        p = line.split()
        kind = p[2] if len(p) > 2 else "c"
        cat = p[3] if len(p) > 3 else "game"
        mods.append((int(p[0], 0), p[1], kind, cat))
    mods.sort()
    return funcs, mods


def collect(root=None, code_end=CODE_END, include_prelude=False):
    root = ROOT if root is None else root
    funcs, mods = load(root)
    if include_prelude and any(a < mods[0][0] for a in funcs):
        mods.insert(0, (0x08000000, "crt0", "asm", "game"))
    entries = sorted(a for a in funcs if include_prelude or a >= 0x0800023C)
    starts = [m[0] for m in mods]
    stubbed = set()
    nonmatch = set()
    srcdir = os.path.join(root, "src")
    for fn in os.listdir(srcdir) if os.path.isdir(srcdir) else []:
        if fn.endswith(".c"):
            text = strip_comments(Path(srcdir, fn).read_text(encoding="utf-8"))
            for m in re.finditer(r'(?m)^\s*INCLUDE_ASM\(\s*\"[^\"]*\"\s*,\s*(\w+)\s*\)', text):
                stubbed.add(m.group(1))
            for m in re.finditer(r"#ifdef NONMATCHING\n.*?#else\nINCLUDE_ASM\(\s*\"[^\"]*\"\s*,\s*(\w+)\s*\);\n#endif", text, re.S):
                nonmatch.add(m.group(1))
    modules = []
    for i, (ma, mname, kind, cat) in enumerate(mods):
        mend = mods[i + 1][0] if i + 1 < len(mods) else code_end
        lo = bisect.bisect_left(entries, ma)
        hi = bisect.bisect_left(entries, mend)
        fl = []
        for j in range(lo, hi):
            a = entries[j]
            e = entries[j + 1] if j + 1 < len(entries) else code_end
            e = min(e, mend)
            name = funcs[a]
            if kind == "asm":
                state = "asm"
            elif kind == "linked":
                state = "done"
            else:
                state = ("nonmatch" if name in nonmatch else "todo") if name in stubbed else "done"
            fl.append({"name": name, "addr": a, "size": e - a, "state": state})
        modules.append({"name": mname, "kind": kind, "cat": cat, "funcs": fl,
                        "size": sum(f["size"] for f in fl)})
    return modules


def summarize(modules):
    out = {}
    for cat in ("game", "lib", "all"):
        ms = [m for m in modules if cat == "all" or m["cat"] == cat]
        fs = [f for m in ms for f in m["funcs"] if f["state"] != "asm"]
        done = [f for f in fs if f["state"] == "done"]
        tot_b = sum(f["size"] for f in fs)
        done_b = sum(f["size"] for f in done)
        nm = [f for f in fs if f["state"] == "nonmatch"]
        nm_b = sum(f["size"] for f in nm)
        out[cat] = {
            "bytes_total": tot_b, "bytes_done": done_b,
            "funcs_total": len(fs), "funcs_done": len(done),
            "percent": 100.0 * done_b / tot_b if tot_b else 100.0,
            # C drafts that compile but do not match yet (#ifdef NONMATCHING blocks)
            "funcs_drafts": len(nm), "bytes_drafts": nm_b,
            "percent_with_drafts": 100.0 * (done_b + nm_b) / tot_b if tot_b else 100.0,
        }
        partitions = {
            "decompiled": [f for m in ms if m["kind"] == "c" for f in m["funcs"] if f["state"] == "done"],
            "linked": [f for m in ms if m["kind"] == "linked" for f in m["funcs"]],
            "pending": [f for m in ms if m["kind"] == "c" for f in m["funcs"] if f["state"] == "todo"],
            "original_asm": [f for m in ms if m["kind"] == "asm" for f in m["funcs"]],
            "decompilable": [f for m in ms if m["kind"] == "c" for f in m["funcs"]],
            "all": [f for m in ms for f in m["funcs"]],
        }
        for label, functions in partitions.items():
            out[cat]["funcs_" + label] = len(functions)
            out[cat]["bytes_" + label] = sum(f["size"] for f in functions)
        eligible = out[cat]["bytes_decompilable"]
        out[cat]["percent_decompiled"] = 100.0 * out[cat]["bytes_decompiled"] / eligible if eligible else 100.0
        for prefix in ("funcs", "bytes"):
            s = out[cat]
            if s[prefix + "_done"] != s[prefix + "_decompiled"] + s[prefix + "_linked"]:
                raise ValueError("done must partition into matching C and linked libraries")
            if s[prefix + "_total"] != sum(s[prefix + "_" + k] for k in ("decompiled", "linked", "drafts", "pending")):
                raise ValueError("legacy total must partition into C, linked, drafts and pending")
            if s[prefix + "_all"] != s[prefix + "_total"] + s[prefix + "_original_asm"]:
                raise ValueError("all code must partition into legacy total and original assembly")
            if s[prefix + "_decompilable"] != sum(s[prefix + "_" + k] for k in ("decompiled", "drafts", "pending")):
                raise ValueError("C modules must partition into matching C, drafts and pending")
    asm = [f for m in modules for f in m["funcs"] if f["state"] == "asm"]
    out["asm"] = {"bytes": sum(f["size"] for f in asm), "funcs": len(asm)}
    return out


# ---------------------------------------------------------------- treemap

def squarify(items, x, y, w, h):
    """items: list of (weight, obj). Returns list of (obj, x, y, w, h)."""
    items = [(v, o) for v, o in items if v > 0]
    items.sort(key=lambda t: -t[0])
    total = sum(v for v, _ in items)
    if total <= 0 or w <= 0 or h <= 0:
        return []
    scale = w * h / total
    rects = []
    rest = [(v * scale, o) for v, o in items]

    def worst(row, side):
        s = sum(r for r, _ in row)
        if s == 0:
            return float("inf")
        mx = max(r for r, _ in row)
        mn = min(r for r, _ in row)
        return max(side * side * mx / (s * s), (s * s) / (side * side * mn))

    while rest:
        side = min(w, h)
        row = [rest[0]]
        i = 1
        while i < len(rest) and worst(row + [rest[i]], side) <= worst(row, side):
            row.append(rest[i])
            i += 1
        rest = rest[i:]
        s = sum(r for r, _ in row)
        if w >= h:
            cw = s / h
            cy = y
            for r, o in row:
                ch = r / cw
                rects.append((o, x, cy, cw, ch))
                cy += ch
            x += cw
            w -= cw
        else:
            rh = s / w
            cx = x
            for r, o in row:
                cwid = r / rh
                rects.append((o, cx, y, cwid, rh))
                cx += cwid
            y += rh
            h -= rh
    return rects


def _code_treemap_svg(modules, summary, width=1000, height=540):
    pad = 2
    head = 26
    legend = 42
    full_h = height
    height -= legend
    groups = [("game", "Game code"), ("lib", "SDK libs")]
    sizes = {g: sum(m["size"] for m in modules if m["cat"] == g) for g, _ in groups}
    total = sum(sizes.values())
    parts = []
    parts.append('<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d" viewBox="0 0 %d %d" '
                 'font-family="Segoe UI,Helvetica,Arial,sans-serif">' % (width, full_h, width, full_h))
    parts.append('<rect width="100%%" height="100%%" fill="%s"/>' % BG)
    gx = 0.0
    for g, title in groups:
        gw = width * sizes[g] / total if total else 0
        # libraries are small: give them a minimum width so they stay visible
        if g == "lib":
            gw = max(gw, width * 0.18)
            gx = width - gw
        else:
            gw = width - max(width * sizes["lib"] / total, width * 0.18)
        s = summary[g]
        label = "%s: %.2f%% (%d/%d)" % (title, s["percent"], s["funcs_done"], s["funcs_total"])
        parts.append('<rect x="%.1f" y="0" width="%.1f" height="%d" fill="%s"/>' % (gx, gw - pad, head, "#161b22"))
        parts.append('<text x="%.1f" y="18" fill="%s" font-size="13" font-weight="600">%s</text>' % (
            gx + 6, FG, escape(label)))
        mods = [m for m in modules if m["cat"] == g]
        mrects = squarify([(m["size"], m) for m in mods], gx, head + pad, gw - pad, height - head - pad)
        for m, mx, my, mw, mh in mrects:
            parts.append('<g><title>%s (%d bytes)</title>' % (escape(m["name"]), m["size"]))
            parts.append('<rect x="%.2f" y="%.2f" width="%.2f" height="%.2f" fill="%s"/>' % (
                mx, my, mw, mh, BG))
            frects = squarify([(f["size"], f) for f in m["funcs"]], mx + 1, my + 1, mw - 2, mh - 2)
            for f, fx, fy, fw, fh in frects:
                col, edge = {"linked": (GREEN, GREEN_DARK), "done": (GREEN, GREEN_DARK), "todo": (GREY, GREY_DARK),
                             "nonmatch": (YELLOW, YELLOW_DARK), "asm": (GREY, GREY_DARK)}["linked" if m["kind"] == "linked" else f["state"]]
                work = f.get("work_progress", {}) if f["state"] != "done" else {}
                areas = work.get("areas", [])
                completed = sum(a["state"] == "done" for a in areas)
                work_label = ("%d/%d milestones; not a match" % (completed,len(areas))) if areas else ""
                if areas:
                    col, edge = GREY_DARK, YELLOW_DARK
                parts.append('<rect x="%.2f" y="%.2f" width="%.2f" height="%.2f" fill="%s" stroke="%s" '
                             'stroke-width="0.6"><title>%s  0x%08X  %d bytes  [%s]</title></rect>' % (
                                 fx, fy, max(fw, 0.1), max(fh, 0.1), col, edge, escape((f.get("display_name", f["name"]) + " | " + f["name"] + " | " + f.get("name_status", "unidentified") + (" | " + work_label if work_label else ""))), f["addr"],
                                 f["size"], "linked" if m["kind"] == "linked" else f["state"]))
                if areas:
                    parts.append('<rect x="%.2f" y="%.2f" width="%.2f" height="%.2f" fill="%s" pointer-events="none"/>' % (fx,fy,max(fw,0.1)*completed/len(areas),max(fh,0.1),YELLOW))
                    if fw > 85 and fh > 45:
                        parts.append('<text x="%.1f" y="%.1f" fill="%s" font-size="9" text-anchor="middle" pointer-events="none">%d/%d milestones</text>' % (fx+fw/2,fy+fh/2+17,FG,completed,len(areas)))
                display = f.get("display_name", f["name"])
                if fw > 100 and fh > 28 and (f.get("name_status") in ("confirmed", "existing") or areas) and fy + fh / 2 > my + 20:
                    limit = max(4, int((fw - 10) / 5.5))
                    label = display if len(display) <= limit else display[:limit - 3] + "..."
                    parts.append('<text x="%.1f" y="%.1f" fill="%s" font-size="9" text-anchor="middle" pointer-events="none">%s</text>' % (fx + fw / 2, fy + fh / 2 + 3, FG, escape(label)))
            if mw > 70 and mh > 18:
                tw = len(m["name"]) * 5.6 + 6
                parts.append('<rect x="%.1f" y="%.1f" width="%.1f" height="13" fill="%s" fill-opacity="0.75"/>' % (
                    mx + 1, my + 1, min(tw, mw - 2), BG))
                parts.append('<text x="%.1f" y="%.1f" fill="%s" font-size="10">%s</text>' % (
                    mx + 4, my + 11, FG, escape(m["name"])))
            parts.append('</g>')
        gx += gw
    lx = 6
    ly = height + 6
    for col, txt in ((GREEN, "matching C / linked"), (YELLOW, "draft / work milestones"),
                     (GREY, "no matching C / original ASM")):
        parts.append('<rect x="%d" y="%d" width="11" height="11" fill="%s"/>' % (lx, ly, col))
        parts.append('<text x="%d" y="%d" fill="%s" font-size="11">%s</text>' % (lx + 15, ly + 10, FG, escape(txt)))
        lx += 30 + len(txt) * 6
    s = summary["all"]
    tot = "Matching + linked: %.2f%% of %d code bytes, %d/%d functions" % (
        s["percent"], s["bytes_total"], s["funcs_done"], s["funcs_total"])
    parts.append('<text x="%d" y="%d" fill="%s" font-size="11" text-anchor="end">%s</text>' % (
        width - 6, ly + 29, FG, escape(tot)))
    parts.append('</svg>')
    return "\n".join(parts)


def treemap_svg(modules, summary, width=1000, height=740):
    """Code area stays byte-weighted; identification and data are independent."""
    all_ = summary["all"]
    names = summary.get("identification", {}).get("all", {})
    parts = ['<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d" viewBox="0 0 %d %d" role="img" aria-labelledby="progress-title progress-desc" font-family="Segoe UI,Helvetica,Arial,sans-serif">' % (width,height,width,height),
             '<title id="progress-title">Shining Soul II: code and identification progress</title>',
             '<desc id="progress-desc">Matching C, linked libraries and names are measured separately. Preserved data has no understanding percentage.</desc>',
             '<rect width="100%%" height="100%%" fill="%s"/>' % BG,
             '<text x="12" y="20" fill="%s" font-size="15" font-weight="600">Shining Soul II | verified progress</text>' % FG]
    cards = [
        ("Matching C", "%.2f%%" % all_["percent_decompiled"], "%d / %d C functions" % (all_["funcs_decompiled"],all_["funcs_decompilable"]), GREEN),
        ("Linked libraries", str(all_["funcs_linked"]) + " functions", "%d bytes; not decompiled C" % all_["bytes_linked"], GREEN),
        ("Identification", "%.2f%%" % names.get("percent_identified",0), "%d / %d registered names" % (names.get("identified",0),names.get("total",0)), GREEN),
        ("Historical C + linked", "%.2f%%" % all_["percent"], "%d / %d functions" % (all_["funcs_done"],all_["funcs_total"]), FG)]
    card_width = (width - 60) / 4
    for i,(label,value,detail,color) in enumerate(cards):
        x = 12 + i * (card_width + 12)
        parts += ['<rect x="%.1f" y="30" width="%.1f" height="66" rx="5" fill="#161b22"/>' % (x,card_width),
                  '<text x="%.1f" y="46" fill="%s" font-size="11">%s</text>' % (x+10,FG,escape(label)),
                  '<text x="%.1f" y="69" fill="%s" font-size="21" font-weight="600">%s</text>' % (x+10,color,escape(value)),
                  '<text x="%.1f" y="86" fill="%s" font-size="10">%s</text>' % (x+10,FG,escape(detail))]
    plot_height = height - 190
    plot = _code_treemap_svg(modules,summary,width,plot_height)
    parts.append(plot.replace('<svg ', '<svg x="0" y="104" ', 1))
    y = 104 + plot_height + 20
    data = summary.get("data", {})
    graph = summary.get("callgraph", {})
    lines = [
        "Area = code bytes. Partial yellow fill = recorded milestones, not matching percentage or remaining time.",
        "Data: %d incbin blocks (%.1f MiB), %d / %d descriptive labels; understanding: no percentage." % (data.get("incbin_count",0),data.get("incbin_bytes",0)/1048576,data.get("labels_descriptive",0),data.get("labels_total",0)),
        "Graph: %d functions, %d edges, %d unresolved calls. Source-derived; not a complete runtime graph." % (graph.get("nodes",0),graph.get("edges",0),graph.get("unresolved_calls",0))]
    for i,line in enumerate(lines):
        parts.append('<text x="12" y="%d" fill="%s" font-size="11">%s</text>' % (y+i*18,FG,escape(line)))
    parts.append('</svg>')
    return "\n".join(parts)


def badge_svg(label, value, color):
    def tw(s):
        return int(len(s) * 6.6 + 12)
    lw, vw = tw(label), tw(value)
    w = lw + vw
    return ('<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="20" role="img" aria-label="%s: %s">'
            '<linearGradient id="s" x2="0" y2="100%%"><stop offset="0" stop-color="#bbb" stop-opacity=".1"/>'
            '<stop offset="1" stop-opacity=".1"/></linearGradient>'
            '<clipPath id="r"><rect width="%d" height="20" rx="3" fill="#fff"/></clipPath>'
            '<g clip-path="url(#r)"><rect width="%d" height="20" fill="#555"/>'
            '<rect x="%d" width="%d" height="20" fill="%s"/><rect width="%d" height="20" fill="url(#s)"/></g>'
            '<g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" '
            'font-size="11"><text x="%.1f" y="15" fill="#010101" fill-opacity=".3">%s</text>'
            '<text x="%.1f" y="14">%s</text><text x="%.1f" y="15" fill="#010101" fill-opacity=".3">%s</text>'
            '<text x="%.1f" y="14">%s</text></g></svg>') % (
        w, escape(label), escape(value), w, lw, lw, vw, color, w,
        lw / 2, escape(label), lw / 2, escape(label), lw + vw / 2, escape(value), lw + vw / 2, escape(value))


def pct_color(p):
    if p >= 100:
        return "#4c1"
    if p >= 75:
        return "#97ca00"
    if p >= 50:
        return "#a4a61d"
    if p >= 25:
        return "#dfb317"
    if p >= 5:
        return "#fe7d37"
    return "#e05d44"


def load_function_work(root, registered):
    work_path = Path(root, "tools/config/function_work.json")
    work_rows = json.loads(work_path.read_text(encoding="utf-8"))["functions"] if work_path.exists() else []
    reports = Path(root, "docs/agents/function_work")
    overrides = {}
    for report_path in sorted(reports.glob("*.json")) if reports.exists() else []:
        row = json.loads(report_path.read_text(encoding="utf-8"))
        address = int(row["address"],0)
        if report_path.stem not in ("sub_%08X" % address,"arm_%08X" % address) or address in overrides:
            raise ValueError("Function work report filename/address mismatch")
        overrides[address] = row
    work_rows = [row for row in work_rows if int(row["address"],0) not in overrides] + list(overrides.values())
    work_by_address = {int(row["address"],0): row for row in work_rows}
    if len(work_by_address) != len(work_rows) or not set(work_by_address) <= registered:
        raise ValueError("Unknown or duplicate function work address")
    for row in work_rows:
        if not row.get("areas") or any(a.get("state") not in ("pending","active","done") or not a.get("id") or not a.get("label") or not a.get("evidence") for a in row["areas"]):
            raise ValueError("Work milestones require state, label and evidence")
    for row in work_rows:
        ids = [area["id"] for area in row["areas"]]
        if len(set(ids)) != len(ids):
            raise ValueError("Duplicate work milestone id")
    return work_by_address


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=os.path.join(ROOT, "docs/progress"))
    ap.add_argument("--json", action="store_true", help="print summary as json")
    args = ap.parse_args()
    modules = collect()
    summary = summarize(modules)
    os.makedirs(args.out, exist_ok=True)
    from project_inventory import generate
    summary.update(generate(ROOT, args.out, collect(include_prelude=True)))
    work_by_address = load_function_work(ROOT, {f["addr"] for m in modules for f in m["funcs"]})
    inventory = json.loads(Path(args.out, "functions.json").read_text(encoding="utf-8"))
    names_by_address = {f["addr"]: f for f in inventory["functions"]}
    for module in modules:
        for function in module["funcs"]:
            node = names_by_address.get(function["addr"], {})
            function["work_progress"] = work_by_address.get(function["addr"], {})
            function.update(display_name=node.get("display_name",function["name"]), name_status=node.get("name_status","unidentified"))
    with open(os.path.join(args.out, "treemap.svg"), "w", encoding="utf-8", newline="\n") as fh:
        fh.write('<?xml version="1.0" encoding="UTF-8"?>\n')
        fh.write(treemap_svg(modules, summary))
    for key, label in (("all", "matched + linked"), ("game", "game code"), ("lib", "libraries")):
        s = summary[key]
        with open(os.path.join(args.out, "badge_%s.svg" % key), "w", encoding="utf-8", newline="\n") as fh:
            fh.write(badge_svg(label, "%.2f%%" % s["percent"], pct_color(s["percent"])))
    s = summary["all"]
    with open(os.path.join(args.out, "badge_drafts.svg"), "w", encoding="utf-8", newline="\n") as fh:
        fh.write(badge_svg("with C drafts", "%.2f%%" % s["percent_with_drafts"], pct_color(s["percent_with_drafts"])))
    with open(os.path.join(args.out, "badge_functions.svg"), "w", encoding="utf-8", newline="\n") as fh:
        fh.write(badge_svg("functions", "%d/%d" % (s["funcs_done"], s["funcs_total"]),
                           pct_color(100.0 * s["funcs_done"] / max(1, s["funcs_total"]))))
    for filename, label, value in (("badge_decompiled.svg", "matching C", summary["all"]["percent_decompiled"]),
                                    ("badge_names.svg", "identified game functions", summary["identification"]["game"]["percent_identified"])):
        Path(args.out, filename).write_text(badge_svg(label, "%.2f%%" % value, pct_color(value)), encoding="utf-8")
    with open(os.path.join(args.out, "progress.json"), "w", encoding="utf-8", newline="\n") as fh:
        json.dump(summary, fh, indent=1)
    if args.json:
        print(json.dumps(summary, indent=1))
    else:
        for key in ("game", "lib", "all"):
            s = summary[key]
            print("%-5s %6.2f%%  %5d/%5d funcs  %7d/%7d bytes   (+%d draft funcs: %.2f%% with drafts)" % (
                key, s["percent"], s["funcs_done"], s["funcs_total"], s["bytes_done"], s["bytes_total"],
                s["funcs_drafts"], s["percent_with_drafts"]))
        print("asm   (hand written, not decompiled) %d funcs %d bytes" % (summary["asm"]["funcs"],
                                                                         summary["asm"]["bytes"]))


if __name__ == "__main__":
    main()
