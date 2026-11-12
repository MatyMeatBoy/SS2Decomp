# Data recognition pipeline

Before 2026-11-12 the two data files held **405 `.incbin` ranges, 16,016,380
bytes**. Current figures are in the Data tab of the README. Three ranges were
89% of everything at the start:

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

CI measures the first two levels and the object-level part of the third in
`docs/progress/data_progress.{svg,md,json}` (the Data tab of the README), with
`tools/scripts/data_progress.py`. It needs no ROM: a raw range counts as split
only when no address of `tools/config/data_targets.txt` falls strictly inside
it. Regenerate that list with `data_progress.py --scan baserom.gba` when the
splitter learns better targets.

The build rule is the same as for code: `make compare` stays OK after every
step. Existing detail on evidence standards is in
`DATA_RECONSTRUCTION_2026_11_08.md`; that process is exact but converted 760
bytes, so it must become mostly mechanical to reach megabytes.

## What was done on 2026-11-12, and the method that worked

One session took the data from 0.6% to 97% split and 17% typed, with the ROM
identical after every step. The order matters more than the tools:

1. **Find the containers first, by reading the loader.** Two blobs were 71% of
   all data. `ResolveResourceByEncodedId` (`sub_08006EE0`) showed they are
   archives with the magic `SSDT`: seven categories, each a count and a table of
   offsets. The archive's own tables give exact object boundaries, so
   `data_split.py ssdt` produced 1,755 resources with no guessing. Lesson: before
   scanning for pointers, grep the C for the blob's label and read the one
   function that indexes it.
2. **Use standard formats where they exist.** The sound area follows the SDK
   m4a structures. `data_split.py m4a` walks song table -> headers -> tracks and
   the sample chain; the walk must end exactly where the next kind starts, which
   is the proof that the parse is right.
3. **Pointer tables last, and only from object starts.** A labelled object that
   begins with a run of ROM pointers is a table: `data_split.py ptrtable` /
   `ptrtables MIN` rewrites it as `.4byte label` lines and labels the targets.
   The five text tables (1,493 strings per language) and 80 smaller tables went
   this way.
4. **Record arrays come from the code.** When the code computes
   `base + STRIDE * index`, the object is one array. Declare it in
   `tools/config/data_arrays.txt`; the progress tool checks stride * count
   against the size.

5. **Declare formats by family, and prove them by decoding.** Inside the
   archives, categories 1, 3 and 6 pair a graphic with a palette and category 4
   is one tile sheet. `tools/config/data_types.txt` declares that with a label
   pattern; `data_extract.py check` tests the sizes and `data_extract.py png`
   writes every palette and tile sheet as PNG. Looking at three PNGs (a sprite,
   a tileset, a palette) is the proof that the format is right. This took the
   described share from 18% to 73%.

   The same step with a structural check instead of a picture covered the
   strings (terminator), the sprite records (struct from `sub_080072A0`: both
   tables must fit) and the 226 area maps (`LoadWorldMapArea` gives the layout;
   every one decodes to exactly 16 + w*h*8 bytes). Described share: 92%.

What did not work: scanning the whole data area for words that look like
pointers. In sample and graphics bytes it finds thousands of false targets
(`data_targets.txt` started with 14,859; about 870 remain relevant). Keep that
list only as the list of blobs still to explain, never as a cut list.

Every splitter is "ROM is the judge": run it, `make -j8 compare`, commit.

6. **Let the C declare the scalars.** `data_split.py scalars` writes an object
   as `.byte/.2byte/.4byte` when every `extern` of its label agrees on one
   scalar element type. 236 objects went this way; the type is the code's own
   statement, not a guess from the bytes.

State at the end of the session: **97.8% split, 96.7% described**, ROM
identical. `data_extract.py check` passes for all 9,218 declared objects.

### Left for workers (547 objects, 530 KB, 3.3%)

List them: raw objects that are not typed in `data_progress.json` (`ranges`
with state `split` or `blob`). Three groups:

| Group | Size | What to do |
| --- | ---: | --- |
| Struct arrays the C already declares (`extern struct T label[]`) | 193 KB | write one record per line from the struct layout; add the label to `data_arrays.txt` once stride * count equals the size |
| Objects reached only through pointer tables | 162 KB | read the function that reads the table; usually a script, an animation list or a small table per map |
| `gUnk_08FD5298`: 175 KB after the aux archive, no reference found | 175 KB | check if anything addresses it; it looks like 4bpp pixels and may be unused |

Rules stay the same: prove the format from the code, add a check to
`data_extract.py`, run `make -j8 compare`, one family per commit. Describing a
family means adding a row to `data_types.txt` (raw bytes with a declared,
checked format) or rewriting it as directives.

Still open inside described objects, in order of value for a port: the
character set (`CHARMAP` in `data_extract.py` knows letters and basic
punctuation only), the 6-byte map cell fields, field names of the record
arrays, and label references instead of numbers inside `.4byte` tables.

## Playbook for the next game (written for Shining Soul 1)

The whole data area of this game went from raw to 97% described in one
session once the order below was followed. Do it in this order:

1. **Progress tool first.** Port `data_progress.py` and `data_inventory.py`
   before touching data. One bar (described / split / raw) and a map of the ROM
   make every later step measurable, and the JSON lists what is left.
2. **Sound.** The m4a walk (`data_split.py m4a`) is game-independent: point it
   at the song table. Expect 15-20% of the data in minutes.
3. **Find the resource resolver.** Search the matched C for the function that
   turns an id into a pointer (here `ResolveResourceByEncodedId`). It names the
   archives, their categories, the per-language text tables and the record
   arrays with their strides. SS1 shares the engine family, so look for the
   same `SSDT` magic first: `data_split.py ssdt` may work unchanged.
4. **Split by the container's own tables**, never by a pointer scan.
5. **Type each category from its loader.** One loader per category gives the
   format; write a check that must hold for every object of the category and a
   decoder (`data_extract.py`). A category is done when the check passes for
   all of it and a decoded sample looks right.
6. **Pointer tables from object starts** (`ptrtables`), then **scalars from C
   declarations** (`scalars`).
7. **Hand the rest to workers** as a list with one row per object: label, size,
   the functions that reference it.

Each step is a script whose result is accepted only if `make compare` stays
OK, so weak workers and background jobs can run them safely.

### Reference projects worth copying from

- pret (`pokeemerald`, `pokefirered`): m4a song/voice group assembly macros and
  `mid2agb`-style track commands; graphics and palette build rules.
- `zeldaret/tmc`, `SAT-R/sa2`: asset lists that extract typed files from the
  base ROM at build time, so assets are named and typed without being stored
  in the repository. That is the model to follow here for graphics.
- `FireEmblemUniverse/fireemblem8u`: text tables and struct-array data in C.

## Stage A: split by references (historical plan)

The plan below was written before the session above; the container-first
method replaced the blind reference scan. Kept for the parts still open.

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
