# Experimental USA and Japan reconstruction

EU remains the default and the matching-decompilation target. USA and Japan
support currently reconstructs each supplied reference ROM using a small set of
verified, same-address C functions from the normal EU compiler output. All other
bytes come explicitly from the corresponding local reference dump. This is an
initial build and verification facility, not a complete regional source port.

## Local inputs and commands

Follow the normal EU setup first, including the EU `baserom.gba`. Keep your own
USA dump as `baserom_usa.gba` and Japan dump as `baserom_jp.gba` in your checkout.
ROMs and generated outputs are ignored; never add them to Git.

```sh
python3 tools/scripts/rom_regions.py baserom.gba --region eu
python3 tools/scripts/rom_regions.py baserom_usa.gba --region usa
python3 tools/scripts/rom_regions.py baserom_jp.gba --region jp
make compare
make REGION=usa compare
make REGION=jp compare
```

The regional commands require the normal EU build tools and Python dependencies,
including `pyelftools`. They validate both local references, run the unchanged
normal EU comparison, assemble the admitted C fragments, link explicit reference
gaps, and require exact fragment addresses/bytes and the entire target-ROM hash.
An input with a valid header but altered payload is rejected. A reconstruction
with no admitted C functions is also rejected.

Custom input locations can be provided without renaming the original dumps:

```sh
make REGION=usa REGIONAL_ROM="/path/to/Shining Soul II (USA).gba" compare
```

`REGIONAL_OUTPUT` and `REGIONAL_BUILD` optionally select output and scratch paths.
The default results are `shiningsoul2_usa.gba` / `shiningsoul2_jp.gba`, their ELF
files, and `build/regions/usa/report.json` / `build/regions/jp/report.json`.
Only `all` and `compare` are supported with a regional selector; other targets
require `REGION=eu`. EU `nonmatching` continues to compile every EU draft.

## Supported reference identities

Each reference is revision 0 and exactly 16,777,216 bytes. The complete SHA-1 and
SHA-256 values are pinned in `tools/config/rom_regions.json`.

| Region | Game code | SHA-1 |
| --- | --- | --- |
| EU | AU2P | aa1288be9257337abdfe3034898cf6c7aa778fbc |
| USA | AU2E | 541469b319a72ef4bc262483745526ac3eddd925 |
| Japan | AU2J | 19856388caf5140f7527728bd09e20bcb8924eeb |

## Coverage and limitations

The verified USA build contains 1,807 compiler-backed C intervals (16 same-address
EU, 1,787 relocated EU, 4 region-only) totaling 442,108 bytes; Japan contains
1,272 (16, 1,229 and 27) totaling 164,414 bytes. Consult each generated report for the actual current counts, canonical EU symbols, addresses,
sizes and per-function hashes. The admitted intervals include complete function
literal pools. Top-level assembly and `INCLUDE_ASM` fallbacks receive no C credit.

A whole-ROM `OK` verifies reconstruction integrity. It does not establish full
regional C coverage, remaining effort, or an increase in the EU matching or name
percentages. Matching EU bytes at the same address also does not prove that the
corresponding function is executed by a regional gameplay path.

## Progress receipts

