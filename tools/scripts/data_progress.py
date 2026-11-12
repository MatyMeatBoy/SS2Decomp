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
GREEN, MINT, YELLOW, GREY, BG, PANEL, FG, DIM = "#3fb950", "#aff5b4", "#d29922", "#6e7681", "#0d1117", "#161b22", "#e6edf3", "#8b949e"
# Label prefixes whose format is known and checked by the tool that emitted them
# (data_split.py). Raw bytes under such a label are typed, and addresses that
# merely look like pointers inside them are not object starts.
TYPED_PREFIXES = {"gSoundSample_": "m4a sample", "gSong_": "m4a song header or track", "gSongEmpty": "m4a song header"}
# Label prefixes whose boundaries are exact because a container's own offset table gives them
# (data_split.py ssdt). Split, not typed: the format inside each resource is still unknown.
SPLIT_PREFIXES = ("gResMain_", "gResAux_", "gTextL")
RAW_LINE = re.compile(r'^[ 	]*(?:([A-Za-z_]\w*):|\.incbin\s+"%s"\s*,\s*(\S+?)\s*,\s*(\S+?))[ 	]*(?:@.*)?$' % re.escape(REFERENCE), re.M)
STATE_TEXT = {"typed": "described in source", "split": "split object, still raw bytes", "blob": "blob with known objects inside"}


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


TYPE_SIZE_RULES = {"palette": lambda size: size in (512, 1024), "tiles4": lambda size: size % 32 == 0,
                   "text": lambda size: size >= 1, "sprite_anim": lambda size: size >= 12,
                   "map": lambda size: size >= 36, "tilemap": lambda size: size >= 8}


def load_types(root):
    """[(compiled label regex, type)] from tools/config/data_types.txt."""
    path = Path(root, "tools/config/data_types.txt")
    rules = []
    for line in path.read_text(encoding="utf-8").splitlines() if path.exists() else []:
        fields = line.split("#")[0].split()
        if fields:
            if fields[1] not in TYPE_SIZE_RULES:
                raise ValueError("unknown data type " + fields[1])
            rules.append((re.compile(fields[0]), fields[1]))
    return rules


def declared_type(rules, label, size):
    for pattern, kind in rules:
        if pattern.search(label):
            return kind if TYPE_SIZE_RULES[kind](size) else None
    return None


def load_arrays(root):
    """{label: stride * count} from tools/config/data_arrays.txt."""
    path = Path(root, "tools/config/data_arrays.txt")
    arrays = {}
    for line in path.read_text(encoding="utf-8").splitlines() if path.exists() else []:
        fields = line.split("#")[0].split()
        if fields:
            arrays[fields[0]] = int(fields[1], 0) * int(fields[2], 0)
    return arrays


