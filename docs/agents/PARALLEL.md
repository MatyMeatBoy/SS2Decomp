# Running workers in parallel

The current protocol uses exclusive checkouts and atomic `shard/NNN` claims. Read [AGENTS.md](../../AGENTS.md), [CONTRIBUTING.md](../../CONTRIBUTING.md) and [COORDINATOR_WORKFLOW.md](COORDINATOR_WORKFLOW.md) first. Start environment setup with the [quickstart](QUICKSTART.md).

## Current ownership and delivery protocol

Use live claims and current generated progress rather than the historical worker counts or function lists in archived notes:

```sh
python3 tools/scripts/claim.py status
python3 tools/scripts/claim.py take YOUR_NAME
python3 tools/scripts/claim.py who sub_XXXXXXXX
python3 tools/scripts/shard.py show N
```

One worker owns one shard in its own checkout. Never edit another worker's functions or share a working tree. Check ownership before touching a function; a local branch name alone does not prove a live claim. Do not reclaim an occupied shard or force a branch checked out elsewhere.

Start with the shard's yellow drafts, then inspect its other functions from smallest to largest. Keep headers append-only and do not edit shared tooling or the Makefile from a shard branch. Rules for the older scripts are also recorded in [WORKER.md](WORKER.md); the current claim protocol takes precedence.

Serialize edits, builds and commit hooks within each checkout. Before delivery:

```sh
make -j1 compare
make -j1 nonmatching
python3 tools/scripts/check_tree.py
```

The normal integrated comparison must print `shiningsoul2_eu.gba: OK`. An isolated match or a ROM-free cloud check is not final acceptance. Make small commits with the normal pre-commit hook, then deliver through `python3 tools/scripts/claim.py pr` for review or the authorized `claim.py land` workflow. Retain ownership while the coordinator is reviewing a pending PR; release when the delivery is integrated and the owned branch is safe to release. Do not commit generated `docs/progress/*`.

Use `python3 tools/scripts/progress.py --out build/progress` for a local report and consult [PROGRESS_AND_NAMES.md](PROGRESS_AND_NAMES.md) for metric definitions. Availability and counts change; this page is not a live dashboard.

## Archived local worker scripts

The following describes the earlier `worker/NNN` launcher/merge workflow. It is preserved as historical operational context, not an alternative to today's atomic claims. The old snapshot divided approximately 1350 remaining functions into 120 balanced shards; those counts are not current. Lower-cost models were used for many functions, with stronger models for difficult cases; model selection is not an ownership or verification rule.

Historical prerequisites: `baserom.gba`, `tools/install_agbcc.sh`, m2c and decomp-permuter under `tools/`, and an authenticated `claude` CLI.

```sh
mkdir -p ghi && tar xJf docs/ghidra/ghidra_out.tar.xz -C .
export GHIDRA_OUT=$PWD/ghi/ghi   # adjust if extracted directly into ./ghi
tools/scripts/launch_local_workers.sh 0 9 haiku   # historical: shards 0..9, one worktree/session each
tail -f ../ss2-workers/*.log
```

Each worker used a branch under `../ss2-workers/NNN`. The historical scripts could push those branches and merge candidates while retaining only merges whose ROM stayed identical:

```sh
for d in ../ss2-workers/*/; do (cd "$d" && git push -q origin HEAD 2>/dev/null); done
tools/scripts/merge_workers.sh
```

Do not use this archived branch loop to bypass claims or publish another worker's pending work. The old instruction to commit regenerated progress has been superseded: CI owns `docs/progress/*`.

The earlier manual alternative opened several terminals with `git worktree add ../w3 -b worker/003`, started `claude --model haiku`, and assigned shard3 through `shard.py show 3`. Another option used explicitly requested Claude Code subagents with `isolation: worktree`. Today every such worker still needs an exclusive atomic shard claim; do not launch agents merely because this archived example exists.

The old hardware estimate suggested 8–12 workers on a laptop with permuter `--jobs 1`. Actual concurrency depends on the machine, active builds and the user's authorization; agbcc is light but permutation is CPU intensive.

## Archived Claude Code cloud workflow

An early campaign used `claude-code-remote` MCP sessions, one per shard, with `model: claude-haiku-5-5`, `source_url: https://github.com/<you>/SS2Decomp`, `source_revision: <main work branch>` and `outcome_branch: worker/NNN`. Workers were instructed to read [WORKER.md](WORKER.md), resume their existing branch, merge the main work branch, work on the smallest functions first and push checkpoints. This describes the campaign that produced the first 30 cloud workers, not a current deployment instruction.

Those workers had no ROM and used `SKIP_ROM=1` for isolated original-ASM checks. The maintainer ran the full ROM comparison during integration. That limitation remains essential: `SKIP_ROM=1` is not proof of a completed function. The historical setup required allowing `mcp__claude-code-remote__create_session` in settings.

## Archived maintainer loop and current checks

The older loop ran `tools/scripts/merge_workers.sh`, fetching `worker/*`, merging one at a time and reverting branches that broke the build or ROM. For `BROKE ROM` or `CONFLICT`, the owner merged the updated main branch, repaired the result and pushed again. Typical causes were conflicting prototypes/global declarations, isolated matches under the wrong header type, or signed/unsigned shifts after global retyping. Headers remain append-only; use local aliases and verify the real module context.

The historical loop regenerated progress and repeated approximately every20 minutes. Current integration must instead follow the claim/PR workflow and coordinator gates, leaving generated progress to CI. An idle or blocked worker needs an explicit continuation or a new authorized assignment; an archived prompt such as “continue, do not ask” does not authorize stealing a claim or bypassing checks.
