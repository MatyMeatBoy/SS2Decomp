#!/usr/bin/env python3
"""Atomic region-candidate reservations beneath an exclusive shard claim.

Metadata lives on coord/regions/FUNCTION, never in the working tree. See
docs/agents/HARD_FUNCTIONS.md. Git write permissions remain the trust boundary;
actor names are coordination labels, not credentials or semantic verification.
"""
import argparse
from datetime import datetime, timezone
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[2]
PREFIX = 'refs/heads/coord/regions/'
MANIFEST = 'coordination/region-plan.json'


class Error(RuntimeError):
    pass


def label(value):
    if not isinstance(value, str) or not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_-]{0,63}', value):
        raise Error('use a short alphanumeric label (hyphens/underscores allowed)')
    return value


def now():
    return datetime.now(timezone.utc).isoformat(timespec='seconds')


class Store:
    def __init__(self, root=ROOT):
        self.root = Path(root)

    def git(self, *args, data=None, env=None):
        process = subprocess.run(['git', *args], cwd=self.root, input=data,
                                 text=True, capture_output=True, env=env)
        if process.returncode:
            raise Error('git %s failed: %s' % (args[0], process.stderr.strip()))
        return process.stdout.strip()

    def tip(self, ref):
        lines = self.git('ls-remote', '--refs', 'origin', ref).splitlines()
        return next((line.split()[0] for line in lines if line.split()[1] == ref), '')

    def fetch(self, ref):
        sha = self.tip(ref)
        if not sha:
            raise Error('remote ref is missing: ' + ref)
        self.git('fetch', '-q', '--no-tags', 'origin', sha)
        return sha

    def read(self, function):
        label(function)
        sha = self.fetch(PREFIX + function)
        try:
            plan = json.loads(self.git('show', sha + ':' + MANIFEST))
            if plan['version'] != 1 or plan['function'] != function:
                raise ValueError('wrong plan version/function')
            if plan['state'] not in ('open', 'closed'):
                raise ValueError('invalid plan state')
        except (ValueError, KeyError, TypeError) as exc:
            raise Error('invalid remote region plan: ' + str(exc)) from exc
        return sha, plan

    def write(self, function, expected, plan):
        """Exact remote lease: even different-region writers must reread on a race."""
        label(function)
        parent = expected or plan['checkpoint']
        blob = self.git('hash-object', '-w', '--stdin',
                        data=json.dumps(plan, indent=2, sort_keys=True) + '\n')
        # A private index leaves HEAD, the real index and all work files alone.
        with tempfile.TemporaryDirectory(prefix='ss2-regions-') as temporary:
            env = dict(os.environ, GIT_INDEX_FILE=str(Path(temporary) / 'index'))
            self.git('read-tree', parent, env=env)
            self.git('update-index', '--add', '--cacheinfo', '100644,' + blob + ',' + MANIFEST, env=env)
            tree = self.git('write-tree', env=env)
        parents = ['-p', parent]
        # Keep frozen checkpoints and submitted artifacts reachable even after
        # their original branches disappear; JSON SHA strings alone do not pin.
        extra = [plan['checkpoint']]
        if plan['history'] and plan['history'][-1]['action'] == 'submit':
            extra.append(plan['history'][-1]['candidate']['sha'])
        for sha in dict.fromkeys(extra):
            if sha != parent:
                parents.extend(['-p', sha])
        commit = self.git('commit-tree', tree, *parents,
                          data='coordinate regions of ' + function + '\n')
        ref = PREFIX + function
        try:
            self.git('push', '-q', '--force-with-lease=' + ref + ':' + expected,
                     'origin', commit + ':' + ref)
        except Error as exc:
            raise Error('reservation not published; reread status before retrying: ' + str(exc)) from exc
        return commit

    def registered(self, function):
        rows = [line.split() for line in (self.root / 'tools/config/shards.txt').read_text().splitlines()]
        rows = [row for row in rows if len(row) >= 3 and row[1] == function]
        if len(rows) != 1:
            raise Error('function must have one registered shard: ' + function)
        shard, _, module = rows[0]
        functions = []
        for line in (self.root / 'tools/config/functions.cfg').read_text().splitlines():
            row = line.split('#', 1)[0].split()
            if len(row) >= 2 and row[0] in ('thumb', 'arm'):
                address = int(row[1], 0)
                name = row[2] if len(row) > 2 else ('sub_' if row[0] == 'thumb' else 'arm_') + '%08X' % address
                functions.append((address, name))
        functions.sort()
        for i, (start, name) in enumerate(functions[:-1]):
            if name == function:
                return 'refs/heads/shard/%03d' % int(shard), module, start, functions[i + 1][0]
        raise Error('cannot establish function address bounds: ' + function)

    def parent(self, plan):
        tip = self.fetch(plan['parent_ref'])
        if tip != plan['checkpoint']:
            raise Error('parent shard head changed; release/close and freeze a new plan')

    def init(self, function, owner, spec):
        label(function)
        label(owner)
        parent_ref, module, start, end = self.registered(function)
        branch = self.git('branch', '--show-current').split('@', 1)[0]
        checkpoint = self.git('rev-parse', 'HEAD')
        if 'refs/heads/' + branch != parent_ref or checkpoint != self.fetch(parent_ref):
            raise Error('initialize from the clean, published owner shard head')
        if self.git('status', '--porcelain', '-uno'):
            raise Error('commit/preserve tracked changes before freezing a checkpoint')
        intervals, ids = [], set()
        try:
            if not isinstance(spec['shared_declarations'], list):
                raise ValueError('shared_declarations must explicitly list the frozen declarations')
            if not spec['regions']:
                raise ValueError('at least one region is required')
            for region in spec['regions']:
                rid = label(region['id'])
                a, b = int(region['start'], 0), int(region['end'], 0)
                if rid in ids or not start <= a < b <= end or a % 2 or b % 2:
                    raise ValueError('duplicate id, unaligned or out-of-function interval: ' + rid)
                if any(a < y and x < b for x, y in intervals):
                    raise ValueError('overlapping regions: ' + rid)
                for field in ('entry', 'evidence'):
                    if not isinstance(region[field], str) or not region[field].strip():
                        raise ValueError('missing ' + field)
                for field in ('exits', 'live_in', 'live_out', 'stack', 'types'):
                    if not isinstance(region[field], list) or any(not isinstance(v, str) or not v.strip() for v in region[field]):
                        raise ValueError('invalid ' + field)
                intervals.append((a, b))
                ids.add(rid)
        except (KeyError, ValueError, TypeError) as exc:
            raise Error('invalid region contract: ' + str(exc)) from exc
        expected = self.tip(PREFIX + function)
        if expected:
            expected, previous = self.read(function)
            if previous['state'] != 'closed':
                raise Error('an open plan already exists; never replace its reservations')
        # Copy only contract fields; callers cannot inject a reservation/state.
        fields = ('id', 'start', 'end', 'entry', 'exits', 'live_in', 'live_out', 'stack', 'types', 'evidence')
        plan = dict(version=1, function=function, owner=owner, module=module,
                    parent_ref=parent_ref, checkpoint=checkpoint, state='open',
                    shared_declarations=spec['shared_declarations'],
                    regions=[dict({key: region[key] for key in fields}, state='free', worker=None)
                             for region in spec['regions']], history=[])
        plan['history'].append(dict(at=now(), action='init', actor=owner, evidence='frozen contract'))
        return self.write(function, expected, plan)

    def candidate(self, plan, region, candidate_ref):
        if not candidate_ref or not re.fullmatch(r'(?:refs/heads/)?codex/[A-Za-z0-9_./-]+', candidate_ref):
            raise Error('publish a candidate on a codex/ branch')
        ref = candidate_ref if candidate_ref.startswith('refs/') else 'refs/heads/' + candidate_ref
        self.git('check-ref-format', ref)
        sha = self.fetch(ref)
        self.git('merge-base', '--is-ancestor', plan['checkpoint'], sha)
        prefix = 'region-candidates/' + plan['function'] + '/' + region['id']
        allowed = {prefix + '.c', prefix + '.md'}
        changed = set(self.git('diff', '--name-only', plan['checkpoint'], sha).splitlines())
        if changed != allowed:
            raise Error('candidate must change only ' + ', '.join(sorted(allowed)))
        for path in allowed:
            if not self.git('show', sha + ':' + path):
                raise Error('candidate artifact is empty: ' + path)
        return dict(ref=ref, sha=sha, source=prefix + '.c', evidence=prefix + '.md')

    def change(self, function, action, actor, region_id=None, evidence='', candidate_ref=None, result=None):
        label(actor)
        expected, plan = self.read(function)
        if plan['state'] != 'open':
            raise Error('plan is closed')
        # Closing an abandoned plan must remain possible after its parent vanished.
        if action not in ('close', 'release'):
            self.parent(plan)
        if action in ('close', 'review') and actor != plan['owner']:
            raise Error('only the function owner can ' + action)
        if action != 'take' and not evidence.strip():
            raise Error('record concrete evidence/reason')
        if action == 'close':
            if any(r['state'] in ('claimed', 'submitted') for r in plan['regions']):
                raise Error('workers must release and owner must review all submissions first')
            plan['state'] = 'closed'
        else:
            region = next((r for r in plan['regions'] if r['id'] == region_id), None)
            if region is None:
                raise Error('unknown region')
            if action == 'take':
                if region['state'] != 'free':
                    raise Error('region is already reserved or reviewed')
                branch = self.git('branch', '--show-current')
                if not branch or 'refs/heads/' + branch.split('@', 1)[0] == plan['parent_ref']:
                    raise Error('use your independent checkout on a private branch')
                if self.git('rev-parse', 'HEAD') != plan['checkpoint'] or self.git('status', '--porcelain', '-uno'):
                    raise Error('take from the clean frozen checkpoint before creating candidates')
                region.update(state='claimed', worker=actor)
            elif action in ('release', 'submit'):
                if region['state'] != 'claimed' or region['worker'] != actor:
                    raise Error('only the current reserved worker may ' + action)
                if action == 'submit':
                    region['candidate'] = self.candidate(plan, region, candidate_ref)
                    region['state'] = 'submitted'
                else:
                    region.update(state='free', worker=None)
            elif action == 'review':
                if region['state'] != 'submitted' or result not in ('accepted', 'rejected'):
                    raise Error('review a submitted candidate as accepted or rejected')
                region['state'] = result
            else:
                raise Error('unknown action')
        plan['history'].append(dict(at=now(), action=action, actor=actor,
                                    region=region_id, evidence=evidence,
                                    candidate=region.get('candidate') if action == 'submit' else None))
        return self.write(function, expected, plan)


