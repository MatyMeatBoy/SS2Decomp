"""Region reservations use real Git remotes and exact compare-and-swap pushes."""
import copy
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
try:
    import region_claim as regions
except ImportError:
    regions = None

FUNC = 'sub_0800023C'


class RegionClaimTests(unittest.TestCase):
    def setUp(self):
        self.assertIsNotNone(regions, 'region_claim tool is not implemented')
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.base = Path(self.temp.name)
        self.remote = self.base / 'remote.git'
        self.owner = self.base / 'owner'
        self.worker = self.base / 'worker'
        self.git(self.base, 'init', '--bare', str(self.remote))
        self.git(self.base, 'clone', str(self.remote), str(self.owner))
        self.identity(self.owner)
        self.git(self.owner, 'checkout', '-b', 'shard/000')
        (self.owner / 'tools/config').mkdir(parents=True)
        (self.owner / 'tools/config/shards.txt').write_text('0 ' + FUNC + ' demo\n')
        (self.owner / 'tools/config/functions.cfg').write_text('thumb 0x0800023C\nthumb 0x0800027C\n')
        (self.owner / 'source.c').write_text('unchanged\n')
        self.git(self.owner, 'add', '.')
        self.git(self.owner, 'commit', '-m', 'claim shard 0 (owner)')
        self.git(self.owner, 'push', 'origin', 'HEAD:refs/heads/shard/000')
        self.checkpoint = self.git(self.owner, 'rev-parse', 'HEAD')
        self.git(self.base, 'clone', '--branch', 'shard/000', str(self.remote), str(self.worker))
        self.identity(self.worker)
        self.git(self.worker, 'checkout', '-b', 'codex/region-worker')
        self.owner_store = regions.Store(self.owner)
        self.worker_store = regions.Store(self.worker)
        self.spec = {'shared_declarations': ['types and aliases remain at the frozen checkpoint'],
                    'regions': [self.region('entry', '0x0800023C', '0x08000250'),
                                 self.region('exit', '0x08000250', '0x0800027C')]}

    def git(self, root, *args):
        return subprocess.run(['git', *args], cwd=root, text=True, capture_output=True,
                              check=True).stdout.strip()

    def identity(self, root):
        self.git(root, 'config', 'user.name', 'Test')
        self.git(root, 'config', 'user.email', 'test@example.invalid')

    def region(self, name, start, end):
        return dict(id=name, start=start, end=end, entry='original label at ' + start,
                    exits=['fallthrough at ' + end], live_in=['r0: input pointer'],
                    live_out=['r0: preserved pointer'], stack=['no private slots'],
                    types=['u32 input'], evidence='fixture ASM boundary audit')

    def initialize(self):
        self.owner_store.init(FUNC, 'owner', self.spec)

    def test_init_freezes_contract_and_never_changes_checkout(self):
        self.initialize()
        _, plan = self.worker_store.read(FUNC)
        self.assertEqual(plan['checkpoint'], self.checkpoint)
        self.assertEqual(plan['parent_ref'], 'refs/heads/shard/000')
        self.assertEqual(self.git(self.owner, 'rev-parse', 'HEAD'), self.checkpoint)
        self.assertEqual(self.git(self.owner, 'status', '--porcelain'), '')

    def test_rejects_overlap_missing_contract_and_foreign_function(self):
        bad = copy.deepcopy(self.spec)
        bad['regions'][1]['start'] = '0x0800024E'
        with self.assertRaises(regions.Error):
            self.owner_store.init(FUNC, 'owner', bad)
        bad = copy.deepcopy(self.spec)
        del bad['regions'][0]['live_out']
        with self.assertRaises(regions.Error):
            self.owner_store.init(FUNC, 'owner', bad)
        with self.assertRaises(regions.Error):
            self.owner_store.init('sub_08009999', 'owner', self.spec)

    def test_competing_snapshot_only_one_reservation_wins(self):
        self.initialize()
        old, a = self.owner_store.read(FUNC)
        other_old, b = self.worker_store.read(FUNC)
        a['regions'][0].update(state='claimed', worker='alice')
        b['regions'][0].update(state='claimed', worker='bob')
        self.owner_store.write(FUNC, old, a)
        with self.assertRaises(regions.Error):
            self.worker_store.write(FUNC, other_old, b)
        _, current = self.worker_store.read(FUNC)
        self.assertEqual(current['regions'][0]['worker'], 'alice')

    def test_only_reserved_worker_can_release_or_submit(self):
        self.initialize()
        self.worker_store.change(FUNC, 'take', 'alice', 'entry')
        with self.assertRaises(regions.Error):
            self.owner_store.change(FUNC, 'release', 'bob', 'entry', evidence='stop')
        with self.assertRaises(regions.Error):
            self.owner_store.change(FUNC, 'take', 'bob', 'entry')
        with self.assertRaises(regions.Error):
            self.owner_store.change(FUNC, 'close', 'intruder', evidence='stop')
        with self.assertRaises(regions.Error):
            self.owner_store.change(FUNC, 'close', 'owner', evidence='stop')
        self.worker_store.change(FUNC, 'release', 'alice', 'entry', evidence='preserved privately; no result')
        self.owner_store.change(FUNC, 'close', 'owner', evidence='rotation')

    def test_parent_deletion_and_replacement_invalidate_worker(self):
        self.initialize()
        self.git(self.owner, 'push', 'origin', '--delete', 'shard/000')
        with self.assertRaises(regions.Error):
            self.worker_store.change(FUNC, 'take', 'alice', 'entry')
        # A replacement claim not descending from the frozen parent is stale.
        tree = self.git(self.owner, 'rev-parse', 'HEAD^{tree}')
        replacement = self.git(self.owner, 'commit-tree', tree, '-m', 'replacement')
        self.git(self.owner, 'push', 'origin', replacement + ':refs/heads/shard/000')
        with self.assertRaises(regions.Error):
            self.worker_store.change(FUNC, 'take', 'alice', 'entry')

    def test_worker_can_release_after_parent_disappears(self):
        self.initialize()
        self.worker_store.change(FUNC, 'take', 'alice', 'entry')
        self.git(self.owner, 'push', 'origin', '--delete', 'shard/000')
        self.worker_store.change(FUNC, 'release', 'alice', 'entry', evidence='jobs stopped, artifacts preserved')
        self.owner_store.change(FUNC, 'close', 'owner', evidence='abandoned parent; cleanup')

    def test_parent_fast_forward_requires_new_contract(self):
        self.initialize()
        self.git(self.owner, 'commit', '--allow-empty', '-m', 'new checkpoint')
        self.git(self.owner, 'push', 'origin', 'HEAD:refs/heads/shard/000')
        with self.assertRaises(regions.Error):
            self.worker_store.change(FUNC, 'take', 'alice', 'entry')

    def test_take_requires_frozen_checkpoint_and_private_branch(self):
        self.initialize()
        with self.assertRaises(regions.Error):
            self.owner_store.change(FUNC, 'take', 'alice', 'entry')
        self.git(self.worker, 'commit', '--allow-empty', '-m', 'wrong base')
        with self.assertRaises(regions.Error):
            self.worker_store.change(FUNC, 'take', 'alice', 'entry')

    def publish_candidate(self, foreign=False):
        folder = self.worker / 'region-candidates' / FUNC
        folder.mkdir(parents=True)
        (folder / 'entry.c').write_text('/* replacement block only */\n{ value += 1; }\n')
        (folder / 'entry.md').write_text('Original ASM boundaries, full-function diff and failed attempts.\n')
        if foreign:
            (self.worker / 'source.c').write_text('foreign edit\n')
        self.git(self.worker, 'add', '.')
        self.git(self.worker, 'commit', '-m', 'candidate entry')
        self.git(self.worker, 'push', 'origin', 'HEAD:refs/heads/codex/region-worker')
        return self.git(self.worker, 'rev-parse', 'HEAD')

    def test_candidate_sha_review_and_close_keep_audit_history(self):
        self.initialize()
        self.worker_store.change(FUNC, 'take', 'alice', 'entry')
        sha = self.publish_candidate()
        self.worker_store.change(FUNC, 'submit', 'alice', 'entry',
                                 candidate_ref='codex/region-worker', evidence='full-function diff improved')
        _, plan = self.owner_store.read(FUNC)
        self.assertEqual(plan['regions'][0]['candidate']['sha'], sha)
        with self.assertRaises(regions.Error):
            self.owner_store.change(FUNC, 'close', 'owner', evidence='too early')
        self.owner_store.change(FUNC, 'review', 'owner', 'entry',
                                result='accepted', evidence='assembled and checked; still NONMATCHING')
        self.owner_store.change(FUNC, 'close', 'owner', evidence='checkpoint complete')
        _, plan = self.owner_store.read(FUNC)
        self.assertEqual(plan['state'], 'closed')
        self.assertEqual(plan['regions'][0]['candidate']['sha'], sha)
        self.assertGreaterEqual(len(plan['history']), 5)
        metadata, _ = self.owner_store.read(FUNC)
        self.git(self.owner, 'merge-base', '--is-ancestor', sha, metadata)
        self.git(self.worker, 'push', 'origin', '--delete', 'codex/region-worker')
        self.git(self.owner, 'show', sha + ':region-candidates/' + FUNC + '/entry.c')

    def test_candidate_cannot_modify_production_source(self):
        self.initialize()
        self.worker_store.change(FUNC, 'take', 'alice', 'entry')
        self.publish_candidate(foreign=True)
        with self.assertRaises(regions.Error):
            self.worker_store.change(FUNC, 'submit', 'alice', 'entry',
                                     candidate_ref='codex/region-worker', evidence='invalid source edit')

    def test_open_plan_blocks_parent_delivery_until_closed(self):
        self.initialize()
        with self.assertRaises(regions.Error):
            regions.require_closed(self.owner, 'shard/000')
        self.owner_store.change(FUNC, 'close', 'owner', evidence='no active workers')
        regions.require_closed(self.owner, 'shard/000')
        self.owner_store.init(FUNC, 'owner', self.spec)
        with self.assertRaises(regions.Error):
            regions.require_closed(self.owner, 'shard/000')

    def test_existing_claim_commands_invoke_region_guard_before_mutating(self):
        import claim
        for operation in (claim.rebase_on_main, claim.cmd_release):
            with self.subTest(operation=operation.__name__), \
                 mock.patch.object(claim, 'current_shard', return_value='shard/000'), \
                 mock.patch.object(claim, 'require_regions_closed', side_effect=SystemExit('open plan')), \
                 mock.patch.object(claim, 'git') as git:
                with self.assertRaises(SystemExit):
                    operation()
                git.assert_not_called()


if __name__ == '__main__':
    unittest.main()
