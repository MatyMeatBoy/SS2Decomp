# Shining Soul II (Europe) — Decompilation

A **matching** decompilation of *Shining Soul II* for the Game Boy Advance
(Europe, `AU2P`, En/Fr/De/Es/It): C source that compiles to the original ROM,
byte for byte.

## Where the project stands

| | Question | Status | What is left |
|---|---|---|---|
| ![code](docs/progress/tab_code.svg?v=tabs7) | Does all the code build from source and match? | **Done.** Every game function is matching C. The few routines that were hand-written assembly in the original stay as matching assembly. | Optional source cleanup: [guide](docs/agents/CLEANUP.md) |
| ![names](docs/progress/tab_names.svg?v=tabs7) | Do we know what each function does? | **In progress.** Unnamed functions are still called `sub_XXXXXXXX`. | Name the rest: [guide](docs/agents/NAMING_PIPELINE.md) |
| ![data](docs/progress/tab_data.svg?v=tabs7) | Are graphics, sound, text and tables separated and described, or still raw copies of the ROM? | **Nearly done.** Sound, graphics, palettes, animations, maps, tilemaps, text and tables have a known, checked format. About a hundred small structures are left, and names for most objects. | Describe the formats: [guide](docs/agents/DATA_PIPELINE.md) |

The ROM already rebuilds exactly, so nothing below can break the game: names
and data descriptions only make the source readable and moddable. They are the
long part of the work and the best place to help.

## Progress in detail

Three views. Click a tab to open it; the figure on each tab is its current progress.

<details open>
<summary><img src="docs/progress/tab_code.svg?v=tabs7" alt="Code progress"> &nbsp;<b>Code</b>: is it matching?</summary>

