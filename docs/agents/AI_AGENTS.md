# Matching decompilation guide for AI contributors

Coordination, context, rotations and verification gates: [COORDINATOR_WORKFLOW.md](COORDINATOR_WORKFLOW.md). Setup: [CONTRIBUTING.md](../../CONTRIBUTING.md). Current ownership comes from `python3 tools/scripts/claim.py status` and `claim.py who FUNC`; historical examples below do not reserve functions or report current progress.

## Free task slot family: historical matching pattern

Recorded on 2026-10-28 for 15 functions. Assembly shape: `ldr rX,=gTaskList; ldr r4,[rX]; movs r6,#0; b check` ... `bl sub_08000470` ... `ldr r5,[r4,#8]` ... `sub_08001494(0x400)` ... `sub_08000274`.

Matching template: adjust the symbol, limit, f8 value, callback and arguments to the original assembly.

```c
struct TaskPXXXX { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; }; /* UNIQUE name per module, required by handapply */
extern struct TaskPXXXX *gTP asm("gUnk_XXXXXXXX");
void f(u16 arg) {
  struct TaskPXXXX *t = gTP; u32 z; u8 i; /* u8 for lsls #0x18; otherwise u32 */
  i = 0; goto check;
next: i++; t = (struct TaskPXXXX *)((u8 *)t + 0x28);
check: if (i > N) return;
  if (sub_08000470((u32)t) != 0 || (z = t->f8) != 0) goto next;
  if ((t->f20 = sub_08001494(0x400)) == 0) return;
  do { t->f10 = t->f20 + 0x3FC; t->fC = (u32)cb; t->f24 = z; t->f8 = 0x40; sub_08000274_2(t, arg); } while (0);
}
```

- If the global has a `cmp r0,#0; beq` check before the loop, use `if (gTP == 0) return; t = gTP;`, without initializing t earlier.
- For one task without a loop: `if (sub_08000470(gTP) == 0 && gTP->f8 != 0) return; mem = alloc; t = gTP; t->f20 = mem; ...`.
- If a header prototype conflicts with the actual entry ABI, for example `s32 f()` where the original is void, declare `void f_v(...) asm("f");` instead of rewriting the header.
- `handapply` does not copy a multiline `static inline` helper, such as an inlined checksum. Insert it manually before the target function and verify the module.
- Entry stores such as `str r0,[sp]; str r1,[sp,#4]` can indicate a structure passed by value (`struct V2W12 pos`).
- A constant used twice and retained in a register, such as `mov sl,r0` for 0x18, can need a local variable.

## Patterns that resolved many drafts

- **Use symbols, not literal addresses.** Replace views such as `*(u32 *)0x03005CF4` with the canonical `gUnk_03005CF4` symbol.
- **Use aliases for the correct global type without changing an existing declaration:** `extern struct GameState *gGameState asm("gUnk_03005CF4");` or `extern u16 gUnkVu16_030002F0 asm("gUnk_030002F0");`. Header additions must be append-only; local aliases can preserve shared declarations. `tools/scripts/try_aliases.py` tests such rewrites in batches, subject to shard scope.
- If `*(u16 *)gUnk_X` corresponds to one `ldrh` directly from the global address, the object may be a u16 alias rather than a pointer.
- **Do not split expressions into temporaries** when the original loads globals in another order. A single expression can preserve the required order, for example `gUnk_030056FC &= ~(1 << *(u16 *)table[obj[2]]);`.
- An epilogue `pop {r1}; bx r1` often preserves a return value, such as `return sub_X(...)`; `pop {r0}` commonly belongs to a void function. Confirm the full ABI and callers rather than relying on the epilogue alone.
- `u16`/`u8` parameters can introduce `lsl/lsr`. If the original has no truncation, a `u32`/`s32` parameter may be the appropriate declaration.
- Use a typed local structure pointer, for example `struct Player *p = &gUnk_03003CE0[i]; p->state = 0;`, rather than unrelated raw offsets.
- An apparently unused stack frame (`sub sp,#N`) can reflect a local array `u8 buf[N];`. Treat this as a source-shape clue, not permission to invent memory accesses.
- Boolean result shape: `u32 r = 0; if (c) r = 1; return r;`.
- `ble/bgt` are signed comparisons; `bls/bhi` are unsigned. Choose the type accordingly.

