#!/usr/bin/env python3
"""Data progress in three separate levels, computed from source only (no ROM).

  split  bytes in labelled objects that have no known reference target inside them
  typed  bytes that are no longer a raw `.incbin` of the reference ROM
  named  objects whose label is descriptive

Reference targets come from tools/config/data_targets.txt, a frozen list of
candidate object starts (see `--scan`). A range that still contains one of them
is a blob that must be cut further. The list is a heuristic lower bound of the
real object count; refine it with the splitter, never by hand.

  data_progress.py [--out DIR]      write data_progress.{json,md,svg}
  data_progress.py --scan ROM       regenerate data_targets.txt (aligned words in the
                                    data area that point into the data area)
"""
import argparse, bisect, json, re, struct, sys
from pathlib import Path
from xml.sax.saxutils import escape

sys.path.insert(0, str(Path(__file__).resolve().parent))
import data_inventory

ROOT = Path(__file__).resolve().parents[2]
TARGETS = "tools/config/data_targets.txt"
REFERENCE = "baserom.gba"
GREEN, MINT, GREY, BG, PANEL, FG, DIM = "#3fb950", "#aff5b4", "#6e7681", "#0d1117", "#161b22", "#e6edf3", "#8b949e"
# Label prefixes whose format is known and checked by the tool that emitted them
# (data_split.py). Raw bytes under such a label are typed, and addresses that
# merely look like pointers inside them are not object starts.
TYPED_PREFIXES = {"gSoundSample_": "m4a sample", "gSong_": "m4a song header or track", "gSongEmpty": "m4a song header"}
# Label prefixes whose boundaries are exact because a container's own offset table gives them
# (data_split.py ssdt). Split, not typed: the format inside each resource is still unknown.
SPLIT_PREFIXES = ("gResMain_", "gResAux_", "gTextL")
RAW_LINE = re.compile(r'^[ 	]*(?:([A-Za-z_]\w*):|\.incbin\s+"%s"\s*,\s*(\S+?)\s*,\s*(\S+?))[ 	]*(?:@.*)?$' % re.escape(REFERENCE), re.M)
STATE_TEXT = {"typed": "typed in source", "split": "split object, still raw bytes", "blob": "blob with known objects inside"}


def data_span(root):
    item = json.loads(Path(root, "tools/config/regional_progress.json").read_text(encoding="utf-8"))["regions"]["eu"]
    return int(item["code_end"], 0), int(item["data_end"], 0)


def load_targets(root):
    path = Path(root, TARGETS)
    if not path.exists():
        return []
    rows = (line.split("#")[0].strip() for line in path.read_text(encoding="utf-8").splitlines())
    return sorted({int(row, 16) for row in rows if row})


def scan(root, rom_path):
    lo, hi = data_span(root)
    rom = Path(rom_path).read_bytes()
    found = set()
    for off in range(lo, hi - 3, 4):
        value = struct.unpack_from("<I", rom, off)[0] - 0x08000000
        if lo <= value < hi:
            found.add(value)
    text = ["# Candidate data object starts (ROM offsets): aligned words in the data area that",
            "# point into the data area. Heuristic; regenerate with data_progress.py --scan ROM."]
    Path(root, TARGETS).write_text("\n".join(text + ["%06X" % a for a in sorted(found)]) + "\n",
                                   encoding="utf-8", newline="\n")
    return len(found)


