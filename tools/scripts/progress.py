#!/usr/bin/env python3
"""Decompilation progress report: badges + treemap SVG.

A function counts as decompiled when it is in a C module (src/<module>.c) and
is no longer pulled in with INCLUDE_ASM.  Modules marked "asm" in
tools/config/modules.cfg are original hand written assembly (crt0, m4a_1,
libgcc thunks...) and are shown separately.

Usage: progress.py [--out docs/progress] [--json]
Needs no ROM: function sizes come from tools/config/functions.cfg.
"""

import argparse
import bisect
import json
import os
import re
import sys
from html import escape

ROOT = os.path.join(os.path.dirname(__file__), "..", "..")
CODE_END = 0x080B9704

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


def load():
    funcs = {}
    for line in open(os.path.join(ROOT, "tools/config/functions.cfg"), encoding="utf-8"):
        line = line.split("#")[0].strip()
        if not line:
            continue
        p = line.split()
        if p[0] in ("thumb", "arm"):
            a = int(p[1], 0)
            funcs[a] = p[2] if len(p) > 2 else ("sub_%08X" if p[0] == "thumb" else "arm_%08X") % a
    mods = []
    for line in open(os.path.join(ROOT, "tools/config/modules.cfg"), encoding="utf-8"):
        line = line.split("#")[0].strip()
        if not line:
            continue
        p = line.split()
        kind = p[2] if len(p) > 2 else "c"
        cat = p[3] if len(p) > 3 else "game"
        mods.append((int(p[0], 0), p[1], kind, cat))
    mods.sort()
    return funcs, mods


def collect():
    funcs, mods = load()
    entries = sorted(a for a in funcs if a >= 0x0800023C)
    starts = [m[0] for m in mods]
    stubbed = set()
    nonmatch = set()
    srcdir = os.path.join(ROOT, "src")
    for fn in os.listdir(srcdir) if os.path.isdir(srcdir) else []:
        if fn.endswith(".c"):
            text = open(os.path.join(srcdir, fn), encoding="utf-8").read()
            for m in re.finditer(r"INCLUDE_ASM\(\s*\"[^\"]*\"\s*,\s*(\w+)\s*\)", text):
                stubbed.add(m.group(1))
            for m in re.finditer(r"#ifdef NONMATCHING\n.*?#else\nINCLUDE_ASM\(\s*\"[^\"]*\"\s*,\s*(\w+)\s*\);\n#endif", text, re.S):
                nonmatch.add(m.group(1))
    modules = []
    for i, (ma, mname, kind, cat) in enumerate(mods):
        mend = mods[i + 1][0] if i + 1 < len(mods) else CODE_END
        lo = bisect.bisect_left(entries, ma)
        hi = bisect.bisect_left(entries, mend)
        fl = []
        for j in range(lo, hi):
            a = entries[j]
            e = entries[j + 1] if j + 1 < len(entries) else CODE_END
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
        out[cat] = {
            "bytes_total": tot_b, "bytes_done": done_b,
            "funcs_total": len(fs), "funcs_done": len(done),
            "percent": 100.0 * done_b / tot_b if tot_b else 100.0,
        }
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


def treemap_svg(modules, summary, width=1000, height=540):
    pad = 2
    head = 26
    legend = 22
    full_h = height
    height -= legend
    groups = [("game", "Juego / Game"), ("lib", "SDK libs")]
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
                col, edge = {"done": (GREEN, GREEN_DARK), "todo": (GREY, GREY_DARK),
                             "nonmatch": (YELLOW, YELLOW_DARK), "asm": (BLUE, BLUE_DARK)}[f["state"]]
                parts.append('<rect x="%.2f" y="%.2f" width="%.2f" height="%.2f" fill="%s" stroke="%s" '
                             'stroke-width="0.6"><title>%s  0x%08X  %d bytes  [%s]</title></rect>' % (
                                 fx, fy, max(fw, 0.1), max(fh, 0.1), col, edge, escape(f["name"]), f["addr"],
                                 f["size"], f["state"]))
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
    for col, txt in ((GREEN, "decompilado (C matching)"), (YELLOW, "C equivalente, no matching aún"),
                     (GREY, "pendiente (asm)"), (BLUE, "asm original")):
        parts.append('<rect x="%d" y="%d" width="11" height="11" fill="%s"/>' % (lx, ly, col))
        parts.append('<text x="%d" y="%d" fill="%s" font-size="11">%s</text>' % (lx + 15, ly + 10, FG, escape(txt)))
        lx += 30 + len(txt) * 6
    s = summary["all"]
    tot = "Total: %.2f%% de %d bytes de código, %d/%d funciones" % (
        s["percent"], s["bytes_total"], s["funcs_done"], s["funcs_total"])
    parts.append('<text x="%d" y="%d" fill="%s" font-size="11" text-anchor="end">%s</text>' % (
        width - 6, ly + 10, FG, escape(tot)))
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


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", default=os.path.join(ROOT, "docs/progress"))
    ap.add_argument("--json", action="store_true", help="print summary as json")
    args = ap.parse_args()
    modules = collect()
    summary = summarize(modules)
    os.makedirs(args.out, exist_ok=True)
    with open(os.path.join(args.out, "treemap.svg"), "w", encoding="utf-8", newline="\n") as fh:
        fh.write(treemap_svg(modules, summary))
    for key, label in (("all", "decompiled"), ("game", "game code"), ("lib", "libraries")):
        s = summary[key]
        with open(os.path.join(args.out, "badge_%s.svg" % key), "w", encoding="utf-8", newline="\n") as fh:
            fh.write(badge_svg(label, "%.2f%%" % s["percent"], pct_color(s["percent"])))
    s = summary["all"]
    with open(os.path.join(args.out, "badge_functions.svg"), "w", encoding="utf-8", newline="\n") as fh:
        fh.write(badge_svg("functions", "%d/%d" % (s["funcs_done"], s["funcs_total"]),
                           pct_color(100.0 * s["funcs_done"] / max(1, s["funcs_total"]))))
    with open(os.path.join(args.out, "progress.json"), "w", encoding="utf-8", newline="\n") as fh:
        json.dump(summary, fh, indent=1)
    if args.json:
        print(json.dumps(summary, indent=1))
    else:
        for key in ("game", "lib", "all"):
            s = summary[key]
            print("%-5s %6.2f%%  %5d/%5d funcs  %7d/%7d bytes" % (
                key, s["percent"], s["funcs_done"], s["funcs_total"], s["bytes_done"], s["bytes_total"]))
        print("asm   (hand written, not decompiled) %d funcs %d bytes" % (summary["asm"]["funcs"],
                                                                         summary["asm"]["bytes"]))


if __name__ == "__main__":
    main()
