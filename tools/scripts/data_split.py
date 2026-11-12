#!/usr/bin/env python3
"""Cut raw `.incbin` ranges of data/*.s into labelled objects. Needs the reference ROM.

  data_split.py m4a            parse the m4a sound data from gSongTable (song table, song headers,
                               tracks, samples) and write it as typed objects
  data_split.py ssdt LABEL NAME  split a resource archive ("SSDT" magic) that starts at LABEL into its header,
                               category tables and one object per resource; NAME prefixes the new labels
  data_split.py ptrtable LABEL COUNT [PREFIX]
                               the object under LABEL starts with COUNT pointers: write them as label
                               references and label every target (PREFIX_NNNN or gUnk_08XXXXXX)
  data_split.py ptrtables MIN  do that for every raw object that begins with at least MIN pointers
  data_split.py cuts FILE      cut at the ROM offsets listed in FILE (`OFFSET [label]` per line, hex);
                               unnamed cuts get the canonical gUnk_08XXXXXX label

Every command rewrites the .s in place. The caller must then run `make compare`; the ROM is the
judge, exactly as for code. Nothing here guesses a format: `m4a` follows the SDK structures and
stops with an error if the data does not walk cleanly; `cuts` only adds labels.
"""
import re, struct, sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
ROM_BASE = 0x08000000
INCBIN = re.compile(r'^[ \t]*\.incbin\s+"baserom\.gba"\s*,\s*(0x[0-9A-Fa-f]+|\d+)\s*,\s*(0x[0-9A-Fa-f]+|\d+)[ \t]*$', re.M)


def rom_bytes():
    return (ROOT / "baserom.gba").read_bytes()


def raw(offset, size):
    return '\t.incbin "baserom.gba", 0x%X, 0x%X' % (offset, size)


def labelled(name, body):
    return "\t.global %s\n%s:\n%s" % (name, name, body)


def data_files():
    return sorted((ROOT / "data").glob("*.s"))


def replace_range(lo, hi, text):
    """Replace the single raw incbin that is exactly [lo, hi) by `text` (which carries its own first label
    only if the incbin had none; here the existing label stays in front, so text starts with the body)."""
    for path in data_files():
        source = path.read_bytes().decode()
        for m in INCBIN.finditer(source):
            if int(m[1], 0) == lo and int(m[1], 0) + int(m[2], 0) == hi:
                path.write_bytes((source[:m.start()] + text + source[m.end():]).encode())
                return path
    raise SystemExit("no raw incbin covers exactly 0x%X-0x%X" % (lo, hi))


def cut(cuts):
    """cuts: {offset: label or None}. Splits every raw incbin that has cut points strictly inside."""
    done = 0
    for path in data_files():
        source = path.read_bytes().decode()

        def split(m):
            nonlocal done
            lo, size = int(m[1], 0), int(m[2], 0)
            inside = sorted(o for o in cuts if lo < o < lo + size)
            if not inside:
                return m[0]
            done += len(inside)
            edges = [lo] + inside + [lo + size]
            parts = [raw(lo, edges[1] - lo)]
            for a, b in zip(edges[1:], edges[2:]):
                parts.append(labelled(cuts[a] or "gUnk_%08X" % (ROM_BASE + a), raw(a, b - a)))
            return "\n".join(parts)

        new = INCBIN.sub(split, source)
        if new != source:
            path.write_bytes(new.encode())
    return done


