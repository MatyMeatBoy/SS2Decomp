"""Local declaration order is part of agbcc matching, not cosmetic formatting."""
import contextlib
import os
import pathlib
import runpy
import sys
import tempfile
import unittest
from unittest import mock

SCRIPT = pathlib.Path(__file__).resolve().parents[1] / "scripts/handapply.py"
FIRST = "sub_08000001"
SECOND = "sub_08000002"
STRUCT = "struct Entry { unsigned short value; };"
EXTERN = 'extern struct Entry entries[] asm("gEntries");'


class HandapplyDeclarationTests(unittest.TestCase):
    def apply(self, existing="", candidates=None, after="", expected_error=None):
        candidates = candidates or [(FIRST, STRUCT + "\n" + EXTERN)]
        with tempfile.TemporaryDirectory() as td:
            root = pathlib.Path(td)
            (root / "src").mkdir()
            asm = root / "asm/nonmatchings/shared"
            asm.mkdir(parents=True)
            source = root / "src/shared.c"
            text = '#include "global.h"\n' + existing + "\n"
            files = []
            for name, declarations in candidates:
                text += 'INCLUDE_ASM("asm/nonmatchings/shared", %s);\n' % name
                (asm / (name + ".s")).write_text("original ASM\n")
                candidate = root / (name + ".c")
                candidate.write_text('#include "global.h"\n' + declarations + '\nvoid %s(void) {}\n' % name)
                files.append(str(candidate))
            text += after
            source.write_text(text)
            # Preserve an unrelated function/ASM as a scope regression.
            untouched = asm / "sub_08000003.s"
            untouched.write_text("unrelated\n")
            previous = os.getcwd()
            try:
                os.chdir(root)
                with mock.patch.object(sys, "argv", [str(SCRIPT), "shared", *files]):
                    if expected_error:
                        with self.assertRaisesRegex(SystemExit, expected_error):
                            runpy.run_path(str(SCRIPT))
                    else:
                        runpy.run_path(str(SCRIPT))
            finally:
                os.chdir(previous)
            self.assertEqual(untouched.read_text(), "unrelated\n")
            for name, _ in candidates:
                self.assertEqual((asm / (name + ".s")).exists(), bool(expected_error))
            if expected_error:
                self.assertEqual(source.read_text(), text)
            return source.read_text()

    def test_preserves_struct_before_its_extern_array(self):
        result = self.apply()
        self.assertLess(result.index(STRUCT), result.index(EXTERN))
        self.assertLess(result.index(EXTERN), result.index('void ' + FIRST))

    def test_reused_struct_stays_before_a_new_extern(self):
        result = self.apply(existing=STRUCT + "\n")
        self.assertEqual(result.count(STRUCT), 1)
        self.assertLess(result.index(STRUCT), result.index(EXTERN))

    def test_reused_struct_after_an_earlier_function_stays_before_extern(self):
        result = self.apply(existing='void previous(void) {}\n' + STRUCT + '\n')
        self.assertEqual(result.count(STRUCT), 1)
        self.assertLess(result.index(STRUCT), result.index(EXTERN))
        self.assertLess(result.index(EXTERN), result.index('void ' + FIRST))

    def test_type_defined_after_target_is_rejected_without_partial_changes(self):
        self.apply(after=STRUCT + '\n', expected_error='after.*target')

    def test_same_tag_after_target_with_different_spacing_is_rejected(self):
        self.apply(after='struct Entry {unsigned short value;};\n', expected_error='after.*target')

    def test_conditional_type_is_not_reused_as_unconditional(self):
        self.apply(existing='#ifdef NONMATCHING\n' + STRUCT + '\n#endif\n',
                   expected_error='conditional')

    def test_equivalent_visible_type_with_different_spacing_is_reused(self):
        existing = 'struct Entry {unsigned short value;};'
        result = self.apply(existing=existing + '\n')
        self.assertEqual(result.count('struct Entry {'), 1)
        self.assertLess(result.index(existing), result.index(EXTERN))

    def test_error_in_second_candidate_keeps_first_source_and_asm_intact(self):
        later_type = 'struct Later { unsigned short value; };'
        self.apply(candidates=[(FIRST, STRUCT + '\n' + EXTERN),
                               (SECOND, later_type + '\nextern struct Later later[];')],
                   after=later_type + '\n', expected_error='after.*target')

    def test_multiple_files_keep_declaration_order_and_deduplicate(self):
        second_struct = "struct Other { struct Entry entry; };"
        second_extern = 'extern struct Other other[] asm("gOther");'
        result = self.apply(candidates=[(FIRST, STRUCT + "\n" + EXTERN),
                                        (SECOND, STRUCT + "\n" + second_struct + "\n" + second_extern)])
        self.assertEqual(result.count(STRUCT), 1)
        positions = [result.index(line) for line in [STRUCT, EXTERN, second_struct, second_extern]]
        self.assertEqual(positions, sorted(positions))


if __name__ == "__main__":
    unittest.main()
