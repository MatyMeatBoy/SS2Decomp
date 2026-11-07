# Hard functions: focused experiments and shared regions

Read this after [QUICKSTART.md](QUICKSTART.md). Exclusive shard claims,
independent checkouts and [matching gates](MATCH_VERIFICATION.md) still apply.
Do one bounded task at a time and return reproducible evidence.

## Use the best verified checkpoint

1. Fetch main and inspect landed work before recovering old candidates. Run
   `claim.py who FUNC`; only the exclusive owner edits production source.
2. Read Ghidra plus ASM, then m2c, in AGENTS.md order. Record canonical symbol,
   C alias, module, revision, compiler/flags and candidate path.
3. Rebuild NONMATCHING **before** each new score/diff: `nmdiff.py` does not build
   stale objects. Record original/candidate sizes, frame and first real instruction
   difference. Literal pools and `.short 0` padding matter; heuristic line counts
   are not instruction counts.
4. Preserve the best source/diff in ignored `build/try/`. Change one hypothesis
   per attempt. Compare the whole function, including distant regressions.
   Restore and rebuild after rejecting a candidate.

Replace FUNC and MODULE with your owned target:

```sh
make -j1 nonmatching
python3 tools/scripts/nmscore.py --only FUNC MODULE
python3 tools/scripts/nmdiff.py FUNC > build/try/FUNC-baseline.diff
```

| Observed difference | First experiment | Return evidence |
|---|---|---|
| Wrong access width or signed branch | Audit types, offsets, truncation and ABI | Changed access/branch and byte offset |
| Wrong frame or spills | Audit arrays, by-address arguments and lifetimes | Frame/spill changes and whole-function diff |
| Repeated global loads merged | Scope a pointer lifetime; consider a local inline reader | Which loads changed; helper actually inlined |
| Correct operations, wrong register/order | Scope one temporary or stage one argument; try ordinary C first | Lifetime and call-clobber audit |
| Extra copy around a commutative product | Swap side-effect-free scalar operands | Same arithmetic, changed copy sequence |
| Only literal-load order differs | Isolate that expression | Exact instructions and whole-function fallout |