## Source-shape lessons verified on October 30

Use these as hypotheses against the original ASM, not as mechanical rewrites.
The examples below passed the normal module and whole-ROM gates. Ownership and
current source still need checking before reuse.

- **Recover source before retranslating.** The SS1 donor for `sub_08001DF0`
  needed a 16-to-24-byte packet layout adjustment and separate client/server
  register lifetimes. Reusing its control flow closed 652 bytes (PR251).
  Similarity scores alone do not justify copying layouts or ABI declarations.
- **Fix types and stack layout before register pressure.** In `sub_0800232C`,
  m2c missed three halfword writes into a stack configuration word. Restore the
  observed access widths and preserved high bits. Do not initialize an incoming
  register to zero when the original reads its incoming value. CFG label placement
  inside the original switch arms mattered more than declaration permutations
  for this 812-byte match (PR251).
- **Separate truncated and widened values.** Keep an `s16` remainder distinct
  from an `s32` absolute value when the ASM truncates before abs, but not after it.
  This improved an animation candidate; it did not prove that function matched.
- **Audit call arguments against ASM and callers.** m2c can omit stack arguments
  or infer a return from a live r0. Use local ABI aliases rather than retyping
  shared headers. Position pairs passed by address may need two-element arrays;
  a byte pointer is safer than an inferred unknown-word stride until types are known.
- **Preserve the right lifetime, not every register.** For `sub_0801F79C`, a packet
  pointer retained across calls reproduced the saved-register allocation (PR254).
  For `sub_08000760`, a native saved value worked where overlapping fixed-register
  temporaries let GCC fold branches incorrectly. Inspect emitted control flow:
  fixed registers and empty constraints are not proof of correct C behavior.
- **Mirror physical CFG where necessary.** Distinct ASCII/extended loops and a
  narrow character test closed `sub_08091F9C` (PR257). A targeted empty constraint
  prevented unwanted cross-jumping of two otherwise similar branches. Keep empty
  constraints minimal; never replace calculations with instruction opcodes.
- **Keep aliases local when possible.** Inspect `addnm.py`/application diffs:
  helpers may insert declarations into shared headers. Preserve existing lines,
  move new function-specific aliases into the module when appropriate, and rerun
  normal gates. Do not accept unrelated declaration reorderings from a helper.
- **Use valid-syntax m2c output as a typed draft, not a match.** Its `M2C_FIELD`
  accesses can retain inferred widths while repairing complex drafts. Audit byte
  offsets, stack arrays and outgoing arguments; generated stack/register context
  can still confuse pointer and integer roles. Preserve unsuccessful candidates.

Keep normal module flags unchanged. Equal sizes, isolated checks and heuristic
scores never replace `make compare` and `make nonmatching`. Stop repeated small
permutations after the bounded experiment; see the rotation and handoff rules in
[COORDINATOR_WORKFLOW.md](COORDINATOR_WORKFLOW.md).

## Rules

- Do not remove or change existing `include/*.h` lines; append only. Do not change the Makefile inside a shard branch.
- Do not convert handwritten assembly (`asm/m4a_1.s`, `asm/sched.s`, `asm/crt0.s`) through the ordinary shard workflow. For the separately approved SDK work, consult the explicit boundaries in [SDK_M4A_C_SOURCE.md](SDK_M4A_C_SOURCE.md).
- Keep functions in address order (`python3 tools/scripts/sort_module.py`) and avoid duplicate `INCLUDE_ASM` entries.
- Never upload `baserom.gba`.
- A function is complete only after the normal integrated build prints `shiningsoul2_eu.gba: OK` from `make compare`. Compilation, heuristic scores and isolated matches do not replace this gate.

## Recovery when a check fails