def m4a():
    rom = rom_bytes()
    u32 = lambda o: struct.unpack_from("<I", rom, o)[0]
    is_rom = lambda v: ROM_BASE <= v < ROM_BASE + len(rom)
    symbols = {}
    for path in data_files():
        text = path.read_text(encoding="utf-8")
        m = re.search(r'^gSongTable:\s*\n\s*\.incbin\s+"baserom\.gba"\s*,\s*(\S+)\s*,\s*(\S+)', text, re.M)
        if m:
            lo, hi = int(m[1], 0), int(m[1], 0) + int(m[2], 0)
    # 1. song table: {header pointer, u16 player, u16 player}
    entries, o = [], lo
    while is_rom(u32(o)) and rom[o + 5] == 0 and rom[o + 7] == 0:
        entries.append((u32(o) - ROM_BASE, rom[o + 4], rom[o + 6]))
        o += 8
    table_end = o
    headers = {}                                   # offset -> first song index
    for i, (h, _, _) in enumerate(entries):
        headers.setdefault(h, i)
    dummy = min(headers)                           # the empty song directly after the table
    if dummy != table_end or rom[dummy] != 0:
        raise SystemExit("expected the empty song right after the song table")
    # 2. samples: {u32 type, u32 freq, u32 loop, u32 size, data[size + 1]} aligned to 4
    samples, o = [], dummy + 4
    while True:
        kind, freq, loop, size = struct.unpack_from("<IIII", rom, o)
        if kind not in (0, 0x40000000) or not 0 < size < 0x200000 or not 0 < freq < 0x8000000:
            break
        end = (o + 16 + size + 1 + 3) & ~3
        samples.append((o, end, kind, freq, loop, size))
        o = end
    # 3. tracks and headers fill the rest; a track ends where the next object starts
    tracks = {}
    for h, i in headers.items():
        if h == dummy:
            continue
        for t in range(rom[h]):
            tracks.setdefault(u32(h + 8 + 4 * t) - ROM_BASE, (i, t))
    if min(tracks) != o:
        raise SystemExit("sample chain ends at 0x%X but the first track is at 0x%X" % (o, min(tracks)))
    name = {dummy: "gSongEmpty"}
    name.update({h: "gSong_%03d" % i for h, i in headers.items() if h != dummy})
    name.update({t: "gSong_%03d_Track%d" % it for t, it in tracks.items()})
    name.update({s[0]: "gSoundSample_%08X" % (ROM_BASE + s[0]) for s in samples})
    voicegroups = set()
    out = ["\t@ m4a song table: header, music player, music player (SDK struct Song)"]
    for h, a, b in entries:
        out.append("\t.4byte %s\n\t.2byte %d, %d" % (name[h], a, b))
    out.append(labelled("gSongEmpty", "\t.4byte 0"))
    for s, end, kind, freq, loop, size in samples:
        out.append(labelled(name[s], "\t.4byte 0x%X, 0x%X, %d, %d\t@ type (0x40000000 = loop), pitch, loop start, size\n%s"
                            % (kind, freq, loop, size, raw(s + 16, end - s - 16))))
    starts = sorted(set(tracks) | (set(headers) - {dummy}))
    tail = max(h + 8 + 4 * rom[h] for h in headers if h != dummy)
    for a, b in zip(starts, starts[1:] + [tail]):
        if a in tracks:
            out.append(labelled(name[a], raw(a, b - a)))
            continue
        count = rom[a]
        if a + 8 + 4 * count != b:
            raise SystemExit("song header at 0x%X does not end at the next object" % a)
        group = u32(a + 4)
        voicegroups.add(group)
        body = ["\t.byte %d, %d, %d, %d\t@ tracks, blocks, priority, reverb" % tuple(rom[a:a + 4]),
                "\t.4byte 0x%08X\t@ voice group" % group]
        body += ["\t.4byte %s" % name[u32(a + 8 + 4 * t) - ROM_BASE] for t in range(count)]
        out.append(labelled(name[a], "\n".join(body)))
    if tail < hi:
        out.append(labelled("gUnk_%08X" % (ROM_BASE + tail), raw(tail, hi - tail)))
    path = replace_range(lo, hi, "\n".join(out))
    print("%s: %d song entries, %d songs, %d tracks, %d samples, voice groups %s" % (
        path.name, len(entries), len(headers), len(tracks), len(samples), ", ".join("0x%08X" % v for v in sorted(voicegroups))))


PAIRED = (1, 3, 6)      # categories whose ids have two resources (ResolveResourceByEncodedId kinds 7, 9, 8)


