#!/usr/bin/env python3
"""Cut raw `.incbin` ranges of data/*.s into labelled objects. Needs the reference ROM.

  data_split.py m4a            parse the m4a sound data from gSongTable (song table, song headers,
                               tracks, samples) and write it as typed objects
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


if __name__ == "__main__":
    if len(sys.argv) >= 2 and sys.argv[1] == "m4a":
        m4a()
    elif len(sys.argv) == 3 and sys.argv[1] == "cuts":
        wanted = {}
        for line in Path(sys.argv[2]).read_text(encoding="utf-8").splitlines():
            fields = line.split("#")[0].split()
            if fields:
                wanted[int(fields[0], 16)] = fields[1] if len(fields) > 1 else None
        print("%d cut(s) applied" % cut(wanted))
    else:
        sys.exit(__doc__)
