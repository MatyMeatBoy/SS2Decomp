# Agent guide (Codex, Claude, any AI or human working in parallel)

Matching decompilation of Shining Soul II (GBA, EU). A function is done only when `make compare` prints
`shiningsoul2_eu.gba: OK`. Setup, tools and C rules: [CONTRIBUTING.md](CONTRIBUTING.md). Tricks that matched
hundreds of functions: [docs/agents/AI_AGENTS.md](docs/agents/AI_AGENTS.md). User writes Spanish; be terse.

## Up to 10+ agents at once without stepping on each other

1. **One checkout per agent** (never share a working tree):
   `git worktree add ../ss2-<agent> origin/claude/rom-decompilation-research-obsal6` (or a separate clone),
   then inside it `sh tools/setup_tools.sh` (or symlink/copy `tools/agbcc`, `baserom.gba`).
2. **Claim a shard** (atomic: the server accepts only one push of `shard/NNN`):
   ```sh
   python3 tools/scripts/claim.py status              # free shards, most yellow drafts first
   python3 tools/scripts/claim.py take <agent-name>   # -> branch shard/NNN
   python3 tools/scripts/shard.py show NNN            # your functions; touch nothing else
   ```
3. **Work order inside the shard**: first the yellow drafts (`#ifdef NONMATCHING`): `python3 tools/scripts/yellow.py --only F1,F2`
   (score, permuter, auto-apply), then read `tools/scripts/nmdiff.py FUNC` for the rest,
   then the remaining `INCLUDE_ASM` from smallest to largest. Per function: CONTRIBUTING.md §2.
4. **Commit small and often** on `shard/NNN` (`decompile sub_XXXXXXXX`). The pre-commit hook runs
   `make compare` + `make nonmatching`; never bypass it.
5. **Deliver**, every few functions:
   - direct: `python3 tools/scripts/claim.py land` (rebase on main without the claim commit, `make compare`, push to main,
     retries if someone landed first), or
   - review: `python3 tools/scripts/claim.py pr` (same checks, pushes `shard/NNN`, opens a PR with `gh`).
6. Shard finished (or you give up): `python3 tools/scripts/claim.py release`. Then take another one.

## Tools per function (always in this order, all installed by `sh tools/setup_tools.sh` inside `tools/`)
1. **Read**: `GHIDRA_OUT=ghi tools/scripts/gv.sh FUNC` (Ghidra C + original asm; Ghidra is a reading aid, not matching C).
2. **Draft with m2c** (`tools/m2c`): `python3 tools/scripts/decomp.py m2c FUNC > build/try/FUNC.c`, then fix types by hand
   (`python3 tools/scripts/c89fix.py` for C89). Batch drafts for many functions: `python3 tools/scripts/draftbatch.py F1 F2 ...`.
3. **Check**: `python3 tools/scripts/decomp.py check FUNC build/try/FUNC.c` (MATCH / asm diff), or
   `python3 tools/asm-differ/diff.py -mo FUNC` / `tools/objdiff/objdiff-cli diff -p . -u src/MODULE FUNC` (after `make expected`).
   Template search over alternatives `{{a||b}}`: `python3 tools/scripts/variants.py FUNC template.c`.
4. **Permuter** (`tools/decomp-permuter`, agbcc fork) only when the diff is small (registers/order):
   `python3 tools/scripts/permute.py FUNC build/try/FUNC.c --time 300 --jobs 4`; many drafts at once: `python3 tools/scripts/yellow.py`.
   It handles `asm("...")` aliases and `__attribute__` itself. Output in `build/permuter_results/FUNC.c`.
5. **Apply**: `python3 tools/scripts/apply_permuted.py FILE_OR_DIR`; if the C needs a local `struct`/`asm("gUnk_X")` alias
   (apply_permuted then says "no match with module compiler"): `python3 tools/scripts/handapply.py MODULE build/try/FUNC.c ...`
   (preserves one-line declarations before the target, after visible types), then `make compare`.
   A heuristic score is never a match: see [MATCH_VERIFICATION.md](docs/agents/MATCH_VERIFICATION.md).
   Twins: generate the C from the asm and check them in a loop.
   Old step: (inserts, deletes the .s, rebuilds, rolls back if the SHA1 changes).
   Not matching after ~30 min: keep it as a draft (`python3 tools/scripts/addnm.py FUNC file.c`) and move on.
