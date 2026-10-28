# Running many workers in parallel

The remaining ~1350 functions are split into 120 balanced shards (`tools/config/shards.txt`, `python3 tools/scripts/shard.py show N`).
One worker = one shard = one branch `worker/NNN`. Workers never touch each other's functions, so merges are mostly conflict free.
Cheap models (Haiku) are enough for most functions; use a stronger model only for the stubborn ones.

Rules every worker follows are in `docs/agents/WORKER.md` (append-only headers, compile check, no edits to `tools/scripts/*`).

## A. Local (your machine, ROM available → full `make compare` per worker)
```sh
# prerequisites: baserom.gba, ./tools/install_agbcc.sh, m2c + decomp-permuter in tools/, `claude` CLI logged in
mkdir -p ghi && tar xJf docs/ghidra/ghidra_out.tar.xz -C . ; export GHIDRA_OUT=$PWD/ghi/ghi   # adjust if it extracted to ./ghi
tools/scripts/launch_local_workers.sh 0 9 haiku     # shards 0..9, one git worktree + one headless claude each
tail -f ../ss2-workers/*.log
```
Each worker commits to its own branch inside `../ss2-workers/NNN`. When some commits exist:
```sh
for d in ../ss2-workers/*/; do (cd $d && git push -q origin HEAD 2>/dev/null); done   # optional, if you want them on GitHub
tools/scripts/merge_workers.sh                      # merges every worker/* branch, keeps only those where the ROM stays identical
python3 tools/scripts/progress.py && make progress && git add -A && git commit -m "Merge workers" && git push
```
Alternative without the launcher: open N terminals, `git worktree add ../w3 -b worker/003`, run `claude --model haiku` in each and paste:
"Worker for shard 3, read CLAUDE.md and docs/agents/WORKER.md, decompile `shard.py show 3`, run make compare before every commit."
Or inside one interactive Claude Code session: ask it to spawn subagents with `isolation: worktree`, one per shard.

Machine limits: each worker compiles a lot (agbcc is light, the permuter is CPU hungry). 8–12 workers on a laptop is fine; permuter `--jobs 1`.

## B. Claude Code cloud (what produced the first 30 workers)
From a Claude Code session with the `claude-code-remote` MCP tools, for each shard N create a session with
`model: claude-haiku-5-5`, `source_url: https://github.com/<you>/SS2Decomp`, `source_revision: <main work branch>`,
`outcome_branch: worker/NNN` and the prompt:
"Decompilation worker, shard N, branch worker/NNN. If origin/worker/NNN exists check it out first and merge the main work branch.
Read docs/agents/WORKER.md and follow it exactly. Functions: `python3 tools/scripts/shard.py show N`; smallest first. Push to worker/NNN often.
No baserom.gba exists; use SKIP_ROM=1."
Cloud workers have no ROM, so they only check each function against the original asm (`SKIP_ROM=1`); the maintainer verifies the full ROM
when merging. Allow `mcp__claude-code-remote__create_session` in the settings first.

## Maintainer loop (both modes)
1. `tools/scripts/merge_workers.sh` (fetches `worker/*`, merges one by one, reverts a branch whose merge breaks the ROM or build).
2. For `BROKE ROM` / `CONFLICT` branches: tell that worker to `git merge origin/<main branch>`, fix, push (cloud: `send_message`).
   Typical causes: conflicting prototype/global declarations (header lines must be append-only), a function matched alone but
   different type than the header (cast instead), signed/unsigned shifts after a global was retyped.
3. `python3 tools/scripts/progress.py`, `make progress`, commit, push. Repeat every ~20 min.
4. Idle/blocked workers (status `need_input`) just need "continue, don't ask".
