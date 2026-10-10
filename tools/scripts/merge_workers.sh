#!/bin/sh
# merge_workers.sh [branches...]  merge worker/* branches one by one; keep a merge only if `make compare` stays OK.
cd "$(dirname "$0")/../.." || exit 1
git config merge.ours.driver true
git fetch -q origin 'refs/heads/worker/*:refs/remotes/origin/worker/*' || exit 1
BR=${*:-$(git branch -r | sed -n 's|^ *origin/\(worker/.*\)$|\1|p')}
for b in $BR; do
  if git merge-base --is-ancestor "origin/$b" HEAD; then echo "$b: up to date"; continue; fi
  head=$(git rev-parse HEAD)
  if ! git merge --no-edit -q "origin/$b" -m "Merge $b" 2>/dev/null; then
    echo "$b: CONFLICT"; git merge --abort; continue
  fi
  python3 tools/scripts/dedupe_headers.py >/dev/null; git commit -qam "dedupe headers" 2>/dev/null
  if make -s -j4 >/dev/null 2>&1 && sha1sum -c --quiet shiningsoul2_eu.sha1 2>/dev/null; then
    echo "$b: merged OK"
  else
    echo "$b: BROKE ROM, reverted"; git reset -q --hard "$head"
  fi
done
