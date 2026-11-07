"""Help requests must never enter shard ownership or delivery operations."""
import contextlib
import io
from pathlib import Path
import runpy
import sys
import unittest
from unittest import mock


SCRIPT = Path(__file__).resolve().parents[1] / "scripts" / "claim.py"


class ClaimHelpTests(unittest.TestCase):
    def assert_help_only(self, args):
        output = io.StringIO()
        with mock.patch.object(sys, "argv", [str(SCRIPT), *args]), \
                mock.patch("subprocess.run", side_effect=AssertionError(
                    "help must not start Git, builds or external commands")) as command, \
                contextlib.redirect_stdout(output):
            try:
                runpy.run_path(str(SCRIPT), run_name="__main__")
            except SystemExit as exc:
                self.assertEqual(exc.code, 0, "help must exit successfully")
            except Exception as exc:
                self.fail("help entered command dispatch: %s" % exc)
            else:
                self.fail("help must exit before command dispatch")
        command.assert_not_called()
        self.assertIn("usage: claim.py", output.getvalue())
        self.assertIn("take AGENT [SHARD]", output.getvalue())

    def test_top_level_help_is_read_only(self):
        for flag in ("-h", "--help"):
            with self.subTest(flag=flag):
                self.assert_help_only([flag])

    def test_each_subcommand_help_is_read_only(self):
        for command in ("status", "take", "land", "pr", "release", "who", "stale"):
            for flag in ("-h", "--help"):
                with self.subTest(command=command, flag=flag):
                    self.assert_help_only([command, flag])

    def test_help_after_arguments_does_not_claim_release_or_deliver(self):
        for args in (["take", "example-agent", "56", "--help"],
                     ["release", "56", "-h"],
                     ["stale", "0", "--release", "--help"]):
            with self.subTest(args=args):
                self.assert_help_only(args)


if __name__ == "__main__":
    unittest.main()
