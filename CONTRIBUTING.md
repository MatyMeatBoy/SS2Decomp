# Contributing

This is a matching decompilation: C must compile with the module's original agbcc toolchain to the exact original bytes. A function is complete only when the integrated build still prints `shiningsoul2_eu.gba: OK` from `make compare`.

Start with the [contributor quickstart](docs/agents/QUICKSTART.md): on Windows, use the downloadable toolkit in its own folder; on Linux, use the native setup. The native setup and detailed workflow are also documented below.

`MATCH (positions only)` was an unsafe heuristic and has been removed. It does not prove a match. Read [what proves a match and how to audit it](docs/agents/MATCH_VERIFICATION.md). C that merely looks similar belongs in a `#ifdef NONMATCHING` draft.

## 1. Set up the environment once

Supply your own European ROM dump as `baserom.gba` (SHA-1 `aa1288be9257337abdfe3034898cf6c7aa778fbc`). **Never upload it to the repository.**

| System | Native setup packages |
|---|---|
| Debian/Ubuntu/WSL | `sudo apt install git make gcc python3 python3-pip binutils-arm-none-eabi gcc-arm-none-eabi` |
| Windows (MSYS2) | Install [MSYS2](https://www.msys2.org), then run `pacman -S git make mingw-w64-ucrt-x86_64-{arm-none-eabi-gcc,python,python-pip,python-capstone,python-pyelftools,python-levenshtein}` in its terminal. Open **UCRT64**, or put `C:\msys64\ucrt64\bin;C:\msys64\usr\bin` first in `PATH`. |
| macOS | `brew install make python arm-none-eabi-gcc` (use `gmake`) |

```sh
git clone https://github.com/MatyMeatBoy/SS2Decomp.git && cd SS2Decomp
cp /path/to/your/rom.gba baserom.gba
sh tools/setup_tools.sh        # agbcc, m2c, permuter-agbcc, asm-differ, objdiff, Python dependencies, pre-commit hook
make -j$(nproc) compare        # -> shiningsoul2_eu.gba: OK
make expected                 # copy matching .o files into expected/ for comparison
python3 tools/scripts/gen_objdiff.py
mkdir -p ghi && tar xJf docs/ghidra/ghidra_out.tar.xz -C .   # per-function Ghidra output for reading
```

The toolkit is installed under ignored directories in `tools/`:

| Tool | Purpose |
|---|---|
| `tools/agbcc` | Original GBA SDK compiler family (GCC 2.95, [pret/agbcc](https://github.com/pret/agbcc)) |
| `tools/objdiff` | [objdiff](https://github.com/encounter/objdiff): visual function comparison, rebuilding on save. **Primary comparison tool.** |
| `tools/asm-differ` | [asm-differ](https://github.com/simonlindholm/asm-differ): terminal comparison, `python3 tools/asm-differ/diff.py -mwo FUNC` |
| `tools/m2c` | [m2c](https://github.com/matt-kempster/m2c): initial C draft from assembly |
| `tools/decomp-permuter` | [decomp-permuter-agbcc](https://github.com/WhenGryphonsFly/decomp-permuter-agbcc): randomized C mutations for close candidates |
| `tools/scripts/` | Project workflow scripts, described below |

Optional reading tools: [Ghidra](https://ghidra-sre.org) 12.1.x (processor `ARM:LE:32:v4t`, base `0x08000000`) and [ReVa](https://github.com/cyberkaida/reverse-engineering-assistant), which exposes Ghidra to an AI assistant through MCP (`uv tool install reverse-engineering-assistant`, then `claude mcp add ReVa -- mcp-reva` with `GHIDRA_INSTALL_DIR` set). [decomp.me](https://decomp.me), using the GBA platform and `agbcc` compiler, can share a candidate with other contributors.

## 2. Work on one function

1. **Choose and claim.** Inspect `INCLUDE_ASM` entries with `rg -n INCLUDE_ASM src/`, or use `python3 tools/scripts/nm_drafts.py /tmp/nm` to list drafts and their distances (0 matches; -1 does not compile). Start with yellow drafts and small functions. Use `python3 tools/scripts/claim.py status`, claim a shard with `python3 tools/scripts/claim.py take YOUR_NAME`, and check `claim.py who FUNC` before editing. See [AGENTS.md](AGENTS.md) for exclusive ownership and checkout rules.
2. **Read.** `GHIDRA_OUT=ghi tools/scripts/gv.sh sub_XXXXXXXX` shows Ghidra C and original assembly. Ghidra is a reading aid, not matching C.
3. **Draft.** Run `python3 tools/scripts/decomp.py m2c sub_XXXXXXXX > /tmp/f.c`, then fix types by hand.
4. **Iterate toward an exact match.** Replace the target `INCLUDE_ASM` with candidate C in `src/<module>.c` to use objdiff: open `tools/objdiff/objdiff` at the repository root and select the unit and function. Saving rebuilds the unit and updates the differences. Alternatively, run `python3 tools/scripts/decomp.py check FUNC /tmp/f.c` for an isolated compile and diff, or `python3 tools/asm-differ/diff.py -mwo FUNC` for a live comparison against `expected/`. When only a few register or ordering differences remain, try `python3 tools/scripts/permute.py FUNC /tmp/f.c --time 300`.
5. **Process owned yellow drafts.** `python3 tools/scripts/yellow.py --shard N` scores drafts, unwraps exact matches, runs the permuter on close candidates (scores 1–12), and applies winners. Never run an unrestricted global batch while other workers are active.
6. **Apply.** `python3 tools/scripts/apply_permuted.py /tmp/f.c` inserts the function, deletes its `.s`, rebuilds the ROM, and rolls back if the SHA-1 changes. If applying manually, remove `asm/nonmatchings/<module>/FUNC.s` only as part of the verified application. Follow the local type/alias workflow in [AGENTS.md](AGENTS.md) when isolated and module contexts differ.
7. **Verify and deliver.** Require `make compare` OK, `make nonmatching` OK, and `python3 tools/scripts/check_tree.py`. Generate local progress with `python3 tools/scripts/progress.py --out build/progress`; never commit `docs/progress/`, which CI regenerates. Make a small commit (`decompile sub_XXXXXXXX` or the established descriptive name), then use `claim.py pr` for review or the authorized `claim.py land` workflow. PRs target `claude/rom-decompilation-research-obsal6`. Never bypass hooks.

If the function does not match after the time box, preserve the work as a draft rather than discarding it:

```c
#ifdef NONMATCHING
void sub_XXXXXXXX(void) { /* ... */ }
#else
INCLUDE_ASM("asm/nonmatchings/<module>", sub_XXXXXXXX);
#endif
```

Use `python3 tools/scripts/addnm.py FUNC /tmp/f.c` to create the draft.

## 3. Compiler rules

- **C89:** declarations belong at the start of a block; do not use `for (int i = 0; ...)`. `python3 tools/scripts/c89fix.py` fixes declaration placement.
- Game code uses `agbcc -O2 -fprologue-bugfix`. m4a and some other modules use `old_agbcc`; `agb_flash` uses `-O1`. The Makefile defines the actual rules; use `tools/scripts/which_cc.py` to inspect a module.
- Use symbols such as `gUnk_03005CF4`, not literal addresses. To express another view of a global, use an alias such as `extern struct GameState *gGameState asm("gUnk_03005CF4");` instead of changing an existing declaration.
- `include/*.h` is append-only: do not rewrite existing lines while others work in parallel.
- Keep functions in address order (`tools/scripts/sort_module.py`). Do not convert handwritten assembly (`asm/crt0.s`, `asm/m4a_1.s`, `asm/sched.s`, libgcc) through the ordinary shard workflow. The separately documented [m4a C workflow](docs/agents/SDK_M4A_C_SOURCE.md) records its approved ABI boundaries and evidence.
- Start with [patterns that resolved many drafts](docs/agents/AI_AGENTS.md#patterns-that-resolved-many-drafts).

## 4. Troubleshooting

| Symptom | Action |
|---|---|
| `make compare` fails | Run `python3 tools/scripts/first_shift.py` to locate the first layout change. `python3 tools/scripts/revalidate.py --apply` can restore proven mismatches to drafts; respect the ownership and selection limits in [MATCH_VERIFICATION.md](docs/agents/MATCH_VERIFICATION.md#revalidation-of-canonical-exports-and-c-aliases). |
| `make nonmatching` fails | Use `python3 tools/scripts/c89fix.py` and `python3 tools/scripts/fix_decls.py nonmatching`. |
| objdiff/asm-differ reports changes in untouched functions | Refresh stale `expected/`: `git stash`, `make expected`, `git stash pop`. Preserve unrelated work when stashing. |
| `sha1sum` fails on Windows although the ROM is identical | Check for CRLF checkout issues; the repository requires LF. The historical normalization command is `git add --renormalize . && git checkout -- .`; use it only with a clean, preserved working tree because it affects the whole checkout. |

## 5. Repository layout

```text
src/<module>.c             C, with pending functions represented by INCLUDE_ASM(...)
asm/nonmatchings/<mod>/    one .s per pending function, deleted on verified matching
asm/*.s, data/             handwritten assembly and data (.incbin from baserom.gba)
include/                   global.h, structs.h, variables.h, functions.h, gba/*
tools/config/              functions.cfg, modules.cfg, shards.txt
tools/scripts/             project workflow scripts
docs/RESEARCH.md           toolchain and ROM layout research
docs/LINK_*.md             link cable and message protocol research
docs/agents/               AI and parallel shard contributor guides
CLAUDE.md                  Claude Code instructions
```

For parallel coordination, read [PARALLEL.md](docs/agents/PARALLEL.md). Obtain current availability from `claim.py status` and current progress from the generated reports; static examples and historical handoffs are not live ownership records.

## Function identification and source reports

Read [progress metrics, names and call graph](docs/agents/PROGRESS_AND_NAMES.md).
While working your shard, record observed roles and proposed names with canonical
address, source/ASM evidence and revision in handoff notes. The coordinator reviews
and consolidates `tools/config/function_names.json` on a dedicated tooling branch;
workers do not edit the shared catalog or mass-rename symbols in shard branches.
Confirmed names and proposals remain separate; type/ABI aliases are not semantic names.
A compiling NONMATCHING draft is not proven equivalent C. CI regenerates names,
source-callgraph and data reports alongside progress; never commit `docs/progress/*`.
