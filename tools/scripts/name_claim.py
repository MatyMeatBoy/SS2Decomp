#!/usr/bin/env python3
"""Atomic per-address naming reservations and offline catalog reconciliation.

See docs/agents/NAMING_WORKFLOW.md. Owner labels coordinate repository writers;
they are not authentication, evidence of a name, or permission to edit game C.
"""
import argparse
from datetime import datetime, timezone
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile
import uuid

from function_names import ANONYMOUS, IDENTIFIER

ROOT = Path(__file__).resolve().parents[2]
PREFIX = 'refs/heads/coord/names/'
MANIFEST = 'coordination/name-claim.json'
MAIN = 'claude/rom-decompilation-research-obsal6'
CATALOG = 'tools/config/function_names.json'
REGISTRY = 'tools/config/functions.cfg'
REPORT = 'docs/progress/functions.json'
OID = re.compile(r'(?:[0-9a-f]{40}|[0-9a-f]{64})\Z')


class Error(RuntimeError):
    pass


def owner_label(value):
    if not isinstance(value, str) or not re.fullmatch(r'[A-Za-z0-9][A-Za-z0-9_-]{0,63}', value):
        raise Error('owner must be a short alphanumeric label (hyphens/underscores allowed)')
    return value


def address(value):
    if not isinstance(value, str) or not re.fullmatch(r'(?:0[xX][0-9a-fA-F]{1,8}|[0-9a-fA-F]{8})', value):
        raise Error('use a registered canonical symbol or hexadecimal address: ' + str(value))
    return int(value, 16)


def registry(text):
    result = {}
    for line in text.splitlines():
        row = line.split('#', 1)[0].split()
        if not row or row[0] == 'farjump':
            continue
        if len(row) not in (2, 3) or row[0] not in ('thumb', 'arm'):
            raise Error('invalid function registry row: ' + line)
        try:
            addr = int(row[1], 0)
        except ValueError as exc:
            raise Error('invalid registered address: ' + row[1]) from exc
        name = row[2] if len(row) == 3 else ('sub_' if row[0] == 'thumb' else 'arm_') + '%08X' % addr
        if not 0 <= addr <= 0xffffffff or addr in result or name in result.values() or not IDENTIFIER.fullmatch(name):
            raise Error('duplicate/invalid registry address or symbol: ' + line)
        result[addr] = name
    return result


def catalog(text, registered):
    try:
        document = json.loads(text)
        if document['schema_version'] != 1 or not isinstance(document['functions'], list):
            raise ValueError('unsupported catalog schema')
        rows = {}
        for original in document['functions']:
            row = dict(original)
            addr = address(row['address'])
            if addr not in registered or addr in rows:
                raise ValueError('unknown/duplicate address: 0x%08X' % addr)
            if row.get('canonical_symbol') != registered[addr]:
                raise ValueError('stale canonical symbol: 0x%08X' % addr)
            name = row.get('display_name', '')
            if not isinstance(name, str) or not IDENTIFIER.fullmatch(name) or ANONYMOUS.fullmatch(name):
                raise ValueError('display_name must be descriptive')
            if row.get('status') not in ('confirmed', 'proposed') or row.get('domain', 'game') not in ('game', 'sdk'):
                raise ValueError('invalid status/domain')
            evidence = row.get('evidence')
            if not isinstance(evidence, list) or not evidence or any(
                    not isinstance(e, dict) or not e.get('source') or not e.get('detail') for e in evidence):
                raise ValueError('name requires source/detail evidence')
            row['address'] = '0x%08X' % addr
            rows[addr] = row
        return rows, {key: value for key, value in document.items() if key != 'functions'}
    except (ValueError, KeyError, TypeError) as exc:
        raise Error('invalid naming catalog: ' + str(exc)) from exc


