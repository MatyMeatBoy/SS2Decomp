# Endgame playbook (remaining functions are large or near-miss)

Read this before claiming a shard. It condenses what matched ~120 functions in the
2026-11-03 multi-worker push; details live in WORKER.md and docs/agents/shard_notes/.

## Session start (every worker)

1. `git fetch origin && git checkout --detach origin/<main>`; discard leftovers (`git checkout -- .`).
2. `python3 tools/scripts/claim.py status`, pick a shard with owner `-`, `claim.py take AGENT N`.
3. Confirm the claim is yours: `git ls-remote origin refs/heads/shard/NNN` must point at your
   `claim shard N (AGENT)` commit (two agents racing on one shard happened once).
4. Read `docs/agents/shard_notes/shardNNN.txt` first: it lists what was already tried.
5. Keep scratch files in `build/<agent>/`, not in a shared temp folder.

## What to work on, in order

1. INCLUDE_ASM-only functions: fresh hand-written C had by far the best hit rate.
   `decomp.py m2c FUNC` and `GHIDRA_OUT=ghi tools/scripts/gv.sh FUNC` are reading aids only.
2. Exact-size drafts whose notes say only a few lines differ.
3. Old drafts full of `register ... asm("rN")` / `asm("" : "+r")` hacks: rewrite them as clean C
   instead of tweaking; only keep the hack when the clean version is measurably worse.
4. Sibling functions: once one function of a family matches, copy its shape (helpers, structs,
   loop forms) to the siblings in the same module.

## Function families (copy a matched sibling first)

- Boss/enemy main loops share one template: they start with sub_0801623C, sub_08019F60,
  sub_08016E04, ... Copy a matched sibling (sub_0809D878, sub_0809AEE8, sub_080A1208,
  sub_080B3648, sub_080B280C, sub_080AF3F4, sub_080B0288) and adapt; it gives near-exact
  drafts fast. Don't declare pointer locals for &actor->anim/frame/tick or resource+0xD6 (they
  are compiler temps in the ROM); write case bodies in the ROM's block order. Remaining
  candidates when last checked: sub_0801801C (sh15), sub_0808F1E4 (94), sub_080AC844 (113),
  sub_080A9950 (111), sub_080A8164 (110), sub_08098108 (100), sub_08099838 (101).
- code_0809D878 actor family: block-local pointers, early-exit loop shape, plain field offsets,
  `while (tile == 0xFFFF)`, macros (not inline) for repeated bodies (see shard 103/105/107 notes).
- Goto outer loops change loop-depth weighting of register priorities (fixed an r8/r9 swap).

## Getting to a match

- Exact size first (control flow, block order, inlined helpers), then registers, then stack slots.
- Measure with `python3 tools/scripts/nmdiff.py FUNC` and read the FULL diff: reordered
  instructions and `bls`/`ble` signedness changes hide behind filtered output. nmdiff reports a
  false MATCH when the function has no C draft yet.
- nmdiff builds inside the NONMATCHING ROM, so literal-pool padding (`.short 0x0000`) can be a
  false diff. Real-build check: `unwrap_func.py FUNC && make -j8 compare;
  cmp -l baserom.gba shiningsoul2_eu.gba | wc -l` (ROM size must stay 16777216); if it does not
  match, `git checkout HEAD -- src/MOD.c asm/nonmatchings/MOD/`.
- Tricks that closed functions (see WORKER.md for the full list):
  - x/y or position pairs in consecutive registers, ldr/ldr pairs or 8 adjacent stack bytes:
    an 8-byte `struct { s32 x, y; }` local, parameter or by-value argument.
  - Code the ROM inlines (repeated blocks, a known callee's body): a `static inline` copy.
    Moving a loop or a call into an inline helper also changes loop.c hoisting and argument
    load order.
  - Search loops: exit with `goto found` (not `break`); explicit goto loops when the ROM does
    not hoist constants; for-loop increment order (`e++, i++` vs `i++, e++`) matters.
  - Stack layout: arrays/structs > 8 bytes get slots in declaration order; small locals when
    their address is first taken; spills after them. A frame "struct" may be separate locals.
  - "Spills" of an expression used inside a loop can be loop-invariant hoists: drop the local.
  - Operand order of `+`/`*`, a scaled index in its own variable plus `asm("" : "+r"(idx))`,
    s16 vs u16 counters, `(n << 16) + 0xFFFF0000` decrements, volatile stack locals.
  - ARM pads structs to 4 bytes: walk 2-byte RGB555 entries through `u16 *` and cast.
- Permuter: give it a trimmed standalone file (target + its static inline helpers + local
  declarations, no other INCLUDE_ASM), max 5 min, `--jobs 2`, writing to a log file (never pipe a
  background run into `tail`; on Windows `timeout` may not kill it, use TaskStop).
  `--allow-control-diff` only helps when the draft has no register-asm variables; always verify
  results in the real build.

## Landing

- Every land: `make -j8 compare` OK, `make -j8 nonmatching` builds, `check_tree.py` 0 errors,
  commit with the Co-Authored-By trailer, `claim.py land`.
- Land measurable draft improvements regularly so nothing is lost; never commit docs/progress.
- Never edit `include/*.h`: use local `extern ... asm("sym")` aliases and `void f_(...) asm("f")`
  when the header's prototype is wrong. If `addnm.py` touches a header, revert it.
- Keep LF line endings (some Windows scripts write CRLF); use Python, not msys `sed`, for edits
  containing `&`.
- Cap about 60 minutes per function without measurable progress, then write what you learned in
  `docs/agents/shard_notes/shardNNN.txt` (commit it with your next land), release, move on.
- Release the shard when done or stuck (`claim.py release`); kill your own permuter processes.

## Coordinator

- At the start of every session: `claim.py stale 24` (integrate unlanded commits), then
  `claim.py stale 24 --release`; assign freed shards first.
- Integrate every open PR that builds (`make compare` OK, nonmatching, check_tree) by merging
  it onto main. Close a PR, with a comment, only when main already has the function matched or
  a measurably better draft (compare `nmscore.py` of both); invite a follow-up on top of main.
- Relaunch a worker as soon as it reports; stop finished workers that still have background jobs.
