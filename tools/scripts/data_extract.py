#!/usr/bin/env python3
"""Decode the data objects whose format is declared in tools/config/data_types.txt. Needs the reference ROM.

  data_extract.py check           run every declared format check against the ROM bytes
  data_extract.py text [OUT]      write the strings of each language as text_LN.txt, decoded with CHARMAP
  data_extract.py png [OUT]       write palettes and tile sheets as PNG under OUT (default build/assets)

Nothing here is committed: the PNGs are derived from the ROM and are only for reading and for a port.
"""
import re, struct, sys, zlib
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import data_progress

ROOT = Path(__file__).resolve().parents[2]


def objects():
    """(label, offset, size, type) for every raw object with a declared type."""
    rules = data_progress.load_types(ROOT)
    found = []
    for path in sorted((ROOT / "data").glob("*.s")):
        label = ""
        for m in data_progress.RAW_LINE.finditer(path.read_text(encoding="utf-8")):
            if m[1]:
                label = m[1]
                continue
            kind = data_progress.declared_type(rules, label, int(m[3], 0))
            if kind:
                found.append((label, int(m[2], 0), int(m[3], 0), kind))
            label = ""
    return found


def lz77(data, start):
    """BIOS LZ77 stream at data[start:]. Returns (end offset, decoded bytes) or None."""
    if start + 4 > len(data) or data[start] != 0x10:
        return None
    size, p, out = int.from_bytes(data[start + 1:start + 4], "little"), start + 4, bytearray()
    if not size:
        return None
    while len(out) < size:
        if p >= len(data):
            return None
        flags = data[p]
        p += 1
        for _ in range(8):
            if len(out) >= size:
                break
            if flags & 0x80:
                if p + 1 >= len(data):
                    return None
                back, count = ((data[p] & 15) << 8 | data[p + 1]) + 1, (data[p] >> 4) + 3
                if back > len(out):
                    return None
                for _ in range(count):
                    out.append(out[-back])
                p += 2
            else:
                out.append(data[p])
                p += 1
            flags <<= 1
    return p, bytes(out[:size])


def map_body(data):
    """The decoded map of a category 2 resource, or None when it does not walk exactly."""
    packed = lz77(data, 16)
    body = packed[1] if packed and len(data) - packed[0] < 4 else data[16:]
    if len(body) < 16:
        return None
    width, height = struct.unpack_from("<hh", body, 0)
    return body if width > 0 and height > 0 and len(body) == 16 + width * height * 8 else None


def png(path, width, height, rgb):
    def chunk(tag, body):
        return struct.pack(">I", len(body)) + tag + body + struct.pack(">I", zlib.crc32(tag + body) & 0xFFFFFFFF)
    rows = b"".join(b"\0" + rgb[y * width * 3:(y + 1) * width * 3] for y in range(height))
    path.write_bytes(b"\x89PNG\r\n\x1a\n" + chunk(b"IHDR", struct.pack(">IIBBBBB", width, height, 8, 2, 0, 0, 0))
                     + chunk(b"IDAT", zlib.compress(rows, 6)) + chunk(b"IEND", b""))


