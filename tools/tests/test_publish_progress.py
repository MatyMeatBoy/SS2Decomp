"""Exercise the publisher against real local remotes, including a push race."""
import importlib.util
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest


SCRIPT = Path(__file__).resolve().parents[1] / "scripts/publish_progress.py"
spec = importlib.util.spec_from_file_location("publish_progress", SCRIPT)
publisher = importlib.util.module_from_spec(spec)
spec.loader.exec_module(publisher)


class PublishProgressTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.base = Path(self.temp.name)
        self.remote = self.base / "remote.git"
        self.repo = self.base / "publisher"
        self.writer = self.base / "writer"
        self.git(self.base, "init", "--bare", str(self.remote))
        self.git(self.base, "clone", str(self.remote), str(self.repo))
        self.identity(self.repo)
        self.git(self.repo, "checkout", "-b", "main")
        (self.repo / "docs/progress").mkdir(parents=True)
        (self.repo / "docs/progress/report.txt").write_text("old")
        (self.repo / "source.txt").write_text("v1")
        self.git(self.repo, "add", ".")
        self.git(self.repo, "commit", "-m", "initial")
        self.git(self.repo, "push", "origin", "HEAD:refs/heads/main")
        self.git(self.base, "clone", "--branch", "main", str(self.remote), str(self.writer))
        self.identity(self.writer)
        self.generator = self.base / "generate.py"
        self.generator.write_text("from pathlib import Path\n"
                                  "Path('docs/progress/report.txt').write_text(Path('source.txt').read_text())\n")

    def git(self, root, *args):
        return subprocess.run(["git", *args], cwd=root, text=True,
                              stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                              check=True).stdout.strip()

    def identity(self, root):
        self.git(root, "config", "user.name", "Test")
        self.git(root, "config", "user.email", "test@example.invalid")

    def run_publisher(self, **kwargs):
        publisher.publish(self.repo, branch="main", generate=[sys.executable, str(self.generator)], **kwargs)

    def remote_file(self, name):
        return self.git(self.base, "--git-dir=" + str(self.remote), "show", "refs/heads/main:" + name)

    def test_publishes_and_noop_does_not_commit(self):
        self.run_publisher()
        self.assertEqual(self.remote_file("docs/progress/report.txt"), "v1")
        head = self.git(self.repo, "rev-parse", "HEAD")
        self.run_publisher()
        self.assertEqual(self.git(self.repo, "rev-parse", "HEAD"), head)

    def test_concurrent_source_change_regenerates_from_new_tip(self):
        marker = self.base / "raced"
        self.generator.write_text(self.generator.read_text() +
            "import subprocess\n" +
            "marker=Path(" + repr(str(marker)) + ")\n" +
            "if not marker.exists():\n" +
            " marker.write_text('yes')\n" +
            " writer=Path(" + repr(str(self.writer)) + ")\n" +
            " (writer/'source.txt').write_text('v2')\n" +
            " for args in [('add','source.txt'),('commit','-m','concurrent source'),('push','origin','HEAD:refs/heads/main')]:\n" +
            "  subprocess.run(['git',*args],cwd=writer,check=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE)\n")
        self.run_publisher()
        self.assertEqual(self.remote_file("source.txt"), "v2")
        self.assertEqual(self.remote_file("docs/progress/report.txt"), "v2")

    def test_continuing_races_exhaust_retries_without_publishing_stale_report(self):
        self.generator.write_text(self.generator.read_text() +
            "import subprocess\n" +
            "writer=Path(" + repr(str(self.writer)) + ")\n" +
            "source=writer/'source.txt'\n" +
            "source.write_text(source.read_text()+'x')\n" +
            "for args in [('add','source.txt'),('commit','-m','concurrent source'),('push','origin','HEAD:refs/heads/main')]:\n" +
            " subprocess.run(['git',*args],cwd=writer,check=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE)\n")
        with self.assertRaisesRegex(RuntimeError, "exhausted retries"):
            self.run_publisher(attempts=2)
        self.assertEqual(self.remote_file("source.txt"), "v1xx")
        self.assertEqual(self.remote_file("docs/progress/report.txt"), "old")

    def test_generator_cannot_publish_source_edits(self):
        self.generator.write_text(self.generator.read_text() +
                                  "Path('source.txt').write_text('unexpected')\n")
        with self.assertRaisesRegex(RuntimeError, "outside docs/progress"):
            self.run_publisher()
        self.assertEqual(self.remote_file("source.txt"), "v1")

    def test_generator_cannot_publish_staged_source_edits(self):
        self.generator.write_text(self.generator.read_text() +
            "import subprocess\n"
            "Path('source.txt').write_text('unexpected')\n"
            "subprocess.run(['git','add','source.txt'],check=True)\n")
        with self.assertRaisesRegex(RuntimeError, "outside docs/progress"):
            self.run_publisher()
        self.assertEqual(self.remote_file("source.txt"), "v1")

    def test_noop_generation_rechecks_remote_tip(self):
        self.run_publisher()  # The current tip already has an up-to-date report.
        self.git(self.writer, "pull", "--ff-only", "origin", "main")
        marker = self.base / "noop-raced"
        self.generator.write_text(self.generator.read_text() +
            "import subprocess\n" +
            "marker=Path(" + repr(str(marker)) + ")\n" +
            "if not marker.exists():\n" +
            " marker.write_text('yes')\n" +
            " writer=Path(" + repr(str(self.writer)) + ")\n" +
            " (writer/'source.txt').write_text('v2')\n" +
            " for args in [('add','source.txt'),('commit','-m','concurrent source'),('push','origin','HEAD:refs/heads/main')]:\n" +
            "  subprocess.run(['git',*args],cwd=writer,check=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE)\n")
        self.run_publisher()
        self.assertEqual(self.remote_file("docs/progress/report.txt"), "v2")

    def test_rejected_push_at_unchanged_tip_fails(self):
        hook = self.remote / "hooks/pre-receive"
        hook.write_text("#!/bin/sh\nexit 1\n")
        hook.chmod(0o755)
        with self.assertRaisesRegex(RuntimeError, "Progress push failed"):
            self.run_publisher()
        self.assertEqual(self.remote_file("docs/progress/report.txt"), "old")

    def test_dirty_checkout_is_preserved(self):
        (self.repo / "source.txt").write_text("local work")
        with self.assertRaisesRegex(RuntimeError, "clean checkout"):
            self.run_publisher()
        self.assertEqual((self.repo / "source.txt").read_text(), "local work")

    def test_generator_failure_is_not_swallowed(self):
        self.generator.write_text("raise SystemExit(3)\n")
        with self.assertRaises(subprocess.CalledProcessError):
            self.run_publisher()
        self.assertEqual(self.remote_file("docs/progress/report.txt"), "old")


if __name__ == "__main__":
    unittest.main()
