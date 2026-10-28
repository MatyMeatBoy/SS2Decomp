"""A heuristic diff distance must never override a failed byte/relocation match."""
import contextlib
import importlib.util
import io
import os
import pathlib
import runpy
import shutil
import subprocess
import sys
import tempfile
import types
import unittest
from unittest import mock

SCRIPTS = pathlib.Path(__file__).resolve().parents[1] / "scripts"
FUNC = "sub_08000001"
REORDERED = """size: orig 6, candidate 6
--- original
+++ candidate
@@ -1,3 +1,3 @@
+adds r0, #1
 movs r0, #1
-adds r0, #1
 bx lr
"""
WRONG_BRANCH = """size: orig 8, candidate 8
--- original
+++ candidate
@@ -1,4 +1,4 @@
 cmp r0, #0
-bne.n 6
+bne.n 4
 movs r0, #1
 bx lr
"""


def invoke(script, diff="", exact=False, real_compare=None, objects=None, expected_exit=None):
    with tempfile.TemporaryDirectory() as td:
        root = pathlib.Path(td)
        (root / "src").mkdir()
        (root / "src/shared.c").write_text(
            '#ifdef NONMATCHING\nvoid %s(void) {}\n#else\n'
            'INCLUDE_ASM("asm/nonmatchings/shared", %s);\n#endif\n' % (FUNC, FUNC))
        fake = types.ModuleType("decomp")
        fake.ROOT = td
        fake.module_of = lambda func: "shared"

        def assemble(func, output):
            if objects:
                shutil.copyfile(objects[0], output)
            return FUNC

        fake.assemble_orig = assemble
        if objects:
            obj = root / "build_nm/src/shared.o"
            obj.parent.mkdir(parents=True)
            shutil.copyfile(objects[1], obj)

        def compare(*args, **kwargs):
            if real_compare:
                return real_compare(*args, **kwargs)
            print(diff, end="")
            return exact

        fake.compare = compare
        unwraps = []
        process_run = subprocess.run

        def command(args, **kwargs):
            if args[0] == "make":
                return subprocess.CompletedProcess(args, 0, stdout="", stderr="")
            if len(args) > 1 and pathlib.Path(args[1]).name == "unwrap_func.py":
                unwraps.append(args[-1])
                return subprocess.CompletedProcess(args, 0, stdout="", stderr="")
            return process_run(args, **kwargs)

        argv = [script, FUNC] if script == "nmdiff.py" else [script, "--unwrap", "--only=" + FUNC, "shared"]
        output = io.StringIO()
        exit_code = 0
        with mock.patch.dict(sys.modules, {"decomp": fake}), \
                mock.patch.object(sys, "argv", argv), \
                mock.patch.object(sys, "path", sys.path.copy()), \
                mock.patch.dict(os.environ), \
                mock.patch("subprocess.run", side_effect=command), \
                contextlib.redirect_stdout(output):
            try:
                runpy.run_path(str(SCRIPTS / script))
            except SystemExit as exc:
                exit_code = exc.code or 0
                if exit_code not in (0, 1):
                    raise
        if expected_exit is not None and exit_code != expected_exit:
            raise AssertionError("expected exit %d, got %d" % (expected_exit, exit_code))
        return output.getvalue(), unwraps


class StrictVerdictTests(unittest.TestCase):
    def test_score_does_not_unwrap_reordered_instructions(self):
        output, unwraps = invoke("nmscore.py", REORDERED)
        self.assertGreater(int(output.split()[1]), 0)
        self.assertEqual(unwraps, [])

    def test_score_does_not_unwrap_a_different_branch_target(self):
        output, unwraps = invoke("nmscore.py", WRONG_BRANCH)
        self.assertGreater(int(output.split()[1]), 0)
        self.assertEqual(unwraps, [])

    def test_hidden_relocation_difference_cannot_become_score_zero(self):
        output, unwraps = invoke("nmscore.py", "size: orig 8, candidate 8\n")
        self.assertGreater(int(output.split()[1]), 0)
        self.assertEqual(unwraps, [])

    def test_nmdiff_keeps_byte_mismatches_even_when_diff_lines_cancel(self):
        for diff in [REORDERED, WRONG_BRANCH, "size: orig 8, candidate 8\n"]:
            with self.subTest(diff=diff):
                output, _ = invoke("nmdiff.py", diff, expected_exit=1)
                self.assertEqual(output.strip().splitlines()[-1], "NO MATCH")
                self.assertFalse(any(line.startswith("MATCH") for line in output.splitlines()))

    def test_exact_match_still_reports_zero_and_unwraps(self):
        output, unwraps = invoke("nmscore.py", exact=True)
        self.assertEqual(output.strip(), FUNC + " 0")
        self.assertEqual(unwraps, [FUNC])
        output, _ = invoke("nmdiff.py", exact=True, expected_exit=0)
        self.assertEqual(output.strip(), "MATCH")


@unittest.skipUnless(shutil.which("arm-none-eabi-as") and shutil.which("arm-none-eabi-objdump"),
                     "optional real ARM object regression requires binutils")
