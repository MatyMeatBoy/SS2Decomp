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

## Hard rules (these keep merges conflict-free)
- Only edit the functions of your shard. Keep them where they are (address order).
- `include/*.h`: append only (they merge with `union`). Never rewrite or reorder existing lines, never retype a global
  (use an `asm("gUnk_X")` alias instead).
- Never commit `docs/progress/*` (CI regenerates it), `baserom.gba`, `*.gba`, `build/`, `expected/`, tools in `tools/<tool>/`.
- Never change `Makefile`, `tools/scripts/*` or `tools/config/*` inside a shard branch: tooling changes go in their own PR.
- C89 only (agbcc): declarations at block start. `python3 tools/scripts/c89fix.py` fixes it.
- Failed function: keep it as a `#ifdef NONMATCHING` draft (`tools/scripts/addnm.py`), never leave the build red.
- If `make compare` fails and you do not know why: `tools/scripts/first_shift.py`, then `tools/scripts/revalidate.py --apply`.