def collect(root):
    lo, hi = data_span(root)
    total = hi - lo
    inventory = data_inventory.collect(root)
    raw = []                           # (offset, size, typed by its label)
    for path in sorted((Path(root) / "data").glob("*.s")):
        label = ""
        for m in RAW_LINE.finditer(path.read_text(encoding="utf-8")):
            if m[1]:
                label = m[1]
            else:
                raw.append((int(m[2], 0), int(m[3], 0), "typed" if label.startswith(tuple(TYPED_PREFIXES)) else
                            "split" if label.startswith(SPLIT_PREFIXES) else ""))
    raw.sort()
    if sum(n for _, n, _ in raw) != sum(b["size"] for b in inventory["incbins"] if b["file"] == REFERENCE):
        raise ValueError("raw incbin scan disagrees with the data inventory")
    for (a, n, _), (b, _, _) in zip(raw, raw[1:]):
        if a + n > b:
            raise ValueError("overlapping raw incbin ranges")
    if raw and (raw[0][0] < lo or raw[-1][0] + raw[-1][1] > hi):
        raise ValueError("raw incbin outside the data area")
    targets = load_targets(root)
    ranges, pending = [], 0          # (offset, size, state) covering the whole data area
    cursor = lo
    for offset, size, known in raw:
        if offset > cursor:
            ranges.append((cursor, offset - cursor, "typed"))
        if known:
            ranges.append((offset, size, known))
            cursor = offset + size
            continue
        inside = bisect.bisect_left(targets, offset + size) - bisect.bisect_right(targets, offset)
        pending += inside
        ranges.append((offset, size, "blob" if inside else "split"))
        cursor = offset + size
    if cursor < hi:
        ranges.append((cursor, hi - cursor, "typed"))

    def size_of(state):
        return sum(n for _, n, s in ranges if s == state)

    def pct(a, b):
        return 100.0 * a / b if b else 100.0

    typed, split_only, blob = size_of("typed"), size_of("split"), size_of("blob")
    objects = inventory["labels_total"]
    # Index names written by the splitters say where an object sits, not what it is.
    mechanical = tuple(TYPED_PREFIXES) + SPLIT_PREFIXES
    named = sum(l["descriptive"] and not l["name"].startswith(mechanical) for l in inventory["labels"])
    expected = objects + pending
    return {
        "schema_version": 1, "unit": "bytes", "data_rom_offsets": [lo, hi], "bytes_total": total,
        "split": {"bytes": typed + split_only, "percent": pct(typed + split_only, total),
                  "objects": objects, "objects_expected": expected, "percent_objects": pct(objects, expected),
                  "blobs": sum(s == "blob" for _, _, s in ranges), "blob_bytes": blob, "pending_targets": pending},
        "typed": {"bytes": typed, "percent": pct(typed, total), "raw_incbin_bytes": total - typed},
        "named": {"objects": named, "objects_expected": expected, "percent_objects": pct(named, expected)},
        "ranges": [{"rom_offset": a, "size": n, "state": s} for a, n, s in ranges],
        "limits": "Split and named use a heuristic list of candidate object starts, so the expected object count "
                  "is a lower bound. Typed means the bytes are written in source instead of copied from the "
                  "reference ROM; it does not prove the format is understood.",
    }


def fmt(value):
    return "<0.01%" if 0 < value < 0.01 else "%.2f%%" % value


def num(value):
    return format(value, ",")


