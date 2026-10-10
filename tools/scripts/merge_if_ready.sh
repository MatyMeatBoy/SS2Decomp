#!/bin/sh
# merge_if_ready.sh [MIN_COMMITS=10]  merge worker branches + push when at least MIN new worker commits are waiting.
cd "$(dirname "$0")/../.." || exit 1
MIN=${1:-10}
git fetch -q origin 'refs/heads/worker/*:refs/remotes/origin/worker/*' 2>/dev/null
N=0
for b in $(git branch -r | sed -n 's|^ *origin/\(worker/.*\)$|\1|p'); do
  c=$(git log --no-merges --oneline HEAD..origin/$b | wc -l); N=$((N+c))
done
echo "waiting worker commits: $N (min $MIN)"
[ "$N" -ge "$MIN" ] || exit 0
tools/scripts/merge_workers.sh | grep -E "merged|BROKE|CONFLICT"
make compare 2>&1 | tail -1
python3 tools/scripts/progress.py | sed -n 3p
git add -A; git commit -qm "Update progress after merging workers" -m "Co-Authored-By: Claude Sonnet 5.5 <noreply@anthropic.com>
Claude-Session: https://claude.ai/code/session_015Ezfor9BajoDd1akehgJQJ" 2>/dev/null
git push -q origin claude/rom-decompilation-research-obsal6 2>&1 | tail -1
