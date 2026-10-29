"""Exercise the generated shell wrapper, real agbcc, and alias relocations."""
import contextlib
import io
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import decomp
import permute

COMPILER = Path(decomp.AGBCC + '.exe') if os.name == 'nt' else Path(decomp.AGBCC)
AVAILABLE = COMPILER.is_file() and all(shutil.which(t) for t in ('sh', 'arm-none-eabi-as', 'arm-none-eabi-cpp'))


@unittest.skipUnless(AVAILABLE, 'requires agbcc and ARM binutils')
class PermuterWrapperTests(unittest.TestCase):
    def prepare(self, root, source, compiler):
        candidate = root / 'candidate.c'
        candidate.write_text(source, encoding='utf-8')
        original_run = subprocess.run

        def run(args, **kwargs):
            if len(args) > 1 and str(args[1]).endswith('strip_other_fns.py'):
                return subprocess.CompletedProcess(args, 0)
            return original_run(args, **kwargs)

        with mock.patch.object(decomp, 'func_address', return_value=0), \
             mock.patch.object(decomp, 'module_of_addr', return_value='fixture'), \
             mock.patch.object(decomp, 'module_cc1', return_value=str(compiler)), \
             mock.patch.object(decomp, 'module_flags', return_value=decomp.CC1FLAGS), \
             mock.patch.object(decomp, 'assemble_orig', return_value='test_target'), \
             mock.patch.object(permute.subprocess, 'run', side_effect=run), \
             mock.patch.dict(os.environ, {}, clear=False):
            permute.setup('test_target', str(candidate), str(root / 'case'))
        control = permute.validate_control(str(root / 'case'), str(candidate))
        self.assertTrue(control['entire_object_equal'])
        shutil.copy2(root / 'case/baseline.o', root / 'actual.o')
        error = decomp.compile_c(str(candidate), str(root / 'expected.o'), str(compiler), decomp.CC1FLAGS)
        self.assertFalse(error, error)
        self.assertEqual(decomp.normalized(str(root / 'actual.o'), 'test_target'),
                         decomp.normalized(str(root / 'expected.o'), 'test_target'))

    def test_compiler_path_with_space_and_apostrophe_executes(self):
        with tempfile.TemporaryDirectory(prefix='permute-') as td:
            root = Path(td)
            folder = root / "compiler's folder with spaces"
            folder.mkdir()
            compiler = folder / ('agb cc.exe' if os.name == 'nt' else 'agb cc')
            shutil.copy2(COMPILER, compiler)
            self.prepare(root, 'int test_target(void) { return 7; }\n', compiler)

    def test_array_scalar_and_function_alias_relocations_are_preserved(self):
        with tempfile.TemporaryDirectory(prefix='permute-') as td:
            self.prepare(Path(td), 'extern int samples[2] asm("gSamples");\n'
                         'extern int matrix[2][3] asm("gMatrix");\n'
                         'extern int flag asm("gFlag");\n'
                         'extern int callee(int) asm("real_callee");\n'
                         'int test_target(void) { return samples[1]+matrix[1][2]+flag+callee(3); }\n', COMPILER)


class PermuterFailureTests(unittest.TestCase):
    def test_baseline_compile_failure_is_not_reported_as_no_improvement(self):
        with tempfile.TemporaryDirectory() as td, \
             mock.patch.object(sys, 'argv', ['permute.py', 'target', 'input.c', '--dir', td]), \
             mock.patch.object(permute, 'setup'), \
             mock.patch.object(permute, 'validate_control', side_effect=SystemExit('baseline compilation failed: compiler failed')), \
             contextlib.redirect_stdout(io.StringIO()) as output:
            with self.assertRaises(SystemExit):
                permute.main()
            self.assertNotIn('no improvement', output.getvalue())


class PermuterExportTests(unittest.TestCase):
    def export(self, root, source, aliases):
        case = root / 'case'
        best = case / 'output-0-1'
        best.mkdir(parents=True)
        (best / 'source.c').write_text(source, encoding='utf-8')
        with mock.patch.object(sys, 'argv', ['permute.py', 'test_target', 'input.c',
                                           '--dir', str(case), '--out', str(root / 'out')]), \
             mock.patch.object(permute, 'setup', return_value=aliases), \
             mock.patch.object(permute, 'validate_control', return_value={'entire_object_equal': True}), \
             mock.patch.object(permute.subprocess, 'run', return_value=subprocess.CompletedProcess([], 0, '', '')), \
             contextlib.redirect_stdout(io.StringIO()):
            permute.main()
        return root / 'out/test_target.c'

    @unittest.skipUnless(AVAILABLE, 'requires agbcc and ARM binutils')
    def test_exported_source_keeps_alias_relocations_without_shell_wrapper(self):
        source = ('extern int samples[2];\nextern int matrix[2][3];\n'
                  'extern int flag;\nextern int callee(int);\n'
                  'int test_target(void) { return samples[1]+matrix[1][2]+flag+callee(3); }\n')
        aliases = [('samples', 'gSamples'), ('matrix', 'gMatrix'), ('flag', 'gFlag'), ('callee', 'real_callee')]
        original = source.replace('samples[2];', 'samples[2] asm("gSamples");') \
                         .replace('matrix[2][3];', 'matrix[2][3] asm("gMatrix");') \
                         .replace('flag;', 'flag asm("gFlag");') \
                         .replace('callee(int);', 'callee(int) asm("real_callee");')
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            exported = self.export(root, source, aliases)
            expected = root / 'expected.c'
            expected.write_text(original, encoding='utf-8')
            for candidate, obj in ((exported, 'actual.o'), (expected, 'expected.o')):
                error = decomp.compile_c(str(candidate), str(root / obj), str(COMPILER), decomp.CC1FLAGS)
                self.assertFalse(error, error)
            self.assertEqual(decomp.normalized(str(root / 'actual.o'), 'test_target'),
                             decomp.normalized(str(root / 'expected.o'), 'test_target'))

    def test_used_alias_without_recoverable_declaration_is_not_exported(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            with self.assertRaises(SystemExit):
                self.export(root, 'int test_target(void) { return missing; }\n', [('missing', 'gMissing')])
            self.assertFalse((root / 'out/test_target.c').exists())