def render_svg(report):
    width, bar = 760, 724
    split, typed, named, total = report["split"], report["typed"], report["named"], report["bytes_total"]
    rows = [("1 · Split into objects", split["percent"],
             "%s / %s bytes · %s of at least %s objects" % (num(split["bytes"]), num(total), num(split["objects"]), num(split["objects_expected"])), MINT),
            ("2 · Typed (written in source, not copied)", typed["percent"],
             "%s / %s bytes" % (num(typed["bytes"]), num(total)), GREEN),
            ("3 · Named objects", named["percent_objects"],
             "%s of at least %s objects" % (num(named["objects"]), num(named["objects_expected"])), GREEN)]
    parts = ['<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="318" viewBox="0 0 %d 318" role="img" aria-labelledby="dtitle ddesc">' % (width, width),
             '<title id="dtitle">Data progress: split, typed and named</title>',
             '<desc id="ddesc">Three independent levels for the data area of the ROM, and a map of that area by state.</desc>',
             '<rect width="%d" height="318" rx="10" fill="%s"/>' % (width, BG),
             '<g font-family="DejaVu Sans,Arial,sans-serif" fill="%s">' % FG,
             '<text x="18" y="25" font-size="14" font-weight="bold">Data · %.1f MiB of the ROM</text>' % (total / 1048576)]
    for i, (label, percent, detail, color) in enumerate(rows):
        y = 50 + i * 56
        parts += ['<g><title>%s: %s (%s)</title>' % (escape(label), escape(fmt(percent)), escape(detail)),
                  '<text x="18" y="%d" font-size="12" font-weight="bold">%s</text>' % (y, escape(label)),
                  '<text x="%d" y="%d" text-anchor="end" font-size="12">%s</text>' % (18 + bar, y, escape(fmt(percent))),
                  '<rect x="18" y="%d" width="%d" height="12" rx="3" fill="#30363d"/>' % (y + 7, bar),
                  '<rect class="progress-fill" x="18" y="%d" width="%.4f" height="12" rx="2" fill="%s"/>' % (y + 7, bar * percent / 100, color),
                  '<text x="18" y="%d" font-size="10" fill="%s">%s</text></g>' % (y + 33, DIM, escape(detail))]
    y = 228
    lo = report["data_rom_offsets"][0]
    parts.append('<text x="18" y="%d" font-size="12" font-weight="bold">Map of the data area (left = 0x%06X, right = 0x%06X)</text>' % (y, lo, report["data_rom_offsets"][1]))
    parts.append('<rect x="18" y="%d" width="%d" height="26" fill="%s"/>' % (y + 8, bar, PANEL))
    colors = {"typed": GREEN, "split": MINT, "blob": GREY}
    merged = []
    for r in report["ranges"]:      # merge neighbours of one state so the picture stays small
        if merged and merged[-1][2] == r["state"]:
            merged[-1][1] += r["size"]
        else:
            merged.append([r["rom_offset"], r["size"], r["state"]])
    for offset, size, state in merged:
        parts.append('<rect class="map" x="%.3f" y="%d" width="%.3f" height="26" fill="%s"><title>0x%06X, %d bytes: %s</title></rect>' % (
            18 + bar * (offset - lo) / total, y + 8, max(bar * size / total, 0.4), colors[state], offset, size, STATE_TEXT[state]))
    lx = 18
    for color, text in ((GREEN, "typed in source"), (MINT, "split object, raw bytes"), (GREY, "blob still to split")):
        parts += ['<rect x="%d" y="%d" width="11" height="11" fill="%s"/>' % (lx, y + 44, color),
                  '<text x="%d" y="%d" font-size="11">%s</text>' % (lx + 15, y + 54, text)]
        lx += 34 + len(text) * 6
    parts.append('<text x="18" y="304" font-size="10" fill="%s">Levels are independent. Object counts are a lower bound from pointer references. Field names are not measured.</text>' % DIM)
    parts += ['</g></svg>']
    return "\n".join(parts) + "\n"


def render_markdown(report):
    s, t, n, total = report["split"], report["typed"], report["named"], report["bytes_total"]
    return "\n".join([
        "# Data progress", "",
        "The data area is %d bytes (ROM offsets 0x%06X-0x%06X). Three levels are measured separately." % (
            total, report["data_rom_offsets"][0], report["data_rom_offsets"][1]), "",
        "| Level | Meaning | Progress | Count |", "| --- | --- | ---: | ---: |",
        "| 1. Split | labelled object with no known object start inside it | %s | %d / %d bytes |" % (fmt(s["percent"]), s["bytes"], total),
        "| | objects labelled so far | %s | %d of at least %d |" % (fmt(s["percent_objects"]), s["objects"], s["objects_expected"]),
        "| 2. Typed | written in source instead of copied from the reference ROM | %s | %d / %d bytes |" % (fmt(t["percent"]), t["bytes"], total),
        "| 3. Named | object with a descriptive label | %s | %d of at least %d |" % (fmt(n["percent_objects"]), n["objects"], n["objects_expected"]), "",
        "%d blobs (%d bytes) still contain %d known object starts." % (s["blobs"], s["blob_bytes"], s["pending_targets"]), "",
        report["limits"], "",
        "Method and worker guide: [data pipeline](../agents/DATA_PIPELINE.md).", ""])


def write_outputs(root, out):
    report = collect(root)
    out = Path(out)
    out.mkdir(parents=True, exist_ok=True)
    for extension, text in (("json", json.dumps(report, indent=1) + "\n"), ("svg", render_svg(report)),
                            ("md", render_markdown(report))):
        (out / ("data_progress." + extension)).write_text(text, encoding="utf-8", newline="\n")
    return {k: report[k] for k in ("bytes_total", "split", "typed", "named")}


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--out", default=str(ROOT / "docs/progress"))
    parser.add_argument("--scan", metavar="ROM")
    args = parser.parse_args()
    if args.scan:
        print("%d candidate targets written to %s" % (scan(ROOT, args.scan), TARGETS))
    else:
        print(json.dumps(write_outputs(ROOT, args.out), indent=1))
