# Shining Soul II (GBA, EU, AU2P) matching decompilation

Goal: C that compiles with agbcc (GCC 2.95 ARM) to a byte-identical ROM.
`make compare` must print `shiningsoul2_eu.gba: OK` before every commit.
User writes Spanish; keep replies terse. Commit only to the working branch, no PR unless asked.

## Setup (local)
```sh
sudo apt install binutils-arm-none-eabi gcc-arm-none-eabi make python3 git gcc python3-pyelftools python3-capstone
cp /path/rom.gba baserom.gba                 # SHA1 aa1288be9257337abdfe3034898cf6c7aa778fbc
./tools/install_agbcc.sh                     # tools/agbcc/bin/{agbcc,old_agbcc,agbcc_arm}
git clone https://github.com/matt-kempster/m2c tools/m2c                              # optional: drafts
git clone https://github.com/simonlindholm/decomp-permuter tools/decomp-permuter       # optional: permuter
mkdir -p ghi && tar xJf docs/ghidra/ghidra_out.tar.xz -C . && export GHIDRA_OUT=$PWD/ghi # Ghidra output per function
make -j$(nproc) compare
```
Git-ignored (never commit): baserom.gba, *.gba, build/, tools/agbcc, tools/m2c, tools/decomp-permuter.

Parallel workers: docs/PARALLEL.md (local + cloud how-to), docs/WORKER.md (worker rules), tools/config/shards.txt (`shard.py show N`).

## Compilable drafts
`make nonmatching` builds `shiningsoul2_nm.gba` using the C drafts inside `#ifdef NONMATCHING` blocks (not byte identical, but every draft must compile and link; it is the check that
agent-written C is valid agbcc C89). `tools/scripts/c89fix.py` converts C99 style (declarations after statements, `for (T i = ...)`, multi-declarators, initializer lists) to C89,
`tools/scripts/fix_decls.py` repairs header declarations from compiler errors. Run both after importing code written by other agents; `make compare` must stay OK.

## Layout
- `src/<module>.c` C modules; undecompiled functions are `INCLUDE_ASM("asm/nonmatchings/<mod>", sub_XXXXXXXX);`
- `asm/nonmatchings/<mod>/<func>.s` one file per undecompiled function (deleted when the C matches)
- `tools/config/functions.cfg` function list (`thumb|arm 0xADDR [name]`), `modules.cfg` (`addr name c|asm|linked game|lib`)
- `include/` global.h, structs.h, variables.h, functions.h (auto-appended decls), gba/*, m4a.h
- Per-module compiler is set in `Makefile`: `CC1_<module> := tools/agbcc/bin/old_agbcc`, `CC1FLAGS_<module>`.
  ALL game code: agbcc -O2 -fprologue-bugfix (found by cc_scan.py: superset of every agbcc and old_agbcc match; leaf functions end in
  `bx lr` without `push {lr}`). m4a: old_agbcc (no bugfix flag). agb_flash: -O1.
  Use `tools/scripts/which_cc.py` to detect the compiler of a new module (split with `split_module.py ADDR NAME --cc1 ...`).
- docs/RESEARCH.md research notes; README.md progress treemap (`make progress`).

## Workflow per function
1. `GHIDRA_OUT=ghi tools/scripts/gv.sh sub_08001234` -> Ghidra C + original asm. Ghidra is the reading aid; it is NOT compile-matching C.
2. Draft: `python3 tools/scripts/decomp.py m2c sub_08001234` (m2c draft) or write C by hand.
3. Check one function in isolation (object-level, ignores reloc names): `python3 tools/scripts/decomp.py check FUNC file.c`.
4. Apply: `python3 tools/scripts/apply_permuted.py file.c` (extracts function + externs, checks with the module compiler, applies,
   rebuilds the whole ROM, rolls back if sha1 differs). Accepts several functions per file or a directory of .c.
5. Near miss (score small): `python3 tools/scripts/permute.py FUNC file.c --time 120`, or batch `permute_batch.py DRAFTDIR SCORES.txt --max-score 12`,
   then `apply_permuted.py DRAFTDIR/permuted`.
6. `make compare` -> OK, `python3 tools/scripts/progress.py` (stats), `make progress` (SVGs), commit, push.

Other tools: `fmatch.py MODULE ref.c` pairs functions of a reference decomp (e.g. other GBA games) with ROM functions by bytes;
`variants.py` template search `{{a||b}}`; `rename.py` rename symbols; `fixups.py` source rewrites; `analyze.py`/`gen_asm.py` function discovery + asm regeneration.
Ghidra regeneration (needs Ghidra 11.x): `analyzeHeadless proj proj -import baserom.gba -processor "ARM:LE:32:v4t" -loader BinaryLoader -loader-baseAddr 0x08000000 -noanalysis -scriptPath tools/ghidra -postScript DecompFuncs.java tools/config/functions.cfg out.c` (see script header).

## agbcc idioms learned
- Swap accessor `u32 f(u32 v){u32 old=g;g=v;return old;}`; entity array `gUnk_03003CE0[idx].flags |= 1` (Player size 0x14C).
- Booleans: `u32 r = 0; if (c) r = 1; return r;` often matches where `return c;` does not.
- Shadow regs (gUnk_03000000/2/4, DispCnt gUnk_0300129C): separate `x &= ~m; REG_IE = x;` vs chained assignment gives different code.
- Far jumps use `bl`, switch tables `mov pc, rN`; epilogues `pop {r0}; bx r0`.
- Unused stack frame: original `sub sp,#N ... add sp,#N` with nothing else = an unused local array; `u8 buf[N];` reproduces it (sub_0806888C: `s32 f(void){ u8 buf[0x88]; return 1; }`).
  If the frame is bigger than the code needs, add a dead `u8 buf[N]` / `u32 pad[k]` local. 8-byte `push {r2,r3}` frames: not solved yet (volatile u32 a[2] gives `sub sp,#8`).
- Do not retype globals (gUnk_03005CF4 s32, gUnk_03003478) piecemeal: it broke other functions. Retype only with a full consistent rewrite.
- Permuter output is preprocessed: only take the function body (apply_permuted does this).

## Status (see `python3 tools/scripts/progress.py`)
~520/1973 functions matched (2.66% bytes). Libs: m4a 54/56, flash 24/24. Near misses: sub_0800BAA4, sub_0800BC44/BC08/BCA0/BD1C,
sub_0806849C/84F4/854C (0xFF byte stores), sub_08056E24/E64/FA4/FCC + sub_0805A6F0 (GameState pointer typing),
sub_0805EF84, sub_0809043C (`(a<<8)/b`), sub_08001B04 (ReadFlash arg count), sub_08006B2C, sub_0800CB3C. MultiSio code not located yet.