- If `make compare` fails, `python3 tools/scripts/first_shift.py` identifies the first layout change. `python3 tools/scripts/revalidate.py --apply` can restore proven mismatches to drafts; use the owned-function selection rules in [MATCH_VERIFICATION.md](MATCH_VERIFICATION.md#revalidation-of-canonical-exports-and-c-aliases). Global rollback is coordinator work.
- If `make nonmatching` fails, use `python3 tools/scripts/c89fix.py` and `python3 tools/scripts/fix_decls.py nonmatching`.
- If an old draft remains after application, inspect it with `python3 tools/scripts/unwrap_matched.py`, within the permitted ownership scope and with normal ROM verification.

## Automatic safeguards

- A C definition whose identifier differs from its exported symbol, such as `void name(void) asm("sub_XXXXXXXX");`, is applied by canonical symbol: `handapply.py MODULE sub_XXXXXXXX.c` or `apply_permuted.py FILE_OR_DIRECTORY`. These tools preserve the C name, alias and local types; do not rewrite the canonical header to force a type. Alias application checks the target in its normal module and compiles NONMATCHING with exact rollback. `handapply` still requires a successful `make compare` before completion. Use one function per candidate. See [ALIAS_APPLICATION_AUDIT.md](ALIAS_APPLICATION_AUDIT.md) for limits and tests.
- `tools/hooks/pre-commit` runs `check_tree.py`, `make compare` and `make nonmatching` before each commit. Never bypass it.
- GitHub Actions (`.github/workflows/check.yml`) builds all normal and NONMATCHING modules and runs `check_tree.py` on each push. Repair failing checks before continuing delivery.

## Current work and archived link research

For live availability, run `python3 tools/scripts/claim.py status`; before touching a function, run `claim.py who FUNC`. Inspect the current source and generated progress reports, described in [PROGRESS_AND_NAMES.md](PROGRESS_AND_NAMES.md), rather than treating this page as a pending-function list.

The link-cable research described transport, flags and blocks in [LINK_CABLE.md](../LINK_CABLE.md), and message IDs 0x81–0xB0, producers and receiver effects in [LINK_MESSAGES.md](../LINK_MESSAGES.md). Those are research references, not current ownership or completion claims.

Tools recorded during that work include `nmscore.py [--unwrap]`, `nmdiff.py FUNC`, `addnm.py FUNC file.c`, `unwrap_func.py`, `families.py`, `refscan.py` and `loopfix.py`. Use `yellow.py --shard N` or `yellow.py --only OWNED_FUNCTIONS`; pass only owned modules to `nmscore.py`. Scope every other batch to the owned shard. Always run `make compare` and `make nonmatching` before committing. `nmdiff` requires exact size and normalized byte/relocation equality; padding such as `.short 0` affects subsequent layout. See [MATCH_VERIFICATION.md](MATCH_VERIFICATION.md).

Historical source-shape experiments included a variadic function for `push {r2,r3}`, a call cast `((void(*)(s32))f)(x)` to avoid u16 parameter truncation, loops shaped as `for (i=0,e=base;i<N;i++){...;e+=0x28;}`, `i=0; G=i`, a declared zero variable, `if(x) return 0; else return 1;`, and address-taken parameters (`&a`) for entry stack stores. An old experiment also used a non-void definition without `return` to shape an epilogue; this is not proof of a valid return contract. Audit the original ABI and defined behavior before reusing an experiment.

The former online work list mentioned `sub_08066720`, `sub_0806690C`, `sub_080135C4`, `sub_08001DF0`, `sub_08066404`, `sub_08065DAC`, `sub_08066490`, `sub_08066520`, `sub_0800D368`, `sub_08065CA8`, `sub_0806603C`, `sub_080660EC`, `sub_0806617C`, `sub_08066220`, `sub_080662C4`, `sub_08066624` and the `sub_08066CB..` family, with `sync_funcs` references to producers or globals `gUnk_03006300`/`gUnk_03006338`. These identifiers preserve historical research context only. Recheck current source, progress and exclusive claims before choosing any of them; old distances and pending labels are not current evidence.