![code treemap](https://raw.githubusercontent.com/MatyMeatBoy/SS2Decomp/claude/rom-decompilation-research-obsal6/docs/progress/treemap.svg?v=tabs7)

Each cell is one function (area = size in bytes):

| Colour | Meaning |
|---|---|
| 🟩 green | matching C or linked library code; separate totals are shown above the map |
| 🟢 light green | routines that were hand-written assembly in the original game (start-up, task scheduler, BIOS call stubs, sound mixer core); kept as matching assembly, complete |
| 🟨 yellow | compiling C draft; tracked large functions fill progressively by documented work milestones |
| ⬜ grey | no matching C, or unfinished tracked milestones; hover for the exact state |

The graphic shows recognized display names while preserving canonical symbols in
its tooltips. Partial yellow fill is a count of evidenced work milestones, not
matching bytes, semantic equivalence or an estimate of remaining time. Function
owners update their own `docs/agents/function_work/sub_XXXXXXXX.json` at checkpoints;
CI refreshes the map when those commits are integrated.

**All code** counts every code byte that builds from this repository and matches:
matching C, linked library code and the original hand-written assembly. The
historical **matched + linked** percentage excludes that assembly. **Matching C** counts only matching C bytes over all C
module bytes; compiling drafts are reported separately. Identification is a
separate source/evidence metric, not a decompilation or understanding percentage.
See [metric definitions and naming workflow](docs/agents/PROGRESS_AND_NAMES.md).

</details>

<details>
<summary><img src="docs/progress/tab_names.svg?v=tabs7" alt="Names progress"> &nbsp;<b>Names</b>: do we know what each function does?</summary>

![names treemap](https://raw.githubusercontent.com/MatyMeatBoy/SS2Decomp/claude/rom-decompilation-research-obsal6/docs/progress/names_treemap.svg?v=tabs7)

Same map as the code view (one cell per function, area = size), coloured by
identification: green has a name confirmed with evidence or already present in
the source, yellow has a proposed name that nobody reviewed, grey has no name
yet. Names are display names in `tools/config/function_names.json`; canonical
`sub_XXXXXXXX` symbols never change, so naming cannot break the match.
To help: [naming pipeline](docs/agents/NAMING_PIPELINE.md),
[identification summary](docs/progress/identification.md).

</details>

<details>
<summary><img src="docs/progress/tab_data.svg?v=tabs7" alt="Data progress"> &nbsp;<b>Data</b>: is the 16 MB of data split and described?</summary>

[![data progress](docs/progress/data_progress.svg?v=tabs7)](docs/progress/data_progress.md)

About 16 MB of the ROM is data, not code. It always builds byte for byte; the
question is how much of it the source *describes* instead of copying. One bar
shows it: green is described (the figure other decompilation projects report
as data progress), yellow is split into objects but still raw bytes, grey is
not split yet.

| Level | Meaning | Example |
|---|---|---|
| 1. Split | the bytes belong to one labelled object with known start and end | "this is resource 12 of category 6", "this is string 404 of language 1" |
| 2. Described | the object's format is known: written out in source, or declared and decodable by the tools | song table, sound samples, pointer tables, palettes, tile sheets |

Described so far: the sound engine data (songs, tracks, samples); inside the
two resource archives the graphics, palettes, sprite animation records, area
maps and screen tilemaps; the text of the five languages (1,493 strings each);
and the tables whose element type the code declares.
`tools/scripts/data_extract.py` decodes graphics to PNG and text to `.txt`
from your own ROM. Not described yet: about a hundred small structures and
one block at the end of the ROM that nothing refers to (1.5% of the data). Described means the format is known and
checked; field and object *names* are separate, later work.

Object counts are a lower bound. To help:
[data pipeline](docs/agents/DATA_PIPELINE.md).

</details>

CI regenerates the [complete function/name inventory](docs/progress/functions.json),
[identification summary](docs/progress/identification.md), source call graph
([JSON](docs/progress/callgraph.json), [DOT](docs/progress/callgraph.dot)) and
[raw data inventory](docs/progress/data_inventory.json) without a ROM. The graph
records source observations and unresolved calls; it is not a complete runtime graph.

This project targets the European ROM only until further notice.
Function naming is active again now that the code matches:
see the [naming pipeline](docs/agents/NAMING_PIPELINE.md) and the
[identification method](docs/agents/IDENTIFICATION_METHOD.md).

## Join the collaboration

Start with the [contributor quick start](docs/agents/QUICKSTART.md). On Windows,
**download the [ROM-free toolkit](SS2Decomp-toolkit-Windows.zip) into your own
folder, extract it there and start with its bootstrap script**. Each contributor
and agent needs an independent checkout. The open work is naming functions,
describing data and cleaning source; each guide says how to reserve a piece.
Bring your own EU ROM; it is never included in the toolkit or uploaded to Git.

Public guides, progress labels and tables, commit messages, and pull-request
text use **English** so contributors can coordinate across communities.

## Building

The ROM is **not** included. You need your own dump, saved as `baserom.gba`:

| File          | SHA1                                       |
|---------------|--------------------------------------------|
| `baserom.gba` | `aa1288be9257337abdfe3034898cf6c7aa778fbc` |

Requirements: `binutils-arm-none-eabi gcc-arm-none-eabi make python3 git gcc` (Linux/WSL) or MSYS2 UCRT64 on Windows
(see [CONTRIBUTING.md](CONTRIBUTING.md)).

```sh
sh tools/setup_tools.sh       # agbcc, m2c, decomp-permuter-agbcc, asm-differ, objdiff (all inside tools/, git-ignored)
make -j$(nproc) compare       # -> shiningsoul2_eu.gba: OK
make expected                 # snapshot of the matching objects (diff target for objdiff / asm-differ)
python3 tools/scripts/gen_objdiff.py && tools/objdiff/objdiff
make progress                 # regenerate docs/progress/*.svg
```

## Contributing
Anyone can help: read [CONTRIBUTING.md](CONTRIBUTING.md) (setup, per-function workflow, compiler rules).
AI agents: [CLAUDE.md](CLAUDE.md) and [docs/agents/](docs/agents/).

## Layout

| Path | Contents |
|------|----------|
| `src/*.c` | C modules. Not yet decompiled functions are pulled in with `INCLUDE_ASM(...)` |
| `asm/nonmatchings/<module>/<func>.s` | one assembly file per not yet decompiled function |
| `asm/crt0.s`, `asm/*.s` | hand written assembly (start up, m4a core, libgcc) |
| `data/rodata.s` | ROM data, taken from `baserom.gba` with `.incbin` |
| `include/` | headers |
| `tools/config/functions.cfg` | function list (address, name) |
| `tools/config/modules.cfg` | module boundaries |
| `tools/scripts/` | analysis, asm generation and progress tools |

To decompile a function: replace its `INCLUDE_ASM` line in `src/<module>.c` with C
code, delete its `.s` file and run `make compare`.

See [`docs/RESEARCH.md`](docs/RESEARCH.md) (Spanish) for the research behind the
project: how other GBA decompilations work, the toolchain and the ROM layout.
