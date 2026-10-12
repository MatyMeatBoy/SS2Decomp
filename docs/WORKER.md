# Worker instructions (parallel decompilation)

You are one of many parallel workers. Your job: turn the functions of YOUR SHARD from `INCLUDE_ASM` into C that
compiles to the same bytes as the original. A maintainer merges all worker branches and verifies the full ROM.
Be terse in chat; the commits are what matter. User language is Spanish but code/commits are English.

## Rules
- Work ONLY on the functions of your shard (`python3 tools/scripts/shard.py show N`). Other workers own the rest.
- Push ONLY to your branch `worker/NNN` (given in the prompt). Never touch main/other branches, never open a PR.
- There is NO `baserom.gba` in your container. Never try to obtain one. Always run with `SKIP_ROM=1` in the environment;
  correctness is checked per function (object-level compare vs. the original asm) by `decomp.py check` / `apply_permuted.py`.
- Do not edit the Makefile, ld_script.ld, tools/config/*, docs/progress/*, README.md. Do not run `make progress`.
- Shared headers (`include/functions.h`, `variables.h`, `structs.h`) are merged with union strategy: only APPEND lines
  (new externs/prototypes/structs), never edit or reorder existing lines, never retype an existing global
  (retyping existing globals broke other functions before). If you need a different type for an existing global, cast at use site.
- Only commit files under `src/`, `include/`, `asm/nonmatchings/` (deleted .s of matched functions).
- A function counts only when `apply_permuted.py` accepted it (it deletes the .s and rewrites the INCLUDE_ASM line).
  Never hand-edit src/*.c to fake a match; no `#ifdef NONMATCHING` bodies.
- Commit + push every ~5 functions (`git push -u origin worker/NNN`, retry 4x with backoff on network errors).
  Before stopping, push everything. Stop when all shard functions are done or after you can no longer make progress.

## Setup (once, ~2 min)
```sh
sudo apt-get install -y binutils-arm-none-eabi gcc-arm-none-eabi python3-pyelftools python3-capstone >/dev/null 2>&1 || pip install pyelftools capstone
./tools/install_agbcc.sh                      # -> tools/agbcc/bin/{agbcc,old_agbcc}
git clone --depth 1 https://github.com/matt-kempster/m2c tools/m2c
git clone --depth 1 https://github.com/simonlindholm/decomp-permuter tools/decomp-permuter && pip install -r tools/decomp-permuter/requirements.txt 2>/dev/null
mkdir -p /tmp/ghi && tar xJf docs/ghidra/ghidra_out.tar.xz -C /tmp && export GHIDRA_OUT=/tmp/ghi/ghi 2>/dev/null; ls /tmp/ghi | head -2
export SKIP_ROM=1
```
(If the tar extracted to /tmp/ghi directly, set GHIDRA_OUT=/tmp/ghi.)

## Loop per function (smallest first, they teach you the module's idioms)
1. `tools/scripts/gv.sh FUNC` -> Ghidra pseudo-C + original asm. Ghidra is a READING AID, not matching C.
2. `python3 tools/scripts/decomp.py m2c FUNC > /tmp/FUNC.c` draft (fix `M2C_UNK`/`?` types to s32/u32, remove stray prototypes).
3. Write the C in a scratch file `/tmp/w.c` (`#include "global.h"` + externs + function). Test:
   `python3 tools/scripts/decomp.py check FUNC /tmp/w.c` (prints a diff of instructions on mismatch).
4. Iterate by hand: change loops/temps/types/order, use idioms below. Then permuter for small diffs:
   `python3 tools/scripts/permute.py FUNC /tmp/w.c --time 120 --jobs 2` (output `build/permuter_results/FUNC.c`).
5. When `check` prints MATCH: `SKIP_ROM=1 python3 tools/scripts/apply_permuted.py /tmp/w.c` (may contain several functions).
6. Commit (`git add -A src include asm`), push.
Callee/caller names: use `sub_XXXXXXXX` for unknown functions and `gUnk_XXXXXXXX` for unknown globals (names already in
include/*.h; don't rename). Grep the repo (`grep -rn sub_08001234 src include`) for known prototypes and callers' arg types.
Compiler per module is chosen automatically (Makefile `CC1_<module>`; old_agbcc vs agbcc). If NOTHING matches for a whole
module with trivially simple functions, the module may need the other compiler: `python3 tools/scripts/which_cc.py` explains;
report that in your final message instead of editing the Makefile.

## agbcc idioms
- Booleans: `u32 r = 0; if (c) r = 1; return r;`. `return c;`/ternaries often differ.
- Swap accessor `u32 f(u32 v){u32 old=g;g=v;return old;}`. Struct arrays `g[idx].flags |= 1`.
- Shadow IO regs: `g &= ~m; REG_IE = g;` vs chained assignment `REG_IE = (g &= ~m)` compile differently.
- Declaration order of locals and `register` usage change allocation; `for` vs `while`/`do` change block layout.
- Constants `0x80 | x` vs `x | 0x80` change operand order; `(u16)` casts add `lsl/lsr` pairs; u8 vs s8 globals add `lsl/asr`.
- `(a<<8)/b` signed division uses the `__divsi3` call; unsigned ones use `__udivsi3`.
- switch -> table (`mov pc,rN` or `bl` jump tables); dense cases are tables, sparse ones if/else chains.
- Far calls are `bl`; `pop {r0}; bx r0` epilogues are normal for agbcc thumb-interwork.
- Inline small statics: the compiler does not inline unless `static inline` + -O2 allows it; write calls explicitly.
- Prefer hand-written C that follows the asm structure over m2c output; check the original block order for `goto`-free loops.

## Final report (last message, <10 lines)
Matched count / total shard size, branch name, functions you gave up on with the best remaining diff size, anything
(compiler guess for a module, a header collision risk) the maintainer should know.

## Before every push (compile check, no ROM needed)
```sh
git fetch origin claude/rom-decompilation-research-obsal6 && git merge --no-edit origin/claude/rom-decompilation-research-obsal6
make -j4 build/src/<each module you touched>.o      # must compile without errors
```
Never change an existing prototype/declaration in include/*.h (e.g. `s32 f();` -> `void f(void);`): other modules call them with
the old signature and the merge will break. If you need a different signature, cast at the call site or declare a local
extern in your own .c file. A branch that breaks the build is rejected by the maintainer.

## Prototype rule (updated)
All `sub_XXXXXXXX` prototypes in include/functions.h are now unprototyped `type f();` (no `(void)`), so a function that
reads r0..r3 can be defined with real parameters as long as they are not u8/u16/s8/s16 (declare those as u32/s32 and
mask inside, because K&R declarations promote narrow types). If the declared RETURN type is wrong (e.g. header says `s32`
but the asm returns nothing), you may change only that return type on that single line, provided no C caller uses the
result. Never reorder or delete header lines.

## Never stop (standing orders)
- Keep going until `python3 tools/scripts/shard.py show N` is empty. Do not end your turn to ask for confirmation; do not
  stop because a function is hard: after ~15 attempts or one permuter run without a match, note the function in
  `docs/notes/shardN.txt` (best diff, ideas tried) and move on; come back to it at the end with new ideas
  (restructure loops, other types, temporaries, statement order, `register`, do-while vs for, separate vs chained stores).
- Merge main often (`git merge origin/claude/rom-decompilation-research-obsal6`); it gains fixes (module splits, prototypes).
- Push after every matched function.
- When your shard is empty (or only hopeless functions remain), take the next shard: worker N takes shards N+31, N+62, N+93
  (those <= 119), same branch. Tell the maintainer in your final message which shard you finished.

## UPDATE: tree revalidated (read this first)
Main was revalidated: ~470 functions that other agents had "decompiled" without byte verification are now **drafts** inside
`#ifdef NONMATCHING <C> #else INCLUDE_ASM(...) #endif` blocks (the ROM still builds from the asm). They usually compile and are close.
Start every function by looking for such a draft in `src/<module>.c` (grep the function name): copy it to a scratch file, run
`decomp.py check FUNC file.c` to see the diff, fix it, then `apply_permuted.py file.c` (it turns the block into plain C and removes the asm).
- agbcc is C89: declare all locals at the top of a block; no `for (u32 i = ...)`, no declarations after statements.
- Keep functions in ROM address order inside the module (`python3 tools/scripts/sort_module.py <module>` fixes the order).
- `python3 tools/scripts/nm_drafts.py OUT [module]` exports all drafts with their diff score (0 = match, -1 = no compile).
- Never leave both a C definition and an INCLUDE_ASM of the same function; never convert hand-written asm modules (m4a_1, sched, crt0).

- Idiom: a frame larger than needed (`sub sp,#N` .. `add sp,#N` around trivial code) is an unused local array: add `u8 buf[N];` (matched sub_0806888C).