class ActualArmObjectTests(unittest.TestCase):
    def decomp(self):
        if importlib.util.find_spec("elftools") is None:
            self.skipTest("pyelftools is unavailable")
        spec = importlib.util.spec_from_file_location("match_verdict_real_decomp", SCRIPTS / "decomp.py")
        module = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(module)
        return module

    def assemble(self, root, name, body, mode="thumb", padding=0, extra=""):
        src, obj = root / (name + ".s"), root / (name + ".o")
        header = '.syntax unified\n.%s\n.text\n.space %d\n.global %s\n.type %s, %%function\n' % (mode, padding, FUNC, FUNC)
        if mode == "thumb":
            header += '.thumb_func\n'
        src.write_text(header + '%s:\n%s\n.size %s, .-%s\n%s\n' % (FUNC, body, FUNC, FUNC, extra))
        subprocess.run(["arm-none-eabi-as", "-mcpu=arm7tdmi", str(src), "-o", str(obj)], check=True, capture_output=True)
        return obj

    def test_arm_call_jump_and_bx_relocations_preserve_addends_and_opcodes(self):
        decomp = self.decomp()
        pairs = [("bl external_target+4\nbx lr", "bl external_target+8\nbx lr"),
                 ("b external_target+4", "b external_target+8"),
                 ("bx r0", "bx r1")]
        with tempfile.TemporaryDirectory() as td:
            root = pathlib.Path(td)
            for a, b in pairs:
                with self.subTest(original=a):
                    orig = self.assemble(root, "original", a, mode="arm")
                    cand = self.assemble(root, "candidate", b, mode="arm")
                    self.assertFalse(decomp.compare(orig, cand, FUNC, verbose=False))

    def test_other_relocation_addends_are_not_erased(self):
        decomp = self.decomp()
        with tempfile.TemporaryDirectory() as td:
            root = pathlib.Path(td)
            orig = self.assemble(root, "original", '.word external_target+2-.')
            cand = self.assemble(root, "candidate", '.word external_target+4-.')
            self.assertFalse(decomp.compare(orig, cand, FUNC, verbose=False))

    def test_different_target_sections_are_not_the_same_symbol(self):
        decomp = self.decomp()
        extra = '.section .target,"a"\n.word 0\n.section .other,"a"\n.word 0'
        with tempfile.TemporaryDirectory() as td:
            root = pathlib.Path(td)
            orig = self.assemble(root, "original", '.word .target', extra=extra)
            cand = self.assemble(root, "candidate", '.word .other', extra=extra)
            self.assertFalse(decomp.compare(orig, cand, FUNC, verbose=False))

    def test_reference_to_another_section_does_not_subtract_caller_start(self):
        decomp = self.decomp()
        with tempfile.TemporaryDirectory() as td:
            root = pathlib.Path(td)
            extra = '.section .target,"a"\n.word 0'
            orig = self.assemble(root, "original", '.word .target', extra=extra)
            cand = self.assemble(root, "candidate", '.word .target', extra=extra, padding=16)
            self.assertTrue(decomp.compare(orig, cand, FUNC, verbose=False))

    def test_identical_external_call_survives_padding_and_defined_global_target(self):
        decomp = self.decomp()
        with tempfile.TemporaryDirectory() as td:
            root = pathlib.Path(td)
            for mode in ["thumb", "arm"]:
                extra = '.global external_target\n.type external_target, %function\nexternal_target:\nbx lr'
                if mode == "thumb":
                    extra = '.thumb_func\n' + extra
                orig = self.assemble(root, "original", 'bl external_target\nbx lr', mode=mode)
                cand = self.assemble(root, "candidate", 'bl external_target\nbx lr', mode=mode, padding=16, extra=extra)
                with self.subTest(mode=mode):
                    self.assertTrue(decomp.compare(orig, cand, FUNC, verbose=False))

    def test_real_instruction_and_control_flow_changes_are_not_matches(self):
        if importlib.util.find_spec("elftools") is None:
            self.skipTest("pyelftools is unavailable")
        spec = importlib.util.spec_from_file_location("match_verdict_real_decomp", SCRIPTS / "decomp.py")
        decomp = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(decomp)
        pairs = [
            ("movs r0, #1\nadds r0, #1\nbx lr", "adds r0, #1\nmovs r0, #1\nbx lr"),
            ("cmp r0, #0\nbne .Ldone\nmovs r0, #1\n.Ldone:\nbx lr",
             "cmp r0, #0\nbne .Lset\n.Lset:\nmovs r0, #1\nbx lr"),
            ("bl external_target+2\nbx lr", "bl external_target+4\nbx lr"),
        ]
        with tempfile.TemporaryDirectory() as td:
            root = pathlib.Path(td)
            for original, candidate in pairs:
                objects = []
                for name, body in [("original", original), ("candidate", candidate)]:
                    src = root / (name + ".s")
                    obj = root / (name + ".o")
                    src.write_text('.syntax unified\n.thumb\n.text\n.global %s\n.type %s, %%function\n.thumb_func\n%s:\n%s\n.size %s, .-%s\n' %
                                   (FUNC, FUNC, FUNC, body, FUNC, FUNC))
                    subprocess.run(["arm-none-eabi-as", "-mcpu=arm7tdmi", str(src), "-o", str(obj)], check=True, capture_output=True)
                    objects.append(obj)
                with self.subTest(body=original):
                    self.assertFalse(decomp.compare(*objects, FUNC, verbose=False))
                    output, unwraps = invoke("nmscore.py", real_compare=decomp.compare, objects=objects)
                    self.assertGreater(int(output.split()[1]), 0)
                    self.assertEqual(unwraps, [])
                    output, _ = invoke("nmdiff.py", real_compare=decomp.compare, objects=objects, expected_exit=1)
                    self.assertEqual(output.strip().splitlines()[-1], "NO MATCH")


if __name__ == "__main__":
    unittest.main()
