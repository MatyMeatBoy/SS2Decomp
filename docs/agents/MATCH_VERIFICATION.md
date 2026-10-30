# What proves a match

A function is complete when its integrated C produces the original ROM: `make compare` must print `shiningsoul2_eu.gba: OK`. A compiling draft, a similar diff or an isolated `MATCH` does not replace that check.

## Corrected failure: `MATCH (positions only)`

The old `nmdiff.py` and `nmscore.py` heuristic sorted added and removed diff lines and replaced branch targets with `X`. This could hide real changes in ordering, control flow or relocations.

ARM Thumb example reproduced with the real assembler:

```asm
/* Original: returns 2 */       /* Different: returns 1 */
movs r0, #1                    adds r0, #1
adds r0, #1                    movs r0, #1
bx lr                          bx lr
```

The bytes differ and order matters, but sorting made the diff lines cancel out. The old tool could report `MATCH`, and `nmscore.py --unwrap` could remove the original ASM from that incorrect draft.

The corrected verdict uses only normalized bytes and relocations from `decomp.compare`. Relaxed distance only prioritizes candidates:

| Result | Meaning |
|---|---|
| `nmdiff.py`: `MATCH`, exit 0 | Normalized bytes and relocations are equal. |
| `nmdiff.py`: `NO MATCH`, exit 1 | A difference exists; unwrapping is not authorized. |
| `nmscore.py`: 0 | Exact comparison; the selected function can be unwrapped. |
| `nmscore.py`: positive | Approximate distance, even when relaxed diff lines cancel out. |
| `nmscore.py`: -1 | Compilation or comparison failed. |

An isolated difference can also come from module context or literal pools. Do not call it a match based on similarity: any experimental application must be reversible and checked against the full ROM. `addnm.py` reads the `nmdiff.py` verdict; `NO MATCH` preserves the draft.

## Corrected failure: erased relocation addends and opcodes

The normalizer also erased four bytes for every non-ABS32 relocation. In ARM ELF REL objects, those bytes contain the addend and part of the instruction: `bl external_target+2` is not equivalent to `bl external_target+4`. The register distinction between `bx r0` and `bx r1` also disappeared with R_ARM_V4BX. The comparison now preserves the bytes and target identity of these relocations.

References to other sections retain their actual names. `.target` and `.other` are not conflated, and the caller's position is not subtracted from an ABS32 reference to another section. Tests use real Thumb and ARM objects and check that valid calls to defined and undefined global symbols still match when object padding changes.

PC bias and the addend are part of a relocation, as defined by the [Arm ELF specification](https://github.com/ARM-software/abi-aa/blob/main/aaelf32/aaelf32.rst#5611-addends-and-pc-bias-compensation). An isolated comparison neither verifies external data contents nor replaces the complete linked ROM.

## Corrected failure: declaration order in `handapply.py`

Inserting each declaration at the same location reversed the candidate's declaration order. For example, an array `extern` could precede its `struct` definition. With agbcc, that context can change loads or stores even when the isolated candidate matched.

Declarations are inserted as one ordered block before the target function, including when an existing type appears midway through a module. Types are identified by tag and tokens, not by exact whitespace on one line. A later, conditional or conflicting type causes an abort before writing: use a unique local type or alias and verify again. Declarations from other shards are not moved or rewritten.

All candidates in a batch are validated before writing the module or deleting ASM. A failure in the second file does not leave the first partly applied. This does not remove the requirement to verify the final ROM and revert a failing application.

## Audit evidence and required checks

The issue was reproduced using real ARM objects and fixtures covering instruction order, branches and relocations. Those tests failed with the old heuristic. Regression coverage also includes type/extern declaration order in `handapply.py`.

The audit of published integration `367ca1d` performed a full rebuild (`make -B -j2 compare`) without relying on cached objects. It passed, and the generated ROM matched the European dump with SHA-1 `aa1288be9257337abdfe3034898cf6c7aa778fbc`. The diagnostic failure was serious for automation; that audit found no corruption of the published ROM. Historical diagnostic results must not be counted as new completed functions without verifying their deliveries.

Before every delivery:

```sh
make -j1 compare
make -j1 nonmatching
python3 tools/scripts/check_tree.py
```

When changing shared types, applying through another path, diagnosing context differences or investigating false matches, force the affected rebuild and repeat the full comparison. Never bypass hooks.

Workflow regression tests:

```sh
python3 -m unittest discover -s tools/tests -p 'test_*.py' -v
```

Real-object tests use `arm-none-eabi-as`, `arm-none-eabi-objdump` and `pyelftools`, available in CI. Other tests do not need a ROM or agbcc.

## Revalidation of canonical exports and C aliases

`revalidate.py` audits configured ROM symbols, including descriptive symbols and
C definitions whose C identifier differs from their `asm("canonical")` label.
It compiles the unchanged whole module with its real Makefile rules in a temporary
`BUILD` directory (`-B -j1`), then checks active preprocessed C definitions against
the existing strict original-ASM byte/relocation comparison. Headers and declarations
remain in their original positions; later types are not hoisted ahead of a target.
Inactive NONMATCHING drafts and original INCLUDE_ASM bodies are not claimed as C.

```sh
python3 tools/scripts/revalidate.py MODULE
# Report rows use: MODULE CANONICAL_SYMBOL
python3 tools/scripts/revalidate.py --from build/my-owned-bad.txt MODULE
python3 tools/scripts/revalidate.py --apply --from build/my-owned-bad.txt MODULE
```

`--from` selects a fresh check; it never treats an old BAD report as current proof.
Use only owned functions in the selection on shard branches. Global `--apply` is
coordinator work, not a parallel-worker batch action. Module filters remain in
force. Unknown/ambiguous aliases, foreign-module exports, missing active definitions,
missing sources and module compiler failures are errors; they do not authorize
rollback or silently count as skipped/good. Unsupported canonical exports visible
in the ELF but unmapped by the source parser also fail closed.

For a proven mismatch, `--apply` restores the **canonical** ASM filename and stub,
keeps the original alias declaration and wraps its C definition as a NONMATCHING
draft. It does not rename game symbols or rewrite shared declarations. Check the
full ROM and NONMATCHING build afterwards. A module that does not compile must be
repaired first; the tool does not guess which functions to roll back from a single
module compiler error. Exit status is 0 for no mismatches, 1 for mismatches (also when
restored), and 2 for audit errors.

The shard delivery guard also compares canonical C definitions, including return
types and alias bindings, against the branch/main merge base. A C-only edit without an ASM deletion can
no longer bypass ownership; header-only alias redirection is checked as well.
Ambiguous bindings require explicit resolution before delivery.

Regression tests include optional real agbcc/binutils fixtures for stale integer
headers plus matching void aliases, canonical rollback, and compilation of both
matching and NONMATCHING modes. They use temporary source/config/ASM fixtures and
need no ROM. The complete repository ROM/NONMATCHING checks remain mandatory.


Per-function work reports under `docs/agents/function_work/` are guarded by the
same exclusive shard ownership. A direct `sub_XXXXXXXX.json` or `arm_XXXXXXXX.json`
filename must identify a registered function address and agree with the JSON
`address`; ownership follows the registered canonical symbol, including descriptive
symbols. Unknown/foreign reports and inconsistent/nested paths are rejected.
Deleting a report also requires ownership. Milestone states/evidence remain
validated by the graphic's report loader; the delivery guard does not duplicate
that schema or change the graphic.