def ssdt(label, name):
    """Archive: "SSDT", u32 version, u32 category offsets[7]. Category: u32 count, then one offset per id
    (two for PAIRED), relative to the category start, ascending; a resource ends where the next begins."""
    rom = rom_bytes()
    u32 = lambda o: struct.unpack_from("<I", rom, o)[0]
    pattern = re.compile(r'^%s:\s*\n\s*\.incbin\s+"baserom\.gba"\s*,\s*(\S+)\s*,\s*(\S+)' % re.escape(label), re.M)
    for path in data_files():
        m = pattern.search(path.read_text(encoding="utf-8"))
        if m:
            lo, hi = int(m[1], 0), int(m[1], 0) + int(m[2], 0)
            break
    else:
        raise SystemExit("no raw incbin directly under " + label)
    if rom[lo:lo + 4] != b"SSDT":
        raise SystemExit("no SSDT magic at 0x%X" % lo)
    starts = [u32(lo + 8 + 4 * k) for k in range(7)] + [hi - lo]
    if starts[0] != 0x24 or starts != sorted(starts):
        raise SystemExit("unexpected SSDT header")
    out = ['\t.ascii "SSDT"', "\t.4byte %d\t@ version" % u32(lo + 4)]
    out += ["\t.4byte %s_Cat%d - %s" % (name, k, label) for k in range(7)]
    resources = 0
    for k in range(7):
        base, size, count = lo + starts[k], starts[k + 1] - starts[k], u32(lo + starts[k])
        width = 2 if k in PAIRED else 1
        table = [u32(base + 4 + 4 * i) for i in range(count * width)]
        cat = "%s_Cat%d" % (name, k)
        body = ["\t.4byte %d\t@ ids" % count]
        if count == 0:
            if size != 4:
                raise SystemExit("empty category %d has payload" % k)
            out.append(labelled(cat, "\n".join(body)))
            continue
        if table != sorted(set(table)) or table[0] != 4 + 4 * len(table) or table[-1] >= size:
            raise SystemExit("category %d does not have an ascending, gap-free offset table" % k)
        names = ["%s_%04d%s" % (cat, i // width, ("", "b")[i % width] if width == 2 else "") for i in range(len(table))]
        body += ["\t.4byte %s - %s" % (n, cat) for n in names]
        out.append(labelled(cat, "\n".join(body)))
        for n, a, b in zip(names, table, table[1:] + [size]):
            out.append(labelled(n, raw(base + a, b - a)))
        resources += len(table)
    path = replace_range(lo, hi, "\n".join(out))
    print("%s: %s split into %d resources" % (path.name, label, resources))


LABEL_RAW = re.compile(r'^([A-Za-z_]\w*):\s*\n\s*\.incbin\s+"baserom\.gba"\s*,\s*(\S+)\s*,\s*(\S+)', re.M)


def raw_objects():
    """{offset: (label, size)} for every label that is directly followed by a raw incbin."""
    found = {}
    for path in data_files():
        for m in LABEL_RAW.finditer(path.read_text(encoding="utf-8")):
            found[int(m[2], 0)] = (m[1], int(m[3], 0))
    return found


def data_area():
    import json
    item = json.loads((ROOT / "tools/config/regional_progress.json").read_text(encoding="utf-8"))["regions"]["eu"]
    return int(item["code_end"], 0), int(item["data_end"], 0)


def ptrtable(label, count, prefix=None):
    """The object under LABEL starts with COUNT ROM pointers. Write them as label references and give every
    target its own label (PREFIX_NNNN by first index, or the canonical gUnk name)."""
    rom = rom_bytes()
    objects = raw_objects()
    lo = next((o for o, (name, _) in objects.items() if name == label), None)
    if lo is None:
        raise SystemExit("no raw incbin directly under " + label)
    size = objects[lo][1]
    area = data_area()
    if count * 4 > size:
        raise SystemExit("table longer than the object")
    targets = [struct.unpack_from("<I", rom, lo + 4 * i)[0] - ROM_BASE for i in range(count)]
    if any(t != -ROM_BASE and not area[0] <= t < area[1] for t in targets):
        raise SystemExit("%s: entry outside the data area" % label)
    if count * 4 < size:
        cut({lo + 4 * count: None})
    names, new = {}, {}
    objects = raw_objects()
    for i, t in enumerate(targets):
        if t == -ROM_BASE or t in names:
            continue
        if t in objects:
            names[t] = objects[t][0]
        elif lo <= t < lo + 4 * count:
            raise SystemExit("%s: entry points into the table itself" % label)
        else:
            names[t] = new[t] = ("%s_%04d" % (prefix, i)) if prefix else "gUnk_%08X" % (ROM_BASE + t)
    made = cut(new)
    if made != len(new):
        raise SystemExit("%s: %d target(s) are not inside a raw range (already typed source?)" % (label, len(new) - made))
    replace_range(lo, lo + 4 * count, "\n".join("\t.4byte %s" % (names[t] if t != -ROM_BASE else "0") for t in targets))
    print("%s: %d pointers, %d new objects" % (label, count, len(new)))
    return len(new)


def ptrtables_auto(minimum):
    """Convert every raw object that begins with at least MINIMUM ROM pointers into the data area. The run
    stops at the first word that is not such a pointer (or at the first address the table itself points to)."""
    rom = rom_bytes()
    area = data_area()
    total = 0
    while True:
        objects = raw_objects()
        todo = None
        for lo in sorted(objects):
            label, size = objects[lo]
            if label.startswith(("gSong", "gSoundSample", "gRes")):
                continue
            n, limit = 0, lo + size
            while lo + 4 * n + 4 <= limit:
                t = struct.unpack_from("<I", rom, lo + 4 * n)[0] - ROM_BASE
                if not area[0] <= t < area[1]:
                    break
                if lo < t < limit:
                    limit = min(limit, t)
                n += 1
            if n >= minimum:
                todo = (label, n)
                break
        if not todo:
            return total
        total += ptrtable(*todo) + 1


if __name__ == "__main__":
    if len(sys.argv) >= 2 and sys.argv[1] == "m4a":
        m4a()
    elif len(sys.argv) == 4 and sys.argv[1] == "ssdt":
        ssdt(sys.argv[2], sys.argv[3])
    elif len(sys.argv) in (4, 5) and sys.argv[1] == "ptrtable":
        ptrtable(sys.argv[2], int(sys.argv[3], 0), sys.argv[4] if len(sys.argv) == 5 else None)
    elif len(sys.argv) == 3 and sys.argv[1] == "ptrtables":
        print("%d object(s) written" % ptrtables_auto(int(sys.argv[2], 0)))
    elif len(sys.argv) == 3 and sys.argv[1] == "cuts":
        wanted = {}
        for line in Path(sys.argv[2]).read_text(encoding="utf-8").splitlines():
            fields = line.split("#")[0].split()
            if fields:
                wanted[int(fields[0], 16)] = fields[1] if len(fields) > 1 else None
        print("%d cut(s) applied" % cut(wanted))
    else:
        sys.exit(__doc__)