Windows (MSYS2): prefix shells with `export PATH="/c/msys64/ucrt64/bin:/c/msys64/usr/bin:$PATH"`; Python deps via `pacman`
(`mingw-w64-ucrt-x86_64-python-*`) plus `pip install --user --break-system-packages "pycparser<3"` (the permuter needs pycparser 2.x).

## Hard rules (these keep merges conflict-free)
- **Nobody works unclaimed, not even the coordinator or a human on main.** Before touching a function: `claim.py who FUNC`.
- **No global batch tools inside a shard**: `yellow.py --shard N`, `nmscore.py <modules of your shard>`; never run family-wide
  regex rewrites or `--all-shards` while other agents are active. `claim.py land/pr` refuses functions outside your shard.
- Rebase conflict on a function that is already matched on main (someone else got it first): keep main's version
  (`git checkout --ours <file>` during the rebase, then re-run `make compare`), drop yours, and go on.
- Only edit the functions of your shard. Keep them where they are (address order).
- `include/*.h`: append only (they merge with `union`). Never rewrite or reorder existing lines, never retype a global
  (use an `asm("gUnk_X")` alias instead).
- Never commit `docs/progress/*` (CI regenerates it), `baserom.gba`, `*.gba`, `build/`, `expected/`, tools in `tools/<tool>/`.
- Never change `Makefile`, `tools/scripts/*` or `tools/config/*` inside a shard branch: tooling changes go in their own PR.
- C89 only (agbcc): declarations at block start. `python3 tools/scripts/c89fix.py` fixes it.
- Failed function: keep it as a `#ifdef NONMATCHING` draft (`tools/scripts/addnm.py`), never leave the build red.
- If `make compare` fails and you do not know why: `tools/scripts/first_shift.py`, then `tools/scripts/revalidate.py --apply`.

## Function identification and source reports

Read [progress metrics, names and call graph](docs/agents/PROGRESS_AND_NAMES.md).
While working your shard, record observed roles and proposed names with canonical
address, source/ASM evidence and revision in handoff notes. The coordinator reviews
and consolidates `tools/config/function_names.json` on a dedicated tooling branch;
workers do not edit the shared catalog or mass-rename symbols in shard branches.
Confirmed names and proposals remain separate; type/ABI aliases are not semantic names.
A compiling NONMATCHING draft is not proven equivalent C. CI regenerates names,
source-callgraph and data reports alongside progress; never commit `docs/progress/*`.

Serialize edits, builds and commit hooks within each checkout; parallelize only
between independent checkouts. If overlapping builds truncated intermediates,
stop them and force a rebuild before trusting compare/nonmatching results.


## Progress of large functions

Each owner may update only `docs/agents/function_work/sub_XXXXXXXX.json` for their
claimed function, alongside a verified checkpoint. This per-function tracking file
is the explicit exception to function-only edits; never edit another owner's report.
Use `address`, `updated_utc`, `checkpoint`, `areas` and optional `regions`. Each area
needs an id, label, state (`pending`, `active`, `done`) and concrete evidence.
Only completed, evidenced areas fill the yellow work bar. These equal-weight work
milestones do not measure matching bytes, semantic equivalence or remaining time.
Keep the full-match area pending until the normal C build reproduces the ROM.
The coordinator integrates reports; CI updates the graphic. Never commit generated
`docs/progress/*` or change the shared tracking defaults inside a shard.

For future multi-worker work on one giant function, first add atomic region
subclaims beneath its exclusive function claim. Define CFG boundaries, live-in/out
registers, stack slots, types and shared declarations before assigning regions.
Use independent checkouts and region candidates, with one owner assembling the
complete function and running module/ROM checks. Do not extract new helpers merely
to split work: optimization and register allocation span region boundaries.
Subclaims are not implemented yet; the current exclusive function claim remains.
