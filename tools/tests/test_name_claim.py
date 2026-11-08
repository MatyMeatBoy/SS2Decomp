"""Naming reservations use atomic real Git remotes, never the caller index."""
import concurrent.futures
from contextlib import redirect_stdout
import io
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import threading
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
try:
    import name_claim as names
except ImportError:
    names = None

A, B, C = 'sub_0800023C', 'sub_08000274', 'sub_0800035C'


class NameClaimTests(unittest.TestCase):
    def setUp(self):
        self.assertIsNotNone(names, 'name_claim tool is not implemented')
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        self.remote = self.root / 'remote.git'
        self.a, self.b = self.root / 'alice', self.root / 'bob'
        self.git(self.root, 'init', '--bare', str(self.remote))
        self.git(self.root, 'clone', str(self.remote), str(self.a))
        self.identity(self.a)
        self.git(self.a, 'checkout', '-b', 'main')
        (self.a / 'tools/config').mkdir(parents=True)
        (self.a / 'docs/progress').mkdir(parents=True)
        (self.a / 'tools/config/functions.cfg').write_text(
            'thumb 0x0800023C\nthumb 0x08000274\nthumb 0x0800035C\narm 0x080000C0 Start\n')
        (self.a / 'docs/progress/functions.json').write_text('{"functions": []}\n')
        self.catalog(self.a, [])
        (self.a / 'dirty.txt').write_text('base\n')
        self.base = self.commit(self.a, 'base')
        self.git(self.a, 'push', 'origin', 'HEAD:main')
        self.git(self.root, 'clone', '--branch', 'main', str(self.remote), str(self.b))
        self.identity(self.b)
        self.sa, self.sb = names.Store(self.a), names.Store(self.b)

    def git(self, cwd, *args):
        return subprocess.run(['git', *args], cwd=cwd, check=True, text=True,
                              capture_output=True).stdout.strip()

    def identity(self, cwd):
        self.git(cwd, 'config', 'user.name', 'Fixture')
        self.git(cwd, 'config', 'user.email', 'fixture@example.invalid')

    def commit(self, cwd, message):
        self.git(cwd, 'add', '.')
        self.git(cwd, 'commit', '--allow-empty', '-qm', message)
        return self.git(cwd, 'rev-parse', 'HEAD')

    def catalog(self, cwd, rows):
        (cwd / 'tools/config/function_names.json').write_text(json.dumps(
            {'schema_version': 1, 'functions': rows}, indent=2) + '\n')

    def row(self, symbol=A, display='TaskFixture'):
        return {'address': '0x' + symbol[-8:], 'canonical_symbol': symbol,
                'display_name': display, 'status': 'confirmed',
                'evidence': [{'source': 'fixture.c', 'detail': 'observed fixture'}]}

    def refs(self):
        return self.git(self.a, 'ls-remote', '--heads', 'origin', names.PREFIX + '*')

    def test_true_two_clone_race_one_winner(self):
        barrier = threading.Barrier(2)
        def race(store, owner):
            push = store.push
            def synchronized(*args, **kwargs):
                barrier.wait(timeout=15)
                return push(*args, **kwargs)
            with mock.patch.object(store, 'push', side_effect=synchronized):
                try:
                    store.take(owner, [A], main='main')
                    return True
                except names.Error:
                    return False
        with concurrent.futures.ThreadPoolExecutor(2) as pool:
            wins = list(pool.map(lambda x: race(*x), [(self.sa, 'alice'), (self.sb, 'bob')]))
        self.assertEqual(sorted(wins), [False, True])
        self.assertEqual(len(self.sa.status()), 1)

    def test_batch_conflict_is_atomic_and_separate_addresses_coexist(self):
        self.sa.take('alice', [A], main='main')
        # Hide the occupied ref during precheck to force server-side atomic rejection.
        with mock.patch.object(self.sb, 'remote_refs', return_value={}):
            with self.assertRaises(names.Error):
                self.sb.take('bob', [A, B], main='main')
        self.assertEqual([r['canonical_symbol'] for r in self.sa.status()], [A])
        self.sb.take('bob', [B], main='main')
        self.assertEqual(len(self.sa.status()), 2)

    def test_dirty_head_index_and_worktree_unchanged(self):
        (self.a / 'dirty.txt').write_text('staged\n')
        self.git(self.a, 'add', 'dirty.txt')
        (self.a / 'dirty.txt').write_text('unstaged\n')
        (self.a / 'untracked.txt').write_text('private\n')
        before = (self.git(self.a, 'rev-parse', 'HEAD'), self.git(self.a, 'write-tree'),
                  self.git(self.a, 'status', '--porcelain'), (self.a / 'dirty.txt').read_bytes())
        self.sa.take('alice', [A, B], main='main')
        self.sa.status()
        self.sa.release('alice', [A, B])
        after = (self.git(self.a, 'rev-parse', 'HEAD'), self.git(self.a, 'write-tree'),
                 self.git(self.a, 'status', '--porcelain'), (self.a / 'dirty.txt').read_bytes())
        self.assertEqual(before, after)
        self.assertEqual((self.a / 'untracked.txt').read_text(), 'private\n')

    def test_release_wrong_owner_batch_and_stale_lease_fail(self):
        self.sa.take('alice', [A, B], main='main')
        with self.assertRaises(names.Error):
            self.sb.release('bob', [A, B])
        snapshot = self.sa.status()
        self.sa.release('alice', [A])
        self.sb.take('alice', [A], main='main')
        with self.assertRaises(names.Error):
            self.sa.release_snapshot('alice', snapshot)
        self.assertEqual(len(self.sa.status()), 2)  # B not partially removed

    def test_bad_unknown_duplicate_inputs_and_missing_owner(self):
        for owner, values in [('alice', ['--all']), ('alice', ['08009999']),
                              ('alice', [A, '0x0800023c']), ('../bad', [A]), ('', [A])]:
            with self.subTest(owner=owner, values=values), self.assertRaises(names.Error):
                self.sa.take(owner, values, main='main')
        self.assertFalse(self.refs())

    def test_fresh_main_confirmed_existing_alias_and_explicit_review(self):
        self.catalog(self.a, [self.row()])
        (self.a / 'docs/progress/functions.json').write_text(json.dumps({'functions': [
            {'address': '0x08000274', 'canonical_symbol': B,
             'name_source': 'c_definition_alias', 'name_status': 'existing'}]}))
        fresh = self.commit(self.a, 'fresh name and alias')
        self.git(self.a, 'push', 'origin', 'HEAD:main')
        for value in [A, B, 'Start']:
            with self.subTest(value=value), self.assertRaises(names.Error):
                self.sb.take('bob', [value], main='main')
        result = self.sb.take('bob', [A], review=True, main='main')
        self.assertEqual(result[0]['base'], fresh)
        self.assertEqual(self.git(self.b, 'rev-parse', 'HEAD'), self.base)

    def test_malformed_remote_metadata_fails_closed(self):
        self.sa.take('alice', [A], main='main')
        current = self.sa.status()[0]
        bad = dict(current, owner='../../invalid')
        sha = self.sa.metadata_commit({k: v for k, v in bad.items() if k not in ('head', 'ref')})
        self.git(self.a, 'push', 'origin', '--force', sha + ':' + current['ref'])
        with self.assertRaises(names.Error):
            self.sa.status()
        with self.assertRaises(names.Error):
            self.sa.release('alice', [A])

    def test_malformed_current_alias_report_fails_cleanly_before_reservation(self):
        (self.a / 'docs/progress/functions.json').write_text('{"functions": ["invalid"]}\n')
        self.commit(self.a, 'invalid current alias report')
        self.git(self.a, 'push', 'origin', 'HEAD:main')
        with self.assertRaises(names.Error):
            self.sa.take('alice', [A], main='main')
        self.assertFalse(self.refs())

    def fork_catalog(self, original_rows, head_rows, current_rows):
        self.catalog(self.a, original_rows)
        ancestor = self.commit(self.a, 'ancestor catalog')
        self.catalog(self.a, head_rows)
        head = self.commit(self.a, 'proposed delta')
        self.git(self.a, 'checkout', '--detach', ancestor)
        self.catalog(self.a, current_rows)
        base = self.commit(self.a, 'independent current main')
        return base, head

    def test_check_divergent_addition_conflicts_identical_already_integrated(self):
        base, head = self.fork_catalog([], [self.row()], [self.row(display='Different')])
        with self.assertRaisesRegex(names.Error, '0800023C'):
            self.sa.check(base, head)
        self.catalog(self.a, [self.row()])
        base = self.commit(self.a, 'identical landed')
        result = self.sa.check(base, head)
        self.assertEqual(result['already_integrated'], ['0x0800023C'])
        self.assertEqual(result['new'], [])

    def test_check_updates_and_deletions_including_conflicts(self):
        original = self.row()
        updated = self.row(display='Updated')
        base, head = self.fork_catalog([original], [updated], [original, self.row(B)])
        self.assertEqual(self.sa.check(base, head)['new'], ['0x0800023C'])
        self.catalog(self.a, [self.row(display='OtherUpdate'), self.row(B)])
        bad = self.commit(self.a, 'divergent update')
        with self.assertRaises(names.Error):
            self.sa.check(bad, head)
        # Independent deletion is a conflict with an update, not permission to restore.
        self.catalog(self.a, [self.row(B)])
        deleted = self.commit(self.a, 'delete')
        with self.assertRaises(names.Error):
            self.sa.check(deleted, head)

    def test_check_uncontended_and_identical_deletion(self):
        base, head = self.fork_catalog([self.row()], [], [self.row(), self.row(B)])
        self.assertEqual(self.sa.check(base, head)['new'], ['0x0800023C'])
        self.catalog(self.a, [self.row(B)])
        deleted = self.commit(self.a, 'same deletion landed')
        self.assertEqual(self.sa.check(deleted, head)['already_integrated'], ['0x0800023C'])

    def test_check_duplicate_unknown_and_stale_canonical_rejected(self):
        for rows in [[self.row(), self.row()], [self.row('sub_08009999')],
                     [dict(self.row(), canonical_symbol='stale')]]:
            self.git(self.a, 'checkout', '--detach', self.base)
            self.catalog(self.a, rows)
            head = self.commit(self.a, 'invalid catalog')
            with self.subTest(rows=rows), self.assertRaises(names.Error):
                self.sa.check(self.base, head)

    def test_atomic_unsupported_has_no_sequential_fallback(self):
        self.git(self.remote, 'config', 'receive.advertiseAtomic', 'false')
        with self.assertRaises(names.Error):
            self.sa.take('alice', [A, B], main='main')
        self.assertFalse(self.refs())

    def test_check_offline_dirty_checkout_and_delete_update_conflict(self):
        base, head = self.fork_catalog([self.row()], [], [self.row(display='Updated')])
        self.git(self.a, 'remote', 'set-url', 'origin', str(self.root / 'missing.git'))
        (self.a / 'dirty.txt').write_text('preserved unstaged\n')
        before = (self.git(self.a, 'rev-parse', 'HEAD'), self.git(self.a, 'write-tree'),
                  self.git(self.a, 'status', '--porcelain'))
        with self.assertRaises(names.Error):
            self.sa.check(base, head)
        self.assertEqual(before, (self.git(self.a, 'rev-parse', 'HEAD'),
                                 self.git(self.a, 'write-tree'), self.git(self.a, 'status', '--porcelain')))

    def test_check_current_registry_rebinding_rejected(self):
        base, head = self.fork_catalog([], [self.row()], [])
        path = self.a / 'tools/config/functions.cfg'
        path.write_text(path.read_text().replace('thumb 0x0800023C', 'thumb 0x0800023C ExistingName'))
        renamed = self.commit(self.a, 'canonical registry changed')
        with self.assertRaisesRegex(names.Error, 'stale'):
            self.sa.check(renamed, head)