def colours(data):
    out = []
    for i in range(0, len(data), 2):
        v = data[i] | data[i + 1] << 8
        out.append(bytes(((v & 31) * 255 // 31, (v >> 5 & 31) * 255 // 31, (v >> 10 & 31) * 255 // 31)))
    return out


def tiles4(data, palette, columns=32):
    count = len(data) // 32
    rows = (count + columns - 1) // columns
    width, height = columns * 8, rows * 8
    image = bytearray(width * height * 3)
    for t in range(count):
        ox, oy = t % columns * 8, t // columns * 8
        for y in range(8):
            for x in range(8):
                pixel = data[t * 32 + y * 4 + x // 2] >> (4 * (x & 1)) & 15
                at = ((oy + y) * width + ox + x) * 3
                image[at:at + 3] = palette[pixel]
    return width, height, bytes(image)


# Game character set, as far as it is known: letters, space and the control bytes. Unknown bytes are
# written as {XX}; extend this table when a glyph is identified in the font sheet (gResMain_Cat4_0000).
CHARMAP = {0x51: " ", 0xFF: "\\n", 0xFD: "", 0x4F: ".", 0x50: ",",
           0x20: chr(39), 0x3B: "!", 0x3C: "?", 0x52: chr(34)}
CHARMAP.update({0x01 + i: chr(ord("A") + i) for i in range(26)})
CHARMAP.update({0x21 + i: chr(ord("a") + i) for i in range(26)})


def decode_text(data):
    return "".join(CHARMAP.get(b, "{%02X}" % b) for b in data)


def main():
    rom = (ROOT / "baserom.gba").read_bytes()
    found = objects()
    if len(sys.argv) >= 2 and sys.argv[1] == "check":
        errors = 0
        for label, offset, size, kind in found:
            data = rom[offset:offset + size]
            if kind == "palette" and size not in (512, 1024):
                errors += 1
                print("%s: palette of %d bytes" % (label, size))
            if kind == "text" and (data[-1] != 0xFD or 0xFD in data[:-1]):
                errors += 1
                print("%s: a string must end with its only 0xFD" % label)
            if kind == "sprite_anim":
                frames, anims, frame_at, anim_at = struct.unpack_from("<HHii", data, 0)
                if frame_at != 12 or not 12 + 12 * frames <= anim_at or anim_at + 12 * anims > size:
                    errors += 1
                    print("%s: sprite record tables do not fit" % label)
            if kind == "map" and map_body(data) is None:
                errors += 1
                print("%s: map does not decode to 16 + w*h*8 bytes" % label)
            if kind == "tilemap":
                packed = lz77(data, 4)
                if not (packed and size - packed[0] < 4) and size - 4 < 0x800:
                    errors += 1
                    print("%s: neither an exact LZ77 stream nor a raw screen block" % label)
            if kind == "tiles4" and size % 32:
                errors += 1
                print("%s: tile data is not a multiple of 32 bytes" % label)
        print("%d declared object(s), %d bytes, %d error(s)" % (len(found), sum(o[2] for o in found), errors))
        sys.exit(1 if errors else 0)
    if len(sys.argv) >= 2 and sys.argv[1] == "text":
        out = Path(sys.argv[2] if len(sys.argv) > 2 else ROOT / "build/assets")
        out.mkdir(parents=True, exist_ok=True)
        files = {}
        for label, offset, size, kind in found:
            if kind == "text":
                files.setdefault(label.split("_")[0], []).append("%s\t%s" % (label, decode_text(rom[offset:offset + size])))
        for name, lines in files.items():
            (out / (name.replace("gTextL", "text_L") + ".txt")).write_text("\n".join(lines) + "\n", encoding="utf-8")
        print("%d string(s) in %d file(s) under %s" % (sum(map(len, files.values())), len(files), out))
        return
    if len(sys.argv) >= 2 and sys.argv[1] == "png":
        out = Path(sys.argv[2] if len(sys.argv) > 2 else ROOT / "build/assets")
        out.mkdir(parents=True, exist_ok=True)
        by_label = {o[0]: o for o in found}
        grey = [bytes((i * 17,) * 3) for i in range(16)]
        written = 0
        for label, offset, size, kind in found:
            data = rom[offset:offset + size]
            if kind == "palette":
                table = colours(data)
                rows = len(table) // 16
                rgb = b"".join(b"".join(c * 8 for c in table[r * 16:r * 16 + 16]) * 8 for r in range(rows))
                png(out / (label + ".png"), 128, rows * 8, rgb)
            elif kind == "tiles4":
                pal = by_label.get(label + "b")
                table = colours(rom[pal[1]:pal[1] + 32]) if pal else grey
                png(out / (label + ".png"), *tiles4(data, table))
            else:
                continue
            written += 1
        print("%d PNG file(s) in %s" % (written, out))
        return
    sys.exit(__doc__)


if __name__ == "__main__":
    main()
