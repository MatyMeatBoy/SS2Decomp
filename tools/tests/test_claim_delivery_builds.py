"""A successful pre-rebase build must not publish a failing rebased draft tree."""
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import claim


MAKEFILE = '''.PHONY: compare nonmatching
compare:
\t@echo compare >> build.log
\t@echo 'shiningsoul2_eu.gba: OK'
\t@if test -f reject-compare; then echo 'compare failed after checksum' >&2; exit 7; fi
nonmatching:
\t@echo nonmatching >> build.log
\t@if test -f reject-nm; then echo 'rebased draft compilation failed' >&2; exit 7; fi
'''


@unittest.skipUnless(shutil.which('make') and shutil.which('git'), 'requires make and Git')
class DeliveryBuildTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory(prefix='ss2-delivery-builds-')
        self.addCleanup(self.temporary.cleanup)
        self.folder = Path(self.temporary.name)
        self.repo = self.folder / 'worker'
        self.repo.mkdir()
        (self.repo / 'Makefile').write_text(MAKEFILE, encoding='utf-8', newline='\n')
        self.real_run = subprocess.run

    def git(self, repo, *args):
        result = self.real_run(['git', *args], cwd=repo, capture_output=True,
                               text=True, check=True)
        return result.stdout.strip()

    def configure(self, repo):
        self.git(repo, 'config', 'user.name', 'SS2 delivery test')
        self.git(repo, 'config', 'user.email', 'delivery@example.invalid')

    def events(self):
        return (self.repo / 'build.log').read_text(encoding='utf-8').splitlines()

    def test_success_checks_both_builds_in_order(self):
        with mock.patch.object(claim, 'ROOT', str(self.repo)):
            claim.make_compare()
        self.assertEqual(self.events(), ['compare', 'nonmatching'])

    def test_nonmatching_failure_is_not_hidden_by_matching_asm_fallback(self):
        (self.repo / 'reject-nm').write_text('draft fails\n')
        with mock.patch.object(claim, 'ROOT', str(self.repo)):
            with self.assertRaisesRegex(SystemExit, 'make nonmatching FAILED'):
                claim.make_compare()
        self.assertEqual(self.events(), ['compare', 'nonmatching'])

    def test_compare_nonzero_exit_is_rejected_even_after_printing_ok(self):
        (self.repo / 'reject-compare').write_text('late command fails\n')
        with mock.patch.object(claim, 'ROOT', str(self.repo)):
            with self.assertRaisesRegex(SystemExit, 'make compare FAILED'):
                claim.make_compare()
        self.assertEqual(self.events(), ['compare'])

    def delivery_after_upstream_draft_failure(self, command):
        self.git(self.repo, 'init', '-q', '-b', 'main')
        self.configure(self.repo)
        self.git(self.repo, 'add', 'Makefile')
        self.git(self.repo, 'commit', '-q', '-m', 'working main')
        origin = self.folder / 'origin.git'
        self.git(self.repo, 'clone', '-q', '--bare', str(self.repo), str(origin))
        self.git(self.repo, 'remote', 'add', 'origin', str(origin))
        self.git(self.repo, 'fetch', '-q', 'origin')
        self.git(self.repo, 'symbolic-ref', 'refs/remotes/origin/HEAD',
                 'refs/remotes/origin/main')
        self.git(self.repo, 'switch', '-q', '-c', 'shard/091')
        self.git(self.repo, 'commit', '-q', '--allow-empty', '-m', 'claim shard 091 (test)')
        claimed = self.git(self.repo, 'rev-parse', 'HEAD')
        self.git(self.repo, 'push', '-q', 'origin', 'shard/091')
        self.git(self.repo, 'switch', '-q', '-c', 'shard/091@worker')
        (self.repo / 'owned.txt').write_text('verified local checkpoint\n')
        self.git(self.repo, 'add', 'owned.txt')
        self.git(self.repo, 'commit', '-q', '-m', 'owned checkpoint')
        # This is the commit-hook situation: both builds pass before rebasing.
        self.real_run(['make', '-j1', 'compare', 'nonmatching'], cwd=self.repo,
                      capture_output=True, text=True, check=True)

        upstream = self.folder / 'upstream'
        self.git(self.repo, 'clone', '-q', str(origin), str(upstream))
        self.configure(upstream)
        (upstream / 'reject-nm').write_text('new main draft requires a rebuild\n')
        self.git(upstream, 'add', 'reject-nm')
        self.git(upstream, 'commit', '-q', '-m', 'upstream draft changes')
        advanced_main = self.git(upstream, 'rev-parse', 'HEAD')
        self.git(upstream, 'push', '-q', 'origin', 'main')
        requests = []

        def run(args, **kwargs):
            if args[:3] == ['gh', 'pr', 'create']:
                requests.append(args)
                return subprocess.CompletedProcess(args, 0)
            return self.real_run(args, **kwargs)

        # Ownership parsing and the external GitHub CLI are tested separately.
        # Rebase, both Make targets and both bare-remote refs are real here.
        with mock.patch.object(claim, 'ROOT', str(self.repo)), \
                mock.patch.object(claim, 'guard'), \
                mock.patch.object(claim.subprocess, 'run', side_effect=run):
            with self.assertRaisesRegex(SystemExit, 'make nonmatching FAILED'):
                command()
        self.assertTrue((self.repo / 'reject-nm').exists(), 'upstream was not rebased')
        self.git(self.repo, 'merge-base', '--is-ancestor', advanced_main, 'HEAD')
        self.assertEqual(self.git(self.repo, 'ls-remote', 'origin', 'refs/heads/main').split()[0],
                         advanced_main)
        self.assertEqual(self.git(self.repo, 'ls-remote', 'origin', 'refs/heads/shard/091').split()[0],
                         claimed)
        self.assertEqual(requests, [], 'a failing rebased draft must not open a PR')
        self.assertEqual(self.events(), ['compare', 'nonmatching', 'compare', 'nonmatching'])

    def test_pr_does_not_publish_if_rebase_introduces_nonmatching_failure(self):
        self.delivery_after_upstream_draft_failure(claim.cmd_pr)

    def test_land_does_not_publish_if_rebase_introduces_nonmatching_failure(self):
        self.delivery_after_upstream_draft_failure(claim.cmd_land)


if __name__ == '__main__':
    unittest.main()
