"""Keep complete jump tables in reading input without changing assembled code."""
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import decomp


FIXTURE = '''\tthumb_func_start test_target
test_target:
\tpush {r4, lr}
\tcmp r0, #2
\tbhi .Ldefault
\tlsls r0, r0, #2
\tldr r1, .Ltable_pointer
\tadds r0, r0, r1
\tldr r1, [r0]
\tmov pc, r1
\t.align 2
.Ltable_pointer: .4byte .Ltable
.Ltable:
\t.4byte .Lcase0
.Lentry1: .4byte .Lcase1
.Lentry2:
\t.4byte .Lcase2
.Lcase0:
\tmovs r0, #10
\tb .Lend
.Lcase1:
\tmovs r0, #20
\tb .Lend
.Lcase2:
\tmovs r0, #30
\tb .Lend
.Ldefault:
\tmovs r0, #0
.Lend:
\tpop {r4}
\tpop {r1}
\tbx r1
\tthumb_func_end test_target
'''


class JumpTableInputTests(unittest.TestCase):
    def normalize(self, text):
        with tempfile.TemporaryDirectory() as td:
            source, output = Path(td) / 'input.s', Path(td) / 'output.s'
            source.write_text(text, encoding='utf-8')
            with mock.patch.object(decomp, 'find_asm', return_value=(str(source), 'fixture')):
                decomp.m2c_input('test_target', str(output))
            self.assertEqual(source.read_text(encoding='utf-8'), text)
            return output.read_text(encoding='utf-8')

    def test_removes_only_unused_internal_entry_labels(self):
        normalized = self.normalize(FIXTURE)
        self.assertNotIn('.Lentry1:', normalized)
        self.assertNotIn('.Lentry2:', normalized)
        for label in ('.Ltable:', '.Ltable_pointer:', '.Lcase0:', '.Lcase1:', '.Lcase2:'):
            self.assertIn(label, normalized)
        self.assertEqual(normalized.count('.4byte'), FIXTURE.count('.4byte'))

    def test_referenced_or_exported_entry_labels_are_preserved(self):
        for reference in ('\t.global .Lentry1\n', '\t.set alias, .Lentry1\n',
                          '.Lreference: .4byte .Lentry1\n'):
            with self.subTest(reference=reference):
                normalized = self.normalize(FIXTURE + reference)
                self.assertIn('.Lentry1:', normalized)

    def test_comment_mentions_do_not_make_an_entry_referenced(self):
        normalized = self.normalize(FIXTURE.replace('.Lentry1: .4byte .Lcase1',
                                                    '.Lentry1: .4byte .Lcase1 @ .Lentry1'))
        self.assertNotIn('.Lentry1:', normalized)

    def test_data_run_start_code_labels_and_public_names_are_preserved(self):
        normalized = self.normalize('''\tthumb_func_start test_target
test_target:
\tbx lr
_08000004: .word .Lcode
public_entry: .word .Lcode
_0800000C: .word .Lcode
.Lcode:
\tbx lr
.Lunused_code:
\tbx lr
\tthumb_func_end test_target
''')
        self.assertIn('_08000004:', normalized)
        self.assertIn('public_entry:', normalized)
        self.assertNotIn('_0800000C:', normalized)
        self.assertIn('.Lunused_code:', normalized)

    @unittest.skipUnless(shutil.which('arm-none-eabi-as'), 'requires ARM assembler')
    def test_normalization_preserves_actual_thumb_bytes_and_relocations(self):
        normalized = self.normalize(FIXTURE)
        # The legacy preamble conversion, retaining all original local labels.
        original = ('.syntax unified\n.text\n' + FIXTURE
                    .replace('\tthumb_func_start test_target',
                             '\t.align 2, 0\n\t.globl test_target\n\t.thumb_func')
                    .replace('\tthumb_func_end test_target', ''))
        with tempfile.TemporaryDirectory() as td:
            objects = []
            for name, source in (('original', original), ('normalized', normalized)):
                asm, obj = Path(td) / (name + '.s'), Path(td) / (name + '.o')
                asm.write_text(source + '\n.size test_target, .-test_target\n', encoding='utf-8')
                result = subprocess.run(['arm-none-eabi-as', '-mthumb', '-mcpu=arm7tdmi',
                                         str(asm), '-o', str(obj)], capture_output=True, text=True)
                self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
                objects.append(decomp.normalized(str(obj), 'test_target'))
            self.assertEqual(objects[0], objects[1])

    @unittest.skipUnless(Path(decomp.M2C).is_file(), 'requires installed m2c')
    def test_real_m2c_reads_all_cases_instead_of_only_the_first(self):
        with tempfile.TemporaryDirectory() as td:
            asm = Path(td) / 'complete.s'
            asm.write_text(self.normalize(FIXTURE), encoding='utf-8')
            result = subprocess.run([sys.executable, decomp.M2C, '--target', 'gba',
                                     '--no-cache', str(asm)], capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            for value in range(3):
                self.assertIn('case %d:' % value, result.stdout)
            for decimal, hexadecimal in ((10, 'A'), (20, '14'), (30, '1E')):
                self.assertRegex(result.stdout, r'return (?:%d|0[xX]%s);' % (decimal, hexadecimal))


if __name__ == '__main__':
    unittest.main()
