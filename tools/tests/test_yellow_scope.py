"""Regression tests for two shards sharing one C module (no ROM/toolchain needed)."""
import contextlib
import io
import pathlib
import runpy
import subprocess
import sys
import tempfile
import types
import unittest
from unittest import mock

SCRIPTS = pathlib.Path(__file__).resolve().parents[1] / "scripts"
OWN = "sub_08000001"
OTHER = "sub_08000002"


def draft(name):
    return ('#ifdef NONMATCHING\nvoid %s(void) {}\n#else\n'
            'INCLUDE_ASM("asm/nonmatchings/shared", %s);\n#endif\n') % (name, name)


class ScoreScopeTests(unittest.TestCase):
    def score(self, *arguments):
        with tempfile.TemporaryDirectory() as td:
            root = pathlib.Path(td)
            (root / "src").mkdir()
            (root / "src/shared.c").write_text(draft(OWN) + draft(OTHER))
            scored, unwrapped, builds = [], [], []
            fake = types.ModuleType("decomp")
            fake.ROOT = td
            fake.assemble_orig = lambda name, path: name

            def compare(original, candidate, name, **kwargs):
                scored.append(name)
                return True

            fake.compare = compare

            def command(args, **kwargs):
                if args[0] == "make":
                    builds.append(args)
                elif pathlib.Path(args[1]).name == "unwrap_func.py":
                    unwrapped.append(args[-1])
                return subprocess.CompletedProcess(args, 0, stdout="", stderr="")

            with mock.patch.dict(sys.modules, {"decomp": fake}), \
                    mock.patch.object(sys, "argv", ["nmscore.py", *arguments]), \
                    mock.patch.object(sys, "path", sys.path.copy()), \
                    mock.patch("subprocess.run", side_effect=command), \
                    contextlib.redirect_stdout(io.StringIO()):
                runpy.run_path(str(SCRIPTS / "nmscore.py"))
            return scored, unwrapped, builds

    def test_only_does_not_score_or_unwrap_another_shard_in_same_module(self):
        scored, unwrapped, builds = self.score("--unwrap", "--only=" + OWN, "shared")
        self.assertEqual(scored, [OWN])
        self.assertEqual(unwrapped, [OWN])
        self.assertEqual(len(builds), 1)

    def test_unknown_selected_function_does_not_build_or_unwrap(self):
        self.assertEqual(self.score("--unwrap", "--only=sub_08000003"), ([], [], []))

    def test_explicit_empty_selection_does_not_expand_to_all_functions(self):
        self.assertEqual(self.score("--unwrap", "--only="), ([], [], []))

    def test_legacy_module_mode_still_scores_all_its_drafts(self):
        scored, unwrapped, builds = self.score("--unwrap", "shared")
        self.assertEqual(scored, [OWN, OTHER])
        self.assertEqual(unwrapped, [OWN, OTHER])
        self.assertEqual(len(builds), 1)