The README keeps EU main progress and adds two bars per region: matching C and
data reproduced from source. The standard
[code/data separation](https://decompilati.onl/docs/report-format) and
[independent versions](https://github.com/zeldaret/tp/blob/main/README.md) are the
presentation references. Reports are generated locally and by existing CI;
there is no new external account, service registration or upload.

`tools/config/regional_progress.json` records metadata and byte hashes, never ROM
contents. Code starts at offset0x23C. The independently observed code/data splits
are EU0xB9704, USA0xB9174 and Japan0xBAC14. Each is corroborated by a unique736-byte
anchor consisting of the complete96-byte final `memcpy` followed by the first
0x280-byte data block. These boundaries are layout facts, not a universal shift
for functions, RAM globals or assets. Data continues to the16MiB ROM end and
includes opaque assets and padding.

EU code coverage is collected from current C/ASM source partitions, with SDK
included in this additional view. USA/Japan each currently admit16 complete
normal-C functions totaling1364 bytes, rechecked at main8a7c8ef3. The whole-ROM
reconstruction still copies16775852 bytes and does not earn full source credit.
EU data currently admits the256-byte `__clz_tab` initializer from `src/libgcc2.c`
at0x08366BC0; `ld_script.ld` explicitly links its rodata between the two raw data
objects. No regional source-data reuse has yet been admitted for USA/Japan.

Generate and optionally verify all private references:

```sh
python3 tools/scripts/progress.py --out build/progress
python3 tools/scripts/regional_progress.py --verify-local --out build/regional-progress
```

To refresh coverage, first run EU `make compare`, full `make nonmatching`, and
both regional compare commands. Review the generated `build/regions/*/report.json`
against exact ROM hashes and complete compiled function intervals. Update only
the corresponding region's metadata receipts on a tooling branch, with the
verified revision and per-interval hashes. A source-data addition also needs a
matching source initializer/build interval, its normalized source-text hash,
output byte hash, and removal of any overlapping raw incbin. Re-run local receipt
verification, source-only reporting and regression tests. Independent review and
normal delivery gates still apply. Never copy generated reports or ROMs into Git.

`regional_progress.json` preserves excluded/stale receipt explanations. A changed
source hash earns no data credit until revalidated. The bars measure source
reconstruction, not semantic naming, decoded assets or estimated remaining time.

Regional RAM and game-code changes do not follow one global offset. The builder
admits complete, exact same-address functions, relocated EU functions through an
explicit per-symbol table (below) and region-only sources. It retains the normal
compiler flags and never patches generated opcodes. Interior-byte anchors alone
are not callable entry points.

The progress receipts in `regional_progress.json` still admit only same-address
intervals; counting relocated and region-only functions there is a separate
change.

## Relocated EU functions

USA and Japan keep the EU link order, so most EU functions are the same machine
code at another address: only relocated words (literal-pool addresses and BL
targets) differ. `tools/config/region_symbols_<region>.json` is the regional
symbol table for those functions:

- `functions`: EU address of an EU C function -> regional address where the
  regional build places it;
- `symbols`: EU value -> regional value of every symbol those functions
  reference (functions keep the Thumb bit).

Keys are EU addresses, so renaming functions or globals does not invalidate the
tables. The regional build reuses the normal EU compiler assembly for each listed
function, renames its references into a `__<region>_` namespace, resolves them
from the table and requires the whole ROM to match. The report lists them as
`relocated_functions`.

Regenerate the tables after a normal EU `make compare`:

```sh
python3 tools/scripts/region_symbols.py --region usa
python3 tools/scripts/region_symbols.py --region jp
```

`region_symbols.py` pairs each EU C function with the regional address where all
non-relocated bytes are identical (tracking the running address shift, with a
unique-match search nearby and a pass for functions located by their callers' BL
targets, and a pass that retries the shift of the placed functions on either
side). It then solves each relocation for the regional value of its symbol.
A symbol with two different regional values is dropped, together with every
function that needs it. Functions whose assembly uses a symbol the assembler
resolved inside the EU object (no relocation) are skipped. The tables hold
addresses only, never ROM bytes.

Functions that are not listed still come from the reference ROM. Their code
differs from EU, for example through 16-bit text handling, the 0x454-byte
enemy records or the regional player layouts.

## Regional layouts in shared EU sources

The regional build compiles every `src/*.c` a second time with `-DREGION_USA`
or `-DREGION_JP` (`build/regions/<region>/variant`, EU link order, Makefile
variable `REGION_CPPFLAGS`). `region_symbols.py` pairs and `region_build.py`
relocates the functions of that build, so a layout difference written once in
the shared source moves every function that uses it. The EU build defines
neither macro and must stay byte-identical (`make compare`).

`include/region.h` holds the differences, as EU-offset mapping macros:

| Macro | EU | USA |
| --- | --- | --- |
| `PLAYER_SIZE` | 0x14C | 0x158 |
| `PLAYER_FIELD(o)` | `o` | `o` below 0x0C, `o + 10` below 0x30, then `o + 12` (+0x2E -> +0x38, flags +0x30 -> +0x3C) |
| `ENEMY_SIZE` | 0x2E0 | 0x454 (enemy actor records at `*gUnk_030056F4`) |
| `ENEMY_FIELD(o)` | o | o below 0x206, else o + 0x174 (USA inserts 0x174 bytes at enemy +0x206) |
| `RES_ID(id)` | id | id - 4 (resource ids that USA numbers 4 lower, e.g. 0x5008C; not every archive 5 id moves, so only verified uses) |
| `TEXT_HEADER` | 2 | 4 (header before the string of a text record from `sub_08007290`) |
| `SAVE_FIELD(o)` | `o` | character save record (`gUnk_030034E0`): `o` below 0x0A, `o + 10` below 0x10, then `o + 12` |

`struct Player` is written with these macros. Raw offsets into a player record
must be written `PLAYER_FIELD(0x9C)`, its stride `PLAYER_SIZE`, so the USA
build sees the USA layout. Japan is not described yet (player 0x154 bytes,
flags at +0x38).

Tools (USA; each run after `region_symbols.py --region usa`, then rerun it and
`make REGION=usa compare`):

- `region_diff.py [FUNC]`: unplaced EU C functions ranked by differing
  halfwords against their guessed USA address, or a disassembly diff of FUNC.
- `region_autofix.py [--max-diff N] [FUNC...]`: greedy search wrapping integer
  literals of a function in `PLAYER_FIELD`/`SAVE_FIELD`/`PLAYER_SIZE`; keeps a
  rewrite only when the variant object equals the USA bytes.
- `region_structs.py [MODULE...]`: resizes the pad arrays of 0x14C-byte struct
  views of the player record; keeps a rewrite only when no exact function is
  lost and the module moves closer to the USA bytes.

The macros are the identity in EU, so these rewrites cannot change the EU ROM.

## Region-only C sources

Functions that exist only in one regional ROM, or whose regional form has no
same-address EU counterpart, can be written as C in `src/regions/<region>/*.c`
(`usa` or `jp`). The EU build never compiles these files (`C_SRCS` is
`src/*.c`). `make REGION=<region> compare` compiles them with the normal game
compiler and flags, places each definition at the address in its name and
requires the whole regional ROM to match.

Naming is the address, as for `sub_`/`gUnk_` in EU:

- definitions are `<region>_sub_<ADDRESS>` (for example `usa_sub_0801A1C8`);
- regional callees and globals are referenced as `<region>_sub_<ADDRESS>` and
  `<region>_gUnk_<ADDRESS>` through `asm("...")` labels, so no regional symbol
  table is needed and no EU name is reused for a different address;
- plain EU names (`sub_08000274`) resolve to the EU address and may only be used
  for helpers verified to sit at the same address with the same code.

The report lists these intervals separately as `region_only_functions`.

USA (AU2E) currently has four region-only functions in
`src/regions/usa/usa_only.c`, found by aligning the ordered EU and USA function
lists (link order is preserved; 2029 of 2033 USA functions pair with an EU
function):

| USA address | Size | EU relation |
| --- | ---: | --- |
| `0801A1C8` | 0x32 | 16-bit-text form of `CountRenderableScriptGlyphs` (`sub_0801A638`); USA text uses halfword glyphs ending in `0xFFFD` |
| `0805E02C` | 0x1B0 | No EU counterpart; unreferenced dialogue-task starter with caller-supplied window layout |
| `08067CA4` | 0x5C | `EnqueueLinkEntityPosition` (`sub_080663A4`) moved in link order; USA enemy records are 0x454 bytes (EU 0x2E0) |
| `080813D8` | 0xC0 | 16-bit-text form of `ExpandEncodedTextUnsignedNumberToken` (`sub_080850C0`) |

Most other USA functions differ from EU only in literal-pool addresses; they
are built from the EU source through the relocation table described in
[Relocated EU functions](#relocated-eu-functions).

Japan (AU2J) has 27 region-only functions in `src/regions/jp/jp_only.c`. The
same alignment pairs 2006 of 2035 Japanese functions with an EU function; of
the 29 unpaired entries, `08065274` and `08065428` are not functions but
interior blocks (no prologue) of the Japanese `TaskResolveCoordinatedAttack`
(EU `sub_0806441C`, Japan `080649F4`). Japanese layout differences used by
these sources: player records are 0x154 bytes with the flags word at +0x38
(EU 0x14C and +0x30) based at `03003D80`, enemy records are 0x454 bytes, text
is 16-bit ending in `0xFFFD`, and digit glyphs start at `0xEF` (EU/USA `0x41`).

| Japan address | Size | EU relation |
| --- | ---: | --- |
| `0801A1F4` | 0x32 | Same code as USA `0801A1C8` (16-bit `CountRenderableScriptGlyphs`) |
| `0801C87C` | 0x7C | `AddExperienceAndAdvanceOneLevel` (`sub_0801E4CC`) with the Japanese player layout |
| `0802A01C` | 0xC0 | `HandleOverlapCallbackAndExit` (`sub_08058334`) moved in link order; player stride 0x154 |
| `0805E734` | 0x1B0 | Same code as USA `0805E02C`; unreferenced |
| `08068508` | 0x5C | `EnqueueLinkEntityPosition` (`sub_080663A4`), enemy stride 0x454 |
| `08081E08` | 0xC0 | USA `080813D8` form of `ExpandEncodedTextUnsignedNumberToken` with glyph base `0xEF` |
| 21 dialogue functions | 0xA8-0xB8 | EU `sub_08058E54`-`sub_0805A1B4` dialogue runners, placed next to their scenes |

The 21 dialogue functions are the EU runners identified by text id
(`RunLockedDialogue1261`, `RunFacingDialogue263/421/422/423`,
`RunPostRestInteractionDialogue`, `RunLockedDialogue292`, the Quincy, Romblem,
Pelign, Cognito, Delongue, Vegitar, Hoursey, Hiryu and Oldie dialogues,
`RunActorMessage538/539/383/384` and `ShowSceneInteractionMessage`). EU keeps
them together in one module; Japan links each one into the module of its
scene. They come in three shapes: 0xB8 turns the entity toward the player and
restores its facing, 0xB4 only turns it, and 0xA8 turns nothing.

## Speedrun research

The supplied USA movie was recorded for VBA-rr. A fresh BizHawk/mGBA replay did
not reproduce its early gameplay progression. The movie enables VBA-rr's
prefetch timing option (`MOVIE_SETTING_LAGHACK`); this is not an instruction to
discard recorded lag frames. A separate native VBA-rr experiment reached the
opening forest sequence, but full-movie synchronization has not been verified.
Keep runtime observations separate from matching-source coverage, and require
original-ROM evidence before assigning regional hook addresses.