class NamingWorkflowTests(unittest.TestCase):
    def test_help_never_constructs_a_store_or_fetches(self):
        for args in [['--help'], ['take', '--help'], ['release', '--help'], ['check', '--help']]:
            with self.subTest(args=args), mock.patch.object(sys, 'argv', ['name_claim.py'] + args), \
                    mock.patch.object(names, 'Store') as store, redirect_stdout(io.StringIO()):
                with self.assertRaises(SystemExit) as result:
                    names.main()
                self.assertEqual(result.exception.code, 0)
                store.assert_not_called()

    def test_pr_guard_uses_real_head_and_fresh_base_not_synthetic_merge(self):
        text = (Path(__file__).resolve().parents[2] / '.github/workflows/check.yml').read_text()
        build = text.split('\n  build:\n', 1)[1].split('\n  progress:\n', 1)[0]
        self.assertNotIn('\n  naming:', text)
        self.assertIn('PR_HEAD_SHA: ${{ github.event.pull_request.head.sha }}', build)
        self.assertIn('fetch-depth: 0', build)
        self.assertLess(build.index('name_claim.py check'), build.index('- name: deps'))
        self.assertIn("if: github.event_name == 'pull_request'", build)
        push = text.split('\n  push:\n', 1)[1].split('\n  pull_request:', 1)[0]
        self.assertIn('branches:', push)
        self.assertNotIn('branches-ignore:', push)
        push_branches = [line.strip()[2:].strip("'\"") for line in push.splitlines()
                         if line.strip().startswith('- ')]
        self.assertEqual(push_branches, ['claude/rom-decompilation-research-obsal6'])
        self.assertIn('PR_HEAD_SHA: ${{ github.event.pull_request.head.sha }}', text)
        self.assertIn('PR_BASE_BRANCH: ${{ github.base_ref }}', text)
        self.assertIn('fetch-depth: 0', text)
        self.assertIn('refs/remotes/origin/naming-check-base', text)
        self.assertIn('--head "$PR_HEAD_SHA"', text)
        self.assertNotIn('--head HEAD', text)


if __name__ == '__main__':
    unittest.main()
