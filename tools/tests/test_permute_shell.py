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
        result = subprocess.run(['sh', (root / 'case/compile.sh').as_posix(),
                                 (root / 'case/base.c').as_posix(), '-o', (root / 'actual.o').as_posix()],
                                capture_output=True, text=True)
        self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
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
             mock.patch.object(permute.subprocess, 'run', return_value=subprocess.CompletedProcess([], 19, '', 'compiler failed')), \
             contextlib.redirect_stdout(io.StringIO()) as output:
            with self.assertRaises(SystemExit):
                permute.main()
            self.assertNotIn('no improvement', output.getvalue())