class YellowScopeTests(unittest.TestCase):
    def test_cached_winner_from_another_shard_is_not_applied(self):
        with tempfile.TemporaryDirectory() as td:
            root = pathlib.Path(td)
            (root / "src").mkdir()
            (root / "src/shared.c").write_text(draft(OWN) + draft(OTHER))
            winners = root / "build/yellow/permuted"
            winners.mkdir(parents=True)
            for name in [OWN, OTHER]:
                (winners / (name + ".c")).write_text("/* cached winner */\n")
            namespace = runpy.run_path(str(SCRIPTS / "yellow.py"))
            calls = []

            def command(*args, **kwargs):
                calls.append(args)
                return subprocess.CompletedProcess(args, 0, stdout=OWN + " 1\n", stderr="")

            namespace["main"].__globals__.update(ROOT=td, S=str(SCRIPTS), run=command)
            with mock.patch.object(sys, "argv", ["yellow.py", "--only=" + OWN, "--procs=1"]), \
                    contextlib.redirect_stdout(io.StringIO()):
                namespace["main"]()
            apply_calls = [c for c in calls if pathlib.Path(c[0]).name == "apply_permuted.py"]
            self.assertEqual(len(apply_calls), 1)
            self.assertEqual(apply_calls[0][1:], (str(winners / (OWN + ".c")),))

    def test_yellow_forwards_exact_function_selection_to_scoring(self):
        with tempfile.TemporaryDirectory() as td:
            root = pathlib.Path(td)
            (root / "src").mkdir()
            (root / "src/shared.c").write_text(draft(OWN) + draft(OTHER))
            namespace = runpy.run_path(str(SCRIPTS / "yellow.py"))
            globals_ = namespace["main"].__globals__
            calls = []

            def command(*args, **kwargs):
                calls.append(args)
                return subprocess.CompletedProcess(args, 0, stdout=OWN + " 0\n", stderr="")

            globals_.update(ROOT=td, S=str(SCRIPTS), run=command)
            with mock.patch.object(sys, "argv", ["yellow.py", "--only=" + OWN, "--no-permute"]), \
                    contextlib.redirect_stdout(io.StringIO()):
                namespace["main"]()
            self.assertEqual(len(calls), 1)
            self.assertIn("--only=" + OWN, calls[0])
            self.assertTrue((root / "build/yellow" / (OWN + ".c")).exists())
            self.assertFalse((root / "build/yellow" / (OTHER + ".c")).exists())


class UnwrapScopeTests(unittest.TestCase):
    def test_cleanup_does_not_unwrap_another_function_in_same_module(self):
        namespace = runpy.run_path(str(SCRIPTS / "unwrap_matched.py"))
        own = '#ifdef NONMATCHING\nvoid %s(void) {}\n#else\nvoid %s(void) { }\n#endif\n' % (OWN, OWN)
        # A call to the selected function is not a definition of that function.
        other = '#ifdef NONMATCHING\nvoid %s(void) {}\n#else\nvoid %s(void) {\n    %s();\n}\n#endif\n' % (OTHER, OTHER, OWN)
        with tempfile.TemporaryDirectory() as td:
            source = pathlib.Path(td) / "shared.c"
            source.write_text(own + other)
            self.assertEqual(namespace["run"]([str(source)], only={OWN}), 1)
            result = source.read_text()
            self.assertIn('void %s(void) { }' % OWN, result)
            self.assertIn(other, result)


class ApplyScopeTests(unittest.TestCase):
    def test_applying_a_winner_limits_wrapper_cleanup_to_that_function(self):
        with tempfile.TemporaryDirectory() as td:
            root = pathlib.Path(td)
            (root / "src").mkdir()
            (root / "include").mkdir()
            asm = root / (OWN + ".s")
            asm.write_text("original")
            source = root / "src/shared.c"
            source.write_text("source snapshot")
            fake = types.ModuleType("decomp")
            fake.ROOT = td
            fake.split_functions = lambda text: ("", {OWN: 'void %s(void) {}' % OWN}, [OWN])
            fake.find_asm = lambda name: (str(asm) if asm.exists() else None, "shared")
            fake.check = lambda *args, **kwargs: True
            fake.apply = lambda *args: asm.unlink()
            cleanup = types.ModuleType("unwrap_matched")
            cleanup.run = mock.Mock(return_value=1)
            with mock.patch.dict(sys.modules, {"decomp": fake, "unwrap_matched": cleanup}), \
                    mock.patch.object(sys, "path", sys.path.copy()):
                namespace = runpy.run_path(str(SCRIPTS / "apply_permuted.py"))
                namespace["try_apply"].__globals__["rom_ok"] = lambda: True
                self.assertTrue(namespace["try_apply"](OWN, 'void %s(void) {}' % OWN))
            cleanup.run.assert_called_once_with([str(source)], only={OWN})


if __name__ == "__main__":
    unittest.main()
