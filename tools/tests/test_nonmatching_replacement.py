"""Updating a draft must change the C selected by NONMATCHING."""
import contextlib
import io
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "scripts"))
import decomp

FUNC = "sub_08000010"
STUB = 'INCLUDE_ASM("asm/nonmatchings/testmod", %s);' % FUNC
OLD = 'int %s(void) { return 1; }' % FUNC
NEW = 'int %s(void) { return 7; }' % FUNC


class NonmatchingReplacementTests(unittest.TestCase):
    def apply(self, source, candidate=NEW, error=None):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "src").mkdir()
            (root / "include").mkdir()
            variables = root / "include/variables.h"
            variables.write_text('// AUTO-VARIABLES (keep this marker, decomp.py appends below it)\n#endif\n')
            path = root / "src/testmod.c"
            path.write_text(source)
            draft = root / "candidate.c"
            draft.write_text(candidate)
            before = variables.read_text()
            with mock.patch.object(decomp, "ROOT", str(root)), mock.patch.object(
                decomp, "find_asm", return_value=("unused.s", "testmod")
            ), contextlib.redirect_stdout(io.StringIO()):
                if error:
                    with self.assertRaisesRegex(SystemExit, error):
                        decomp.apply_nonmatch(FUNC, str(draft))
                    self.assertEqual(path.read_text(), source)
                    self.assertEqual(variables.read_text(), before)
                    return
                decomp.apply_nonmatch(FUNC, str(draft))
            updated = path.read_text()
            cpp = shutil.which("arm-none-eabi-cpp")
            if cpp:
                active = subprocess.check_output([cpp, "-P", "-DNONMATCHING", "-DFEATURE=1", str(path)], text=True)
                self.assertIn(NEW, active)
                self.assertNotIn(OLD, active)
            self.assertEqual(updated.count(STUB), source.count(STUB))
            self.assertEqual(updated.count(NEW), 1)
            self.assertNotIn(OLD, updated)
            return updated

    def test_plain_stub_becomes_a_draft(self):
        self.assertEqual(self.apply(STUB + "\n"), '#ifdef NONMATCHING\n' + NEW + '\n#else\n' + STUB + '\n#endif\n')

    def test_existing_draft_replaces_active_body_not_fallback(self):
        old = '#ifdef NONMATCHING\n' + OLD + '\n#else\n' + STUB + '\n#endif\n'
        self.assertEqual(self.apply(old), self.apply(STUB + '\n'))

    def test_nested_condition_in_old_draft_is_removed(self):
        body = 'int %s(void) {\n#if DETAIL\nreturn 2;\n#else\nreturn 1;\n#endif\n}' % FUNC
        old = '#ifdef NONMATCHING\n' + body + '\n#else\n' + STUB + '\n#endif\n'
        updated = self.apply(old)
        self.assertNotIn('DETAIL', updated)

    def test_previously_nested_inactive_draft_is_repaired(self):
        stale = 'int %s(void) { return 2; }' % FUNC
        old = '#ifdef NONMATCHING\n' + OLD + '\n#else\n#ifdef NONMATCHING\n' + stale + '\n#else\n' + STUB + '\n#endif\n#endif\n'
        updated = self.apply(old)
        self.assertEqual(updated.count('#ifdef NONMATCHING'), 1)
        self.assertNotIn(stale, updated)

    def test_outer_feature_guard_and_neighbor_are_preserved(self):
        prefix = '#if FEATURE\n'
        suffix = '\nint neighbor(void) { return 99; }\n#endif\n'
        old = prefix + '#ifdef NONMATCHING\n' + OLD + '\n#else\n' + STUB + '\n#endif\n' + suffix
        updated = self.apply(old)
        self.assertTrue(updated.startswith(prefix))
        self.assertTrue(updated.endswith(suffix))

    def test_mirrored_nonmatching_guard_is_replaced(self):
        old = '#ifndef NONMATCHING\n' + STUB + '\n#else\n' + OLD + '\n#endif\n'
        self.assertEqual(self.apply(old), self.apply(STUB + '\n'))

    def test_comment_directives_and_stubs_are_not_live(self):
        comment = '/*\n#ifdef NONMATCHING\n' + STUB + '\n*/\n'
        updated = self.apply(comment + STUB + '\n')
        self.assertTrue(updated.startswith(comment))
        self.assertEqual(updated.count('#ifdef NONMATCHING'), 2)

    def test_positive_nonmatching_stub_is_not_silently_nested(self):
        self.apply('#ifdef NONMATCHING\n' + STUB + '\n#endif\n', error='standalone')

    def test_multiple_stubs_fail_before_source_or_header_writes(self):
        self.apply(STUB + '\n' + STUB + '\n', 'extern int fresh;\n' + NEW, error='ambiguous')

    def test_missing_stub_does_not_change_headers(self):
        self.apply('int neighbor;\n', 'extern int fresh;\n' + NEW, error='not found')

    def test_foreign_fallback_in_same_guard_fails_closed(self):
        old = '#ifdef NONMATCHING\n' + OLD + '\n#else\n' + STUB + '\nINCLUDE_ASM("other", other);\n#endif\n'
        self.apply(old, error='other ASM')

    def test_neighbor_c_function_in_fallback_is_not_deleted(self):
        old = '#ifdef NONMATCHING\n' + OLD + '\n#else\n' + STUB + '\nint neighbor(void) { return 99; }\n#endif\n'
        self.apply(old, error='other code')

    def test_neighbor_c_function_in_draft_is_not_deleted(self):
        old = '#ifdef NONMATCHING\n' + OLD + '\nint neighbor(void) { return 99; }\n#else\n' + STUB + '\n#endif\n'
        self.apply(old, error='other code')

    def test_neighbor_declaration_in_draft_is_not_deleted(self):
        old = '#ifdef NONMATCHING\nint shared_flag;\n' + OLD + '\n#else\n' + STUB + '\n#endif\n'
        self.apply(old, error='other code')

    def test_nested_stale_wrapper_with_foreign_declaration_is_rejected(self):
        old = '#ifdef NONMATCHING\n' + OLD + '\n#else\n#ifdef NONMATCHING\nint shared_flag;\n#else\n' + STUB + '\n#endif\n#endif\n'
        self.apply(old, error='other code')

    def test_feature_condition_in_fallback_is_not_removed(self):
        old = '#ifdef NONMATCHING\n' + OLD + '\n#else\n#if FEATURE\n' + STUB + '\n#endif\n#endif\n'
        self.apply(old, error='other code')


if __name__ == '__main__':
    unittest.main()