def collect(root):
    lo, hi = data_span(root)
    total = hi - lo
    inventory = data_inventory.collect(root)
    arrays = load_arrays(root)
    types = load_types(root)
    declared = set(arrays)
    raw = []                           # (offset, size, state fixed by its label)
    for path in sorted((Path(root) / "data").glob("*.s")):
        label = ""
        for m in RAW_LINE.finditer(path.read_text(encoding="utf-8")):
            if m[1]:
                label = m[1]
            else:
                if label in arrays and arrays.pop(label) != int(m[3], 0):
                    raise ValueError("%s: stride * count differs from the object size" % label)
                raw.append((int(m[2], 0), int(m[3], 0), "typed" if label.startswith(tuple(TYPED_PREFIXES)) or label in declared
                            or declared_type(types, label, int(m[3], 0)) else
                            "split" if label.startswith(SPLIT_PREFIXES) else ""))
                label = ""                 # a second incbin under one label is not that object any more
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
    """One stacked bar: described (green), split but still raw (yellow), not split (grey); and the same
    three states laid out by ROM position."""
    width, bar, height = 760, 724, 232
    total = report["bytes_total"]
    typed = report["typed"]["bytes"]
    split = report["split"]["bytes"] - typed
    blob = total - typed - split
    parts_of = [(typed, GREEN, "described in source"), (split, YELLOW, "split into objects, still raw bytes"),
                (blob, GREY, "not split yet")]
    out = ['<svg xmlns="http://www.w3.org/2000/svg" width="%d" height="%d" viewBox="0 0 %d %d" role="img" aria-labelledby="dtitle ddesc">' % (width, height, width, height),
           '<title id="dtitle">Data progress</title>',
           '<desc id="ddesc">Share of the data area that is described in source, split into objects, or not split yet.</desc>',
           '<rect width="%d" height="%d" rx="10" fill="%s"/>' % (width, height, BG),
           '<g font-family="DejaVu Sans,Arial,sans-serif" fill="%s">' % FG,
           '<text x="18" y="25" font-size="14" font-weight="bold">Data Â· %.1f MiB of the ROM</text>' % (total / 1048576),
           '<rect x="18" y="38" width="%d" height="22" rx="3" fill="#30363d"/>' % bar]
    x = 18.0
    for size, color, text in parts_of:
        w = bar * size / total
        if size:
            out.append('<rect class="progress-fill" x="%.3f" y="38" width="%.3f" height="22" fill="%s"><title>%s: %s (%s bytes)</title></rect>' % (
                x, w, color, text, escape(fmt(100.0 * size / total)), num(size)))
        x += w
    lx = 18
    for size, color, text in parts_of:
        label = "%s %s" % (fmt(100.0 * size / total), text)
        out += ['<rect x="%d" y="72" width="11" height="11" fill="%s"/>' % (lx, color),
                '<text x="%d" y="82" font-size="11">%s</text>' % (lx + 15, escape(label))]
        lx += 36 + int(len(label) * 6.1)
    out.append('<text x="18" y="106" font-size="10" fill="%s">%s of at least %s objects have their own label. Described is the figure other decompilations report.</text>' % (
        DIM, num(report["split"]["objects"]), num(report["split"]["objects_expected"])))
    y = 132
    lo = report["data_rom_offsets"][0]
    out.append('<text x="18" y="%d" font-size="12" font-weight="bold">Where it is in the ROM (left = 0x%06X, right = 0x%06X)</text>' % (y, lo, report["data_rom_offsets"][1]))
    out.append('<rect x="18" y="%d" width="%d" height="26" fill="%s"/>' % (y + 8, bar, PANEL))
    colors = {"typed": GREEN, "split": YELLOW, "blob": GREY}
    merged = []
    for r in report["ranges"]:      # merge neighbours of one state so the picture stays small
        if merged and merged[-1][2] == r["state"]:
            merged[-1][1] += r["size"]
        else:
            merged.append([r["rom_offset"], r["size"], r["state"]])
    for offset, size, state in merged:
        out.append('<rect class="map" x="%.3f" y="%d" width="%.3f" height="26" fill="%s"><title>0x%06X, %d bytes: %s</title></rect>' % (
            18 + bar * (offset - lo) / total, y + 8, max(bar * size / total, 0.4), colors[state], offset, size, STATE_TEXT[state]))
    out.append('<text x="18" y="%d" font-size="10" fill="%s">Same colours as the bar. The sound data is the green stretch; the two resource archives are the long yellow ones.</text>' % (y + 54, DIM))
    out.append('</g></svg>')
    return "\n".join(out) + "\n"


def render_markdown(report):
    s, t, n, total = report["split"], report["typed"], report["named"], report["bytes_total"]
    return "\n".join([
        "# Data progress", "",
        "The data area is %d bytes (ROM offsets 0x%06X-0x%06X). Two levels are measured." % (
            total, report["data_rom_offsets"][0], report["data_rom_offsets"][1]), "",
        "| Level | Meaning | Progress | Count |", "| --- | --- | ---: | ---: |",
        "| 1. Split | labelled object with no known object start inside it | %s | %d / %d bytes |" % (fmt(s["percent"]), s["bytes"], total),
        "| | objects labelled so far | %s | %d of at least %d |" % (fmt(s["percent_objects"]), s["objects"], s["objects_expected"]),
        "| 2. Described | format known and written in source instead of copied from the reference ROM | %s | %d / %d bytes |" % (fmt(t["percent"]), t["bytes"], total),
        "",
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