class Store:
    def __init__(self, root=ROOT):
        self.root = Path(root)

    def git(self, *args, data=None, env=None):
        p = subprocess.run(['git', *args], cwd=self.root, input=data, text=True,
                           capture_output=True, env=env)
        if p.returncode:
            raise Error('git %s failed: %s' % (args[0], p.stderr.strip()))
        return p.stdout.strip()

    def show(self, sha, path):
        return self.git('show', sha + ':' + path)

    def resolve(self, value):
        # Resolve data as a single revision argument, never a shell fragment.
        return self.git('rev-parse', '--verify', '--end-of-options', value + '^{commit}')

    def remote_refs(self):
        return {ref: sha for sha, ref in (line.split() for line in
                self.git('ls-remote', '--refs', 'origin', PREFIX + '*').splitlines())}

    def fresh_main(self, main):
        ref = 'refs/heads/' + main
        self.git('check-ref-format', ref)
        lines = self.git('ls-remote', '--refs', 'origin', ref).splitlines()
        sha = next((sha for sha, name in (line.split() for line in lines) if name == ref), '')
        if not OID.fullmatch(sha):
            raise Error('remote main branch is missing: ' + main)
        self.fetch(sha)
        return sha

    def fetch(self, sha):
        if not OID.fullmatch(sha):
            raise Error('invalid remote commit ID')
        self.git('fetch', '-q', '--no-tags', '--no-write-fetch-head', 'origin', sha)

    def inputs(self, values, registered):
        by_name = {name: addr for addr, name in registered.items()}
        selected = []
        for value in values:
            addr = by_name[value] if value in by_name else address(value)
            if addr not in registered or addr in selected:
                raise Error('unknown/duplicate function: ' + value)
            selected.append(addr)
        if not selected:
            raise Error('at least one function is required')
        return selected

    def metadata_commit(self, record):
        blob = self.git('hash-object', '-w', '--stdin',
                        data=json.dumps(record, sort_keys=True, indent=2) + '\n')
        with tempfile.TemporaryDirectory(prefix='ss2-name-index-') as temporary:
            env = dict(os.environ, GIT_INDEX_FILE=str(Path(temporary) / 'index'))
            self.git('read-tree', '--empty', env=env)
            self.git('update-index', '--add', '--cacheinfo', '100644,' + blob + ',' + MANIFEST, env=env)
            tree = self.git('write-tree', env=env)
        return self.git('commit-tree', tree, '-p', record['base'],
                        data='reserve naming of ' + record['address'] + '\n')

    def push(self, changes):
        # No fallback: unsupported atomic push or ANY lease rejection fails the batch.
        leases = ['--force-with-lease=' + ref + ':' + old for ref, old, new in changes]
        specs = [(new or '') + ':' + ref for ref, old, new in changes]
        self.git('push', '--atomic', '--porcelain', *leases, 'origin', *specs)

    def read(self, ref, sha):
        if not re.fullmatch(re.escape(PREFIX) + '[0-9A-F]{8}', ref):
            raise Error('malformed naming reservation ref: ' + ref)
        self.fetch(sha)
        try:
            record = json.loads(self.show(sha, MANIFEST))
            required = {'schema_version', 'address', 'canonical_symbol', 'owner', 'base',
                        'main', 'review', 'created_utc', 'reservation_id'}
            if set(record) != required or record['schema_version'] != 1:
                raise ValueError('unsupported metadata schema')
            owner_label(record['owner'])
            addr = address(record['address'])
            if ref != PREFIX + '%08X' % addr or record['address'] != '0x%08X' % addr:
                raise ValueError('metadata address/ref mismatch')
            if not OID.fullmatch(record['base']) or not isinstance(record['review'], bool):
                raise ValueError('invalid base/review')
            if not isinstance(record['created_utc'], str) or not record['created_utc'] or not re.fullmatch('[0-9a-f]{32}', record['reservation_id']):
                raise ValueError('invalid creation metadata')
            self.git('check-ref-format', 'refs/heads/' + record['main'])
            registered = registry(self.show(record['base'], REGISTRY))
            if registered.get(addr) != record['canonical_symbol']:
                raise ValueError('stale canonical binding at reservation base')
            self.git('merge-base', '--is-ancestor', record['base'], sha)
        except (ValueError, TypeError, KeyError) as exc:
            raise Error('invalid remote naming reservation: ' + str(exc)) from exc
        return dict(record, head=sha, ref=ref)

    def status(self):
        return [self.read(ref, sha) for ref, sha in sorted(self.remote_refs().items())]

    def take(self, owner, functions, review=False, main=MAIN):
        owner_label(owner)
        base = self.fresh_main(main)
        registered = registry(self.show(base, REGISTRY))
        rows, _ = catalog(self.show(base, CATALOG), registered)
        selected = self.inputs(functions, registered)
        try:
            report = json.loads(self.show(base, REPORT))['functions']
            if not isinstance(report, list) or any(not isinstance(row, dict) for row in report):
                raise ValueError('functions must be an array of report rows')
            aliases = {address(row['address']) for row in report if
                       row.get('name_source') == 'c_definition_alias' and
                       row.get('name_status') == 'existing' and
                       registered.get(address(row['address'])) == row.get('canonical_symbol')}
        except (KeyError, TypeError, ValueError) as exc:
            raise Error('invalid current-main identification report') from exc
        refs = self.remote_refs()
        records, changes = [], []
        for addr in selected:
            ref = PREFIX + '%08X' % addr
            if ref in refs:
                raise Error('already reserved: 0x%08X' % addr)
            if not review and ((addr in rows and rows[addr]['status'] == 'confirmed') or
                               not ANONYMOUS.fullmatch(registered[addr]) or addr in aliases):
                raise Error('already identified; use --review explicitly: 0x%08X' % addr)
            record = dict(schema_version=1, address='0x%08X' % addr,
                          canonical_symbol=registered[addr], owner=owner, base=base, main=main,
                          review=bool(review), created_utc=datetime.now(timezone.utc).isoformat(),
                          reservation_id=uuid.uuid4().hex)
            sha = self.metadata_commit(record)
            changes.append((ref, '', sha))
            records.append(dict(record, ref=ref, head=sha))
        self.push(changes)
        return records

    def release_snapshot(self, owner, records):
        owner_label(owner)
        changes = []
        for snapshot in records:
            current = self.read(snapshot['ref'], snapshot['head'])
            if current != snapshot or current['owner'] != owner:
                raise Error('owner/metadata mismatch; reservation not released')
            changes.append((current['ref'], current['head'], ''))
        if not changes or len({row[0] for row in changes}) != len(changes):
            raise Error('release requires a unique nonempty reservation batch')
        self.push(changes)

    def release(self, owner, functions):
        rows = self.status()
        registered = {address(r['address']): r['canonical_symbol'] for r in rows}
        selected = self.inputs(functions, registered)
        by_addr = {address(r['address']): r for r in rows}
        self.release_snapshot(owner, [by_addr[addr] for addr in selected])

    def check(self, base, head):
        base, head = self.resolve(base), self.resolve(head)
        ancestor = self.git('merge-base', base, head)
        snapshots = []
        for sha in (ancestor, head, base):
            registered = registry(self.show(sha, REGISTRY))
            rows, metadata = catalog(self.show(sha, CATALOG), registered)
            snapshots.append((rows, metadata, registered))
        old, proposed, current = [s[0] for s in snapshots]
        result = dict(base=base, head=head, merge_base=ancestor, new=[], already_integrated=[])
        conflicts = []
        for addr in sorted(set(old) | set(proposed)):
            if old.get(addr) == proposed.get(addr):
                continue
            label = '0x%08X' % addr
            if addr not in snapshots[2][2] or (proposed.get(addr) and proposed[addr]['canonical_symbol'] != snapshots[2][2][addr]):
                conflicts.append(label + ' (unknown/stale current canonical binding)')
            elif current.get(addr) == proposed.get(addr):
                result['already_integrated'].append(label)
            elif current.get(addr) == old.get(addr):
                result['new'].append(label)
            else:
                conflicts.append(label)
        # Catalog policy/schema changes must not silently overwrite concurrent metadata.
        om, pm, cm = [s[1] for s in snapshots]
        missing = object()
        for key in sorted(set(om) | set(pm)):
            before, after, live = [m.get(key, missing) for m in (om, pm, cm)]
            if before != after and live not in (before, after):
                conflicts.append('catalog metadata ' + key)
        if conflicts:
            raise Error('catalog conflicts; reconcile explicitly: ' + ', '.join(conflicts))
        return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    commands = parser.add_subparsers(dest='action', required=True)
    commands.add_parser('status', help='list live reservations (advisory snapshot)')
    take = commands.add_parser('take', help='reserve the entire batch atomically')
    take.add_argument('owner')
    take.add_argument('functions', nargs='+')
    take.add_argument('--review', action='store_true')
    take.add_argument('--main', default=MAIN)
    release = commands.add_parser('release', help='preserve work first, then release only your batch')
    release.add_argument('owner')
    release.add_argument('functions', nargs='+')
    check = commands.add_parser('check', help='offline three-way catalog conflict check')
    check.add_argument('--base', required=True)
    check.add_argument('--head', required=True)
    args = parser.parse_args()
    store = Store()
    try:
        if args.action == 'status':
            result = store.status()
        elif args.action == 'take':
            result = store.take(args.owner, args.functions, args.review, args.main)
        elif args.action == 'release':
            store.release(args.owner, args.functions)
            result = {'released': args.functions, 'owner': args.owner}
        else:
            result = store.check(args.base, args.head)
        print(json.dumps(result, indent=2))
    except (Error, OSError, ValueError) as exc:
        parser.exit(1, str(exc) + '\n')


if __name__ == '__main__':
    main()
