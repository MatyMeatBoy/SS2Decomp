# Shining Soul II (Europe) — Decompilation

![matched plus linked](docs/progress/badge_all.svg)
![matching C](docs/progress/badge_decompiled.svg)
[![identified game functions](docs/progress/badge_names.svg)](docs/progress/identification.md)
![game code](docs/progress/badge_game.svg)
![libraries](docs/progress/badge_lib.svg)
![functions](docs/progress/badge_functions.svg)
![with C drafts](docs/progress/badge_drafts.svg)

Work-in-progress **matching** decompilation of *Shining Soul II* for the Game Boy
Advance (Europe, `AU2P`, En/Fr/De/Es/It). The build reproduces the original ROM
byte for byte.

![progress treemap](https://raw.githubusercontent.com/MatyMeatBoy/SS2Decomp/claude/rom-decompilation-research-obsal6/docs/progress/treemap.svg)

Each cell is one function (area = size in bytes):

| Colour | Meaning |
|---|---|
| 🟩 green | decompiled, C compiles to the exact original bytes (counts as done) |
| 🟨 yellow | **C draft** inside `#ifdef NONMATCHING`: compiles, but equivalence is not proven and it is not matching. Start by inspecting the difference (`tools/scripts/nmdiff.py FUNC`) |
| ⬜ grey | still assembly (`INCLUDE_ASM`), no C yet |
| 🟦 blue | original assembly retained in the project (start-up, m4a sound engine core, thunks) |
| 🟪 purple | linked library code from `libgcc.a` / `libc.a`; not decompiled C |

The historical **matched + linked** percentage includes linked library code and
excludes original ASM. **Matching C** counts only matching C bytes over all C
module bytes; compiling drafts are reported separately. Identification is a
separate source/evidence metric, not a decompilation or understanding percentage.
See [metric definitions and naming workflow](docs/agents/PROGRESS_AND_NAMES.md).

CI regenerates the [complete function/name inventory](docs/progress/functions.json),
[identification summary](docs/progress/identification.md), source call graph
([JSON](docs/progress/callgraph.json), [DOT](docs/progress/callgraph.dot)) and
[raw data inventory](docs/progress/data_inventory.json) without a ROM. The graph
records source observations and unresolved calls; it is not a complete runtime graph.

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
