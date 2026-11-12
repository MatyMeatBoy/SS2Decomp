# Data recognition pipeline

Code is done; data is not started in any volume. On 2026-11-12 the two data
files still hold **405 `.incbin` ranges, 16,016,380 bytes**, and 11 of 412
labels are descriptive. Three ranges are 89% of everything:

| Range start | Size | Pointer targets into it | Pointer words inside | LZ77-like headers |
| --- | ---: | ---: | ---: | ---: |
| `0x08518938` | 9.60 MB | 950 | 1,328 | ~4,500 |
| `0x080BC60C` | 2.79 MB | 3,330 | 9,977 | ~290 |
| `0x08E3FB54` | 1.84 MB | 1,667 | 289 | ~735 |

The last three columns are a heuristic scan (aligned words in `0x08000000-
0x08FFFFFF`; bytes `10 xx xx xx` at aligned offsets), not verified structure.
They only show that the blobs can be cut into several thousand objects from
references alone.

"Recognised" needs a definition before any percentage means something. Use
three levels and report them separately:

1. **Split**: the bytes belong to a labelled object with known start and size.
2. **Typed**: the object's format is known (LZ77 graphic, palette, tilemap,
   pointer table, struct array of type T, m4a song/voice/sample, text) and the
   source declares it in that form, or it is a file under `data/` or `graphics/`
   included by name.
3. **Understood**: fields/files have meaningful names.

The build rule is the same as for code: `make compare` stays OK after every
step. Existing detail on evidence standards is in
`DATA_RECONSTRUCTION_2026_11_08.md`; that process is exact but converted 760
bytes, so it must become mostly mechanical to reach megabytes.

## Stage A: split by references (tooling, strong model, once)

Write `tools/scripts/data_split.py` that:

1. collects every data address the code uses: `R_ARM_ABS32` relocations and
   literal-pool words of all matched objects, plus aligned ROM-pointer words
   found inside data that is already known to be a pointer table;
2. sorts the targets and cuts each `.incbin` at them, emitting
   `gUnk_08XXXXXX:` labels (the canonical naming already in use);
3. iterates: a new object that is entirely aligned ROM pointers (or pointers
   and zeros) becomes a `.4byte label` table, which yields new targets;
4. verifies after every round that the ROM is identical.

This needs no understanding and should take the three big blobs to a few
thousand objects. It is the single most valuable step and is one to two days of
tool work. Everything after it is parallel.

## Stage B: classify objects (small models, mechanical checklist)

Give a worker a list of objects (address, size, first 64 bytes in hex, the code
lines that reference it). It answers with one class from this table and the
test that proves it:

| Class | Test |
| --- | --- |
| Pointer table | every 4 bytes is 0 or a ROM/RAM address that is an object start |
| LZ77 graphic/tilemap | first byte `0x10`, 24-bit size, decompresses to exactly that size and ends at the object end (allow 0-3 padding bytes); the user calls `LZ77UnCompWram`/`Vram` |
| Palette | size multiple of 2 (usually 32 or 512), all halfwords < 0x8000, user copies to palette RAM or calls the palette loader |
| Raw 4bpp/8bpp tiles | size multiple of 32/64, user copies to VRAM |
| m4a song / voice group / sample | referenced from the song table; headers follow the SDK layout (`include/m4a.h`) |
| Text | referenced by the text printer; bytes decode with the game's character table |
| Struct array | the user indexes it with a constant stride; size is a multiple of that stride |
| Scalar table | the user indexes it as `u8`/`s16`/`u32` |
| Unknown | none of the above; record what the user does with it |

The test must be executed by a script, not asserted by the model. Collect
answers as JSON; a `data_check.py` runs each claimed test against the ROM and
rejects claims that fail. Sound and compressed graphics are the bulk of the
bytes and have fixed, checkable formats.

## Stage C: emit typed source (script per class)

- Pointer tables: `.4byte label` lists (already done by stage A).
- Scalar and struct tables: `.byte/.2byte/.4byte` rows, one record per line; or
  a C `const` array once the struct exists in a header-free local form.
- LZ77 objects: keep the compressed bytes as `data/lz/gUnk_08XXXXXX.lz`
  included by name. Decompress to `.bin`/`.png` beside it for reading. Do not
  rebuild from PNG until a compressor that reproduces the original bytes
  exists; a byte-exact compressor is a separate, optional project.
- Sound: song/voice tables as assembly with labels, samples as `.bin` files.
- Text: keep bytes, add a decoded comment per string; a text compiler is
  optional.

Each conversion removes bytes from the `.incbin` inventory, which
`data_inventory.py` already counts.

## Stage D: name (same two-tier scheme as functions)

Objects get names from the function that uses them. Once functions are named
(NAMING_PIPELINE.md), a packet per object lists its users by display name, and
a small model proposes `gEnemyStatTable`-style names with the same
check/review loop. Struct field names are the long tail and need a stronger
reviewer.

## Estimate

Stated as ranges because nothing beyond the heuristic scan was inspected:

| Milestone | Share of the 16 MB | Effort |
| --- | --- | --- |
| A: split all blobs by references | ~100% split | 1-2 days of tooling, then automatic |
| B+C for sound and LZ77/graphics | probably 80-90% of bytes typed | about a week with 3-4 small workers, after the checkers exist |
| B+C for tables, text, maps | most of the remaining objects | 2-4 weeks; thousands of small objects |
| D: names for objects and fields | - | follows function naming; 3-6 weeks, open-ended for field names |
| Every byte typed, including padding and one-off blobs | last 2-5% | uncertain; some blobs may stay "opaque, referenced by X" |

So: bytes go fast once the splitter exists; understanding is the slow part and
depends on function names being finished first.
