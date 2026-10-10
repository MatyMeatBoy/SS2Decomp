#!/bin/sh
# launch_local_workers.sh FIRST LAST [MODEL]   e.g.  launch_local_workers.sh 0 9 haiku
# One git worktree + one headless Claude Code per shard, all in parallel. Needs: baserom.gba, tools/agbcc, `claude` CLI.
# Worktrees go to ../ss2-workers/NNN on branch worker/NNN. Logs: ../ss2-workers/NNN.log
# Merge the results afterwards with tools/scripts/merge_workers.sh (verifies the full ROM).
set -e
ROOT=$(cd "$(dirname "$0")/../.." && pwd)
FIRST=${1:?first shard}; LAST=${2:?last shard}; MODEL=${3:-haiku}
BASE=${BASE_BRANCH:-claude/rom-decompilation-research-obsal6}
OUT=$ROOT/../ss2-workers
mkdir -p "$OUT"
cd "$ROOT"
git fetch -q origin 2>/dev/null || true
for n in $(seq "$FIRST" "$LAST"); do
  id=$(printf '%03d' "$n"); wt=$OUT/$id
  if [ ! -d "$wt" ]; then
    if git rev-parse -q --verify "origin/worker/$id" >/dev/null; then git worktree add -q -B "worker/$id" "$wt" "origin/worker/$id"
    else git worktree add -q -B "worker/$id" "$wt" "$BASE"; fi
    ln -s "$ROOT/baserom.gba" "$wt/baserom.gba"
    for t in agbcc m2c decomp-permuter; do ln -s "$ROOT/tools/$t" "$wt/tools/$t"; done
  fi
  # full-ROM verification is possible locally, so SKIP_ROM is NOT set
  ( cd "$wt" && git merge -q --no-edit "$BASE" 2>/dev/null || true
    GHIDRA_OUT=${GHIDRA_OUT:-$ROOT/ghi}
    export GHIDRA_OUT
    nohup claude -p "You are decompilation worker for shard $n on branch worker/$id (this worktree). Read CLAUDE.md and docs/WORKER.md. Differences for local mode: baserom.gba exists, so do NOT set SKIP_ROM; run 'make compare' (must print OK) before every commit. Decompile every function of: python3 tools/scripts/shard.py show $n (smallest first). Commit often on this branch; do not push unless asked. Be terse." \
      --model "$MODEL" --permission-mode acceptEdits \
      --allowedTools "Bash Read Write Edit Glob Grep" > "$OUT/$id.log" 2>&1 &
  )
  echo "shard $n -> $wt ($MODEL)"
done
echo "running; follow with: tail -f $OUT/*.log   | merge with: tools/scripts/merge_workers.sh"
