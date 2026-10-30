# Shining Soul II (GBA, EU, AU2P) matching decompilation

Goal: C that compiles with agbcc (GCC 2.95 ARM) to a byte-identical ROM.
`make compare` must print `shiningsoul2_eu.gba: OK` before every commit.
Multi-agent rules (shards, claim/land/pr): AGENTS.md. User writes Spanish; keep replies terse. Commit only to the working branch, no PR unless asked.

## Public collaboration language

Use English for repository documentation, progress tables, commit messages and
PR titles/descriptions. Read [the quick start](docs/agents/QUICKSTART.md): Windows
contributors download the ROM-free toolkit into their own folder, extract it
there and bootstrap an independent checkout before claiming work.

## Setup (local)
Human guide: CONTRIBUTING.md. Linux/WSL: apt `binutils-arm-none-eabi gcc-arm-none-eabi make python3 git gcc`.
Windows: MSYS2, prefix every shell with `export PATH="/c/msys64/ucrt64/bin:/c/msys64/usr/bin:$PATH"` (the WindowsApps python3 stub is not Python).
```sh
cp /path/rom.gba baserom.gba                 # SHA1 aa1288be9257337abdfe3034898cf6c7aa778fbc
sh tools/setup_tools.sh                      # agbcc, m2c, decomp-permuter (agbcc fork), asm-differ, objdiff, pip deps, hooks
mkdir -p ghi && tar xJf docs/ghidra/ghidra_out.tar.xz -C . && export GHIDRA_OUT=$PWD/ghi # Ghidra output per function
make -j$(nproc) compare && make expected && python3 tools/scripts/gen_objdiff.py
```
Git-ignored (never commit): baserom.gba, *.gba, build/, expected/, objdiff.json, tools/{agbcc,m2c,decomp-permuter,asm-differ,objdiff}.
Diff one function: `python3 tools/asm-differ/diff.py -mo FUNC` (vs expected/) or `tools/objdiff/objdiff-cli diff -p . -u src/MOD FUNC`.

Parallel workers: docs/agents/PARALLEL.md (local + cloud how-to), docs/agents/WORKER.md (worker rules), tools/config/shards.txt (`shard.py show N`).

## Guards
`sh tools/install_hooks.sh` enables the pre-commit hook (check_tree.py, make compare, make nonmatching). CI: .github/workflows/check.yml.

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
3. Check one function in isolation (strict bytes and relocation identity; the full ROM check is still required): `python3 tools/scripts/decomp.py check FUNC file.c`.
4. Apply: `python3 tools/scripts/apply_permuted.py file.c` (extracts function + externs, checks with the module compiler, applies,
   rebuilds the whole ROM, rolls back if sha1 differs). Accepts several functions per file or a directory of .c.
5. Near miss (score small): `python3 tools/scripts/permute.py FUNC file.c --time 120`, or batch `permute_batch.py DRAFTDIR SCORES.txt --max-score 12`,
   then `apply_permuted.py DRAFTDIR/permuted`.
6. `make compare` -> OK, `python3 tools/scripts/progress.py --out build/progress` (stats; never commit docs/progress, CI does), commit, push (or `claim.py land`).

Other tools: `fmatch.py MODULE ref.c` pairs functions of a reference decomp (e.g. other GBA games) with ROM functions by bytes;
`variants.py` template search `{{a||b}}`; `rename.py` rename symbols; `fixups.py` source rewrites; `analyze.py`/`gen_asm.py` function discovery + asm regeneration.
Ghidra regeneration (needs Ghidra 11.x): `analyzeHeadless proj proj -import baserom.gba -processor "ARM:LE:32:v4t" -loader BinaryLoader -loader-baseAddr 0x08000000 -noanalysis -scriptPath tools/ghidra -postScript DecompFuncs.java tools/config/functions.cfg out.c` (see script header).

## agbcc idioms learned
- Swap accessor `u32 f(u32 v){u32 old=g;g=v;return old;}`; entity array `gUnk_03003CE0[idx].flags |= 1` (Player size 0x14C).
- Booleans: `u32 r = 0; if (c) r = 1; return r;` often matches where `return c;` does not.
- Shadow regs (gUnk_03000000/2/4, DispCnt gUnk_0300129C): separate `x &= ~m; REG_IE = x;` vs chained assignment gives different code.
- Far jumps use `bl`, switch tables `mov pc, rN`; epilogues `pop {r0}; bx r0`.
- Unused stack frame: original `sub sp,#N ... add sp,#N` with nothing else = an unused local array; `u8 buf[N];` reproduces it (sub_0806888C: `s32 f(void){ u8 buf[0x88]; return 1; }`).
  If the frame is bigger than the code needs, add a dead `u8 buf[N]` / `u32 pad[k]` local. `push {r2,r3}` ... `add sp,#8` = variadic function: `void f(u32 a, u32 b, u32 c, ...){}` (named params shift which of r0-r3 are pushed).
- Do not retype globals (gUnk_03005CF4 s32, gUnk_03003478) piecemeal: it broke other functions. Use a local C alias with the canonical assembler label; do not rewrite shared declarations.
- Permuter output is preprocessed: only take the function body (apply_permuted does this).

- Callee proto has u16 param but original passes s32 without lsl/lsr: call via cast `((void (*)(s32))f)(x)`; callee proto `()`-style (K&R) when original passes nothing extra (sub_080687A8).

## Current status

Use `python3 tools/scripts/claim.py status` for available shards and
`python3 tools/scripts/progress.py --out build/progress` for current metrics.
The generated reports in docs/progress are updated by CI. Historical function
counts and near-match lists are not current assignments; verify main and claim
ownership before editing any function.