[PR492](https://github.com/MatyMeatBoy/SS2Decomp/pull/492) reduced the
`sub_0807A5D4` heuristic distance 250 to 10 with scoped pointer reloads, genuine
zero lifetimes and argument staging. It remains NONMATCHING; equal 4576-byte sizes
are not equivalence. [PR493](https://github.com/MatyMeatBoy/SS2Decomp/pull/493)
removed an empty barrier through ordinary argument staging: normalized differing
halfwords improved 15 to 13 while the heuristic stayed 35. These are hypotheses,
not global rewrites or fixed-register recipes.

Empty constraints need initialized operands and real, preserved C values. Audit
live ranges across calls: r0-r3 are call-clobbered; narrow hard-register variables
can change truncation. Prefer plain C; remove redundant constraints. Never invent
outgoing stack writes, opcode strings or different compiler flags to improve a
score. Check insertion for duplicate helpers or moved shared declarations.

## Control searches and stop repeating failed work

Use `permute.py` for small differences, initially 300 seconds. Its unchanged
control must reproduce the normal object. If it fails, diagnose preprocessing,
helper removal or AST reprinting; do not routinely bypass it with
`--allow-control-diff`.
`permute.py` freezes inline helper definitions and their storage qualifiers while
randomizing the requested function. Keep those helpers and the actual callee
prototypes in the candidate; an implicit declaration can change argument
truncation. The unchanged control must still reproduce the complete normal object.

A custom region-only search needs strict unchanged-control comparison against
the freshly built whole-module function with normal flags. Inject only the region
into frozen full-module context; do not AST-reprint unrelated code. Preserve
instruction order and relocations in comparisons. Control equality proves the
experiment's starting point, not a ROM match. `region_claim.py` does not automate
this advanced search adapter; hand blocked control evidence to the owner.

After about 30 minutes without verified improvement, preserve the best draft,
list failed hypotheses and rotate or return the obstacle. Stop only your own
jobs and verified descendants. A yielded tool/CI timeout is not completion: poll
the existing handle/run. Serialize builds, edits and hooks in each checkout.

## Split work into regions, keep one compiled function

Multiple workers can prepare **region candidates** under one exclusive function
owner. The owner alone edits its production module, aliases, shared declarations
and function-work report, assembles candidates and performs delivery. Region
workers use independent checkouts at one frozen checkpoint. They do not take the
owner's shard, remove ASM or run `claim.py land/pr` for region artifacts.

Choose the smallest stable contract: a basic block, switch arm or short loop.
Roughly 8-40 instructions is a starting point, not a limit. Keep argument
preparation/call/result together when coupled; retain a whole loop if its values
cross the backedge. Shared joins and cross-region live-range changes stay with
the owner. Do not extract C helpers merely to split work: scheduling, register
allocation, inlining and pools cross these boundaries.

Before assigning work, define non-overlapping half-open **original-address**
intervals `[start,end)`, CFG entry and every exit, live-in/out register meanings,
stack offsets/widths/ownership, types and frozen shared declarations. Original
addresses do not move with candidate layout. Valid address bounds do not prove
valid CFG boundaries; the owner reviews the ASM evidence. Empty lists explicitly
mean none. Unknown liveness needs analysis before delegation.

### Owner: freeze a plan

First bring the integrated region tooling into the owner branch through your
normal update workflow and preserve existing work. Other workers can continue
their current independent shard tasks; no global checkout reset is required.

Adapt [region-plan.example.json](region-plan.example.json) to actual ASM. Its
illustrative intervals are not verified work assignments. Save your real plan
privately, publish a clean shard checkpoint, then:

```sh
python3 tools/scripts/region_claim.py init FUNC --actor OWNER --plan build/try/regions.json
python3 tools/scripts/region_claim.py status FUNC
```

`init` requires local shard HEAD to equal its published head. Metadata lives on
`coord/regions/FUNC`, updated using a private Git index and exact remote lease.
It never changes checkout files, HEAD or the real index. On a concurrent update,
reread and retry. Upstream write access is required; actor names are coordination
labels, not authentication. Metadata branches skip push CI; PR checks stay enabled.

### Worker: reserve and return artifacts

Find available work without guessing a function:

```sh
python3 tools/scripts/region_claim.py list
```

This read-only JSON snapshot lists open plans, owners, frozen checkpoints and
free/claimed/submitted region IDs. Closed plans are omitted. Stale plans show
`parent_live: false` and no free regions; ask their owner to finish cleanup rather
than start from an obsolete checkpoint. An empty list means no open region plans;
continue with the normal exclusive shard queue. Discovery does not reserve work.

For a live plan with free regions, read `status FUNC` and its full contract,
copy `checkpoint`, check `parent_live: true`, then use your own
checkout on a private branch at that exact SHA:

```sh
git switch -c codex/YOUR_REGION CHECKPOINT_SHA
python3 tools/scripts/region_claim.py take FUNC REGION --actor WORKER
```

`take` refuses occupied regions, the owner's shard branch, tracked changes or
another checkpoint. Recheck status and the live parent before resuming after
interruptions. Only the reserved worker can submit/release. Other regions can
advance simultaneously in their own checkouts.

Keep experimental module copies and output in private ignored paths. Commit
only these two artifacts on the candidate branch:

- `region-candidates/FUNC/REGION.c`: replacement C block with original boundaries;
  declaration requests in comments. No executable assembly.
- `region-candidates/FUNC/REGION.md`: checkpoint, baseline/result sizes/frame,
  full-function diff and command/log paths, rationale, ABI/liveness audit,
  failed attempts and remaining differences. Identify all unproven behavior.

Commit with normal hooks, push your private branch, then:

```sh
python3 tools/scripts/region_claim.py submit FUNC REGION --actor WORKER \
  --candidate-ref codex/YOUR_REGION --evidence "Specific improvement; still NONMATCHING"
```

Submission pins its remote SHA, requires checkpoint ancestry and rejects any
changes outside those two nonempty files. The owner reads that exact artifact
revision and does not merge its branch into main. Keep the submitted head stable.
With no useful result, preserve private files and stop your jobs before:

```sh
python3 tools/scripts/region_claim.py release FUNC REGION --actor WORKER \
  --evidence "Preserved PATH; tried X/Y; obstacle Z; no live jobs"
```

### Owner: assemble, close and deliver

Apply candidates serially to the complete function. Inspect the whole-function
diff after each and after combining them: individual gains can regress together.
Preserve checkpoints; reject unreviewed changes outside a region's contract.

```sh
python3 tools/scripts/region_claim.py review FUNC REGION --actor OWNER \
  --result accepted --evidence "Integrated checkpoint/logs; remaining differences ..."
# Or --result rejected. Acceptance is not a MATCH verdict.
python3 tools/scripts/region_claim.py close FUNC --actor OWNER \
  --evidence "Jobs stopped, artifacts preserved, submissions reviewed"
```

Close refuses active reservations and unreviewed submissions. The owner cannot
silently free another worker's region: arrange preservation/release first.
Updated `claim.py` refuses rebase/delivery/release while a plan is open. Close
before rebasing, publishing a new parent head or releasing its shard. Parent
deletion or any parent-head change invalidates worker actions; release and close
remain available for cleanup. History and pinned candidate SHAs remain in Git;
a later owner can initialize a new plan after closure.

Final application/delivery remains the owner's responsibility:

```sh
make -j1 compare
make -j1 nonmatching
python3 tools/scripts/check_tree.py
```

ROM `OK` with ASM fallback active proves baseline integrity, not the draft's
equivalence. Full match requires the normal C definition in place of fallback
and ROM `OK`. Region acceptance, milestones and scores earn no matching bytes.

## Brief for a smaller worker

Fill every field; copy the frozen region contract with it:

```text
Target/region: canonical FUNC / REGION; owner and worker labels
Checkout/branch: your independent path / codex/...
Checkpoint: full SHA; region status and parent rechecked
Contract: original interval, CFG, live values, stack and types
One hypothesis: observed instruction difference -> one source change
Baseline: compiler/flags, sizes/frame, fresh whole-function diff
Budget: bounded experiment; initial permuter 300s, rotate around 30min
Return: REGION.c + REGION.md, pinned SHA, failed attempts included
Do not edit: production source, headers, reports/tools or other regions
Done means: reproducible candidate evidence; final ROM proof belongs to owner
```

## agbcc mechanisms confirmed (2026-11-06)

Each item closed or explained a real function; read the linked PR for the exact
source. Diagnose with RTL dumps (`-dl -dg` for local/global alloc, `-dL` loop,
`-dG` gcse) before guessing. They describe compiler decisions, not recipes.

**Global allocation (global.c).**
- `find_reg` scans hard regs from r0 upward (no allocation order). A short
  temp with a copy preference takes r0; a pseudo live across a call skips r0-r3
  and lands in r4. Reusing a function-scope call-crossing variable as the temp
  put it in r4 without bindings
  ([PR521](https://github.com/MatyMeatBoy/SS2Decomp/pull/521), 373 -> 34;
  matched in [PR528](https://github.com/MatyMeatBoy/SS2Decomp/pull/528)).
- Allocno priority is `floor_log2(refs) * refs / live_length`, ties by regno.
  A pre-combine-only negation (`sy - i * -8`) lowered one copy's priority; one
  function-scope count variable set in two blocks moved it from local-alloc to
  global-alloc (low priority, r7)
  ([PR522](https://github.com/MatyMeatBoy/SS2Decomp/pull/522) sub_08009594).
- `do { } while (0)` emits loop notes, so references inside count one loop level
  deeper. Removing one swapped `sl`/spill between two pointers
  ([PR517](https://github.com/MatyMeatBoy/SS2Decomp/pull/517) sub_0809FB6C);
  adding one settled r6/r7 ([PR525](https://github.com/MatyMeatBoy/SS2Decomp/pull/525) sub_080904A4).

**Reload (reload1.c).**
- Reload registers rotate (`last_spill_reg`). Each extra reload shifts every
  later choice; many rN-only diffs are one missing or extra reload. A
  function-lifetime constant left without a hard reg is rematerialized as a
  REG_EQUIV reload and advances the rotation; a register-asm binding removes a
  reload ([PR516](https://github.com/MatyMeatBoy/SS2Decomp/pull/516) sub_0807A5D4).
  Moving a check into both branches adds a reload; cross-jumping later merges the
  copies, so layout is unchanged ([PR528](https://github.com/MatyMeatBoy/SS2Decomp/pull/528)).
- When reload needs a spill register it evicts the hard reg whose pseudos have
  the fewest weighted refs. A `do { } while (0)` around the other value's uses
  raised its weight and chose the ROM's spill
  ([PR532](https://github.com/MatyMeatBoy/SS2Decomp/pull/532) sub_0800B118).
- A hoisted pointer without a hard reg is reloaded inside the loop
  (`ldr r1,=objs; ldr r0,[r1]`); `pl = base; pl += prod` ties the multiply to
  the constant for the ROM `muls` operand order
  ([PR531](https://github.com/MatyMeatBoy/SS2Decomp/pull/531) sub_08016F28).

**CSE and GCSE.**
- CSE makes the longest-lived register the head of a constant class; later
  zeros are rewritten to it in both passes. An early `a = 0` (plus a dead reset
  that flow deletes) made `a` the canonical zero
  ([PR534](https://github.com/MatyMeatBoy/SS2Decomp/pull/534) sub_08086860).
- Reassigning a pointer inside a block cse1 skips (`p = &x->f;` again) makes
  `invalidate_skipped_block` forget it on the AROUND path; the no-op is deleted
  on fall-through, so insn counts stay equal
  ([PR535](https://github.com/MatyMeatBoy/SS2Decomp/pull/535) sub_08014170).
- GCSE `pre_delete` registers are created in expression-hash order, and
  declaration order changes that order: declaring `ang` first fixed two swapped
  spill slots ([PR543](https://github.com/MatyMeatBoy/SS2Decomp/pull/543)).
  The hash table has `max_cuid/2|1` buckets; changing the insn count enough to
  alter it rotates PRE numbering and permutes slots ([PR535](https://github.com/MatyMeatBoy/SS2Decomp/pull/535)).

**Loop optimization (loop.c).**
- An invariant moves only if threshold x savings x lifetime >= loop insn count.
  In the dumps the threshold starts near 10 and drops about 2 per insn already
  moved; there are two passes, and hoist order follows loop insn order. One extra loop
  insn (`u16 target`) stopped the constant 1 from being hoisted
  ([PR543](https://github.com/MatyMeatBoy/SS2Decomp/pull/543)); shard72 notes
  (sub_0806DE94) show the full pass-1/pass-2 model.
- `break` out of `for (;;)` lets `expand_end_loop` rotate the loop; `goto done`
  does not ([PR537](https://github.com/MatyMeatBoy/SS2Decomp/pull/537)). A real
  `for (;;)` + `break` reproduced a rotated ROM loop in [PR509](https://github.com/MatyMeatBoy/SS2Decomp/pull/509).
  2D arrays (`records[10][3]`) are strength-reduced where flat `[30]` is not.

**Types and source shapes.**
- agbcc pads structs to 4 bytes: 5-byte rows are `u8 t[][2][5]`; a literal
  `pose = 2;` before the lookup gives the `side*5 + 20` form
  ([PR499](https://github.com/MatyMeatBoy/SS2Decomp/pull/499)). Other shapes:
  `s16 [][2]` with the y column at +2 ([PR509](https://github.com/MatyMeatBoy/SS2Decomp/pull/509)); a `u16 [][3][3]`
  seat table indexed inline (draft [PR510](https://github.com/MatyMeatBoy/SS2Decomp/pull/510)).
- `abs((s16)(rand() % N))` with `int abs(int);` gives cmp/bge/negs; a tail store
  written in both if/else arms lets cross-jumping merge after CSE kept the
  address live ([PR499](https://github.com/MatyMeatBoy/SS2Decomp/pull/499)).
- Index byte records as `u8 *`: stores to `u8` struct fields go through the
  bit-field expansion, whose mask zero CSE then shares
  ([PR490](https://github.com/MatyMeatBoy/SS2Decomp/pull/490)).

**Tooling pitfalls (Spanish-locale Windows).** `make compare` prints
`La suma coincide`, which `claim.py pr`/`land` treat as a failure because they
look for `OK`; verify the checksum yourself and open the PR with `gh pr create`.
`claim.py` has no help flag: `claim.py take -h` claims the first free shard
under the agent name `-h`. `claim.py who` shows the shard head's subject
parenthetical as the owner, so a PR commit title can appear there.