def require_closed(root, shard):
    """Called before shard rebase/delivery/release, with network errors fatal."""
    store = Store(root)
    for line in store.git('ls-remote', '--refs', 'origin', PREFIX + '*').splitlines():
        function = line.split()[1][len(PREFIX):]
        _, plan = store.read(function)
        if plan['parent_ref'] == 'refs/heads/' + shard and plan['state'] == 'open':
            raise Error('close region plan for %s before delivering/releasing %s' % (function, shard))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('action', choices=('init', 'status', 'take', 'submit', 'release', 'review', 'close'))
    parser.add_argument('function')
    parser.add_argument('region', nargs='?')
    parser.add_argument('--actor')
    parser.add_argument('--plan', type=Path)
    parser.add_argument('--candidate-ref')
    parser.add_argument('--result', choices=('accepted', 'rejected'))
    parser.add_argument('--evidence', default='')
    args = parser.parse_args()
    store = Store()
    try:
        if args.action == 'status':
            _, plan = store.read(args.function)
            try:
                store.parent(plan)
                plan['parent_live'] = True
            except Error:
                plan['parent_live'] = False
            print(json.dumps(plan, indent=2))
        elif args.action == 'init':
            if args.plan is None:
                raise Error('init requires --plan FILE.json')
            store.init(args.function, args.actor, json.loads(args.plan.read_text(encoding='utf-8')))
            print('Region plan published; workers must read status before taking a region.')
        else:
            store.change(args.function, args.action, args.actor, args.region,
                         args.evidence, args.candidate_ref, args.result)
            print('Region ' + args.action + ' published (no matching-byte credit).')
    except (Error, OSError, ValueError) as exc:
        parser.exit(1, str(exc) + '\n')


if __name__ == '__main__':
    main()
