"""PR metadata must describe the active private branch, not a stale canonical local ref."""
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "scripts"))
import claim


class PrivateBranchPrTests(unittest.TestCase):
    def deliver(self, private=True, multiple=False):
        with tempfile.TemporaryDirectory(prefix="ss2-claim-pr-") as td:
            folder = Path(td)
            repo = folder / "worker"
            repo.mkdir()
            run = subprocess.run

            def git(*args):
                result = run(["git", *args], cwd=repo, capture_output=True, text=True, check=True)
                return result.stdout.strip()

            git("init", "-q", "-b", "main")
            git("config", "user.name", "MatyMeatBoy")
            git("config", "user.email", "108221324+MatyMeatBoy@users.noreply.github.com")
            git("commit", "-q", "--allow-empty", "-m", "main checkpoint")
            base = git("rev-parse", "HEAD")
            git("branch", "shard/091")
            origin = folder / "origin.git"
            git("clone", "-q", "--bare", str(repo), str(origin))
            git("remote", "add", "origin", str(origin))
            git("fetch", "-q", "origin")
            if private:
                git("worktree", "add", "-q", str(folder / "canonical-worker"), "shard/091")
                git("switch", "-q", "-c", "shard/091@worker")
            else:
                git("switch", "-q", "shard/091")
            if multiple:
                git("commit", "-q", "--allow-empty", "-m", "prepare owned target",
                    "-m", "Keep the first source checkpoint and its evidence.")
            git("commit", "-q", "--allow-empty", "-m", "decompile owned target",
                "-m", "Preserve the verified source checkpoint.\n\nEvidence: bounded original-ROM cases.")
            head = git("rev-parse", "HEAD")
            requests = []

            def command(args, **kwargs):
                if args[:3] != ["gh", "pr", "create"]:
                    return run(args, **kwargs)
                # The external CLI's --fill resolves --head as a local branch.
                # This is the stale-ref condition from real fallback worktrees.
                if "--fill" in args:
                    selected = args[args.index("--head") + 1]
                    subjects = git("log", "--format=%s", "origin/main.." + selected)
                    requests.append({"created": bool(subjects), "args": args})
                    return subprocess.CompletedProcess(args, int(not subjects))
                body_file = Path(args[args.index("--body-file") + 1])
                requests.append({"created": True, "args": args,
                                 "title": args[args.index("--title") + 1],
                                 "body": body_file.read_text(encoding="utf-8")})
                return subprocess.CompletedProcess(args, 0)

            with mock.patch.object(claim, "ROOT", str(repo)), \
                    mock.patch.object(claim, "rebase_on_main", return_value="main"), \
                    mock.patch.object(claim, "guard"), \
                    mock.patch.object(claim, "make_compare"), \
                    mock.patch.object(claim.subprocess, "run", side_effect=command):
                claim.cmd_pr()

            self.assertEqual(git("rev-parse", "shard/091"), base if private else head)
            self.assertEqual(git("rev-parse", "origin/shard/091"), head)
            self.assertEqual(len(requests), 1)
            request = requests[0]
            self.assertTrue(request["created"], "--fill read the stale local canonical branch")
            self.assertEqual(request["args"][request["args"].index("--head") + 1], "shard/091")
            if not private:
                self.assertIn("--fill", request["args"])
                return
            self.assertNotIn("--fill", request["args"])
            self.assertEqual(request["title"], "decompile owned target")
            self.assertIn("Preserve the verified source checkpoint.", request["body"])
            self.assertIn("Evidence: bounded original-ROM cases.", request["body"])
            self.assertNotIn("main checkpoint", request["body"])
            if multiple:
                self.assertIn("Keep the first source checkpoint and its evidence.", request["body"])
                self.assertLess(request["body"].index("prepare owned target"),
                                request["body"].index("decompile owned target"))

    def test_private_head_ignores_stale_canonical_branch_in_another_worktree(self):
        self.deliver()

    def test_private_pr_body_keeps_all_new_commit_messages_in_order(self):
        self.deliver(multiple=True)

    def test_canonical_branch_keeps_normal_gh_fill_behavior(self):
        self.deliver(private=False)


if __name__ == "__main__":
    unittest.main()
