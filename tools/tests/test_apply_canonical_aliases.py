"""Real-toolchain application and rollback of canonical asm-alias definitions."""
import contextlib
import io
import os
from pathlib import Path
import runpy
import shutil
import subprocess
import sys
import tempfile
import unittest
from unittest import mock
SCRIPTS=Path(__file__).resolve().parents[1]/'scripts';sys.path[:0]=[str(SCRIPTS),str(Path(__file__).parent)]
import decomp,apply_permuted
import test_revalidate_aliases_real as real_fixtures
AVAILABLE=real_fixtures.AVAILABLE
FUNC=real_fixtures.FUNC

@unittest.skipUnless(AVAILABLE,'optional real application regression requires agbcc/binutils')
class ActualAliasApplicationTests(unittest.TestCase):
    def fixture(self,root,bad=False,late_type=False):
        original=real_fixtures.ActualAliasModuleTests().fixture(root)
        source=root/'src/shared.c'
        source.write_text('#include "global.h"\nINCLUDE_ASM("asm/nonmatchings/shared", %s);\nstruct Later {int value;};\nextern struct Later later[];\n'%FUNC)
        asm=root/'asm/nonmatchings/shared'/(FUNC+'.s');asm.parent.mkdir(parents=True);shutil.copyfile(original,asm)
        candidate='#include "global.h"\n'+('struct Later {int value;};\nextern struct Later later[];\n' if late_type else '')
        candidate+='void f_v(void) asm("%s");\nvoid f_v(void) {%s}\n'%(FUNC,'extern volatile int flag; flag=1;' if bad else '')
        path=root/(FUNC+'.c');path.write_text(candidate)
        return source,asm,path,candidate

    def snapshot(self,root):
        return {p:p.read_bytes() for directory in ('src','asm/nonmatchings','include') for p in (root/directory).rglob('*') if p.is_file()}

    def handapply(self,root,path):
        previous=Path.cwd()
        try:
            os.chdir(root)
            with mock.patch.object(decomp,'ROOT',str(root)),mock.patch.object(sys,'argv',['handapply.py','shared',str(path)]),contextlib.redirect_stdout(io.StringIO()):
                runpy.run_path(str(SCRIPTS/'handapply.py'),run_name='__main__')
        finally:os.chdir(previous)

    def compile_modes(self,root):
        for build,flags in [('build_check',''),('build_check_nm','-DNONMATCHING')]:
            result=subprocess.run(['make','-s','-B','-j1','BUILD='+build,'NM_FLAGS='+flags,build+'/src/shared.o'],cwd=root,capture_output=True,text=True)
            self.assertEqual(result.returncode,0,result.stdout+result.stderr)

    def test_handapply_preserves_void_alias_and_late_type_without_rewriting_header(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);source,asm,path,text=self.fixture(root);header=(root/'include/functions.h').read_bytes()
            self.handapply(root,path)
            updated=source.read_text()
            self.assertIn('void f_v(void)',updated)
            self.assertIn('asm("%s")'%FUNC,updated)
            self.assertNotIn('INCLUDE_ASM(',updated)
            self.assertGreater(updated.index('struct Later'),updated.index('void f_v'))
            self.assertFalse(asm.exists())
            self.assertEqual((root/'include/functions.h').read_bytes(),header)
            self.compile_modes(root)

    def test_handapply_bad_candidate_rolls_back_source_asm_and_headers(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);source,asm,path,text=self.fixture(root,bad=True);before=self.snapshot(root)
            with self.assertRaises(SystemExit):self.handapply(root,path)
            self.assertEqual(self.snapshot(root),before)

    def test_handapply_rejects_registered_identifier_redirected_to_another_symbol(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);source,asm,path,text=self.fixture(root)
            with (root/'tools/config/functions.cfg').open('a') as config:
                config.write('\nthumb 0x08000240 sub_08000240\n')
            path.write_text('#include "global.h"\nvoid %s(void) asm("sub_08000240");\nvoid %s(void) {}\n'%(FUNC,FUNC))
            before=self.snapshot(root)
            with self.assertRaisesRegex(SystemExit,'redirected'):
                self.handapply(root,path)
            self.assertEqual(self.snapshot(root),before)

    def test_handapply_cannot_write_a_different_project_checkout(self):
        with tempfile.TemporaryDirectory() as td:
            first=Path(td)/'first';second=Path(td)/'second';first.mkdir();second.mkdir()
            self.fixture(first);source,asm,path,text=self.fixture(second)
            before_first=self.snapshot(first);before_second=self.snapshot(second)
            previous=Path.cwd()
            try:
                os.chdir(second)
                with mock.patch.object(decomp,'ROOT',str(first)),mock.patch.object(sys,'argv',['handapply.py','shared',str(path)]),contextlib.redirect_stdout(io.StringIO()):
                    with self.assertRaisesRegex(SystemExit,'project checkout'):
                        runpy.run_path(str(SCRIPTS/'handapply.py'),run_name='__main__')
            finally:os.chdir(previous)
            self.assertEqual(self.snapshot(first),before_first)
            self.assertEqual(self.snapshot(second),before_second)

    def test_handapply_rejects_hoisting_a_later_type_before_target(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);source,asm,path,text=self.fixture(root,late_type=True);before=self.snapshot(root)
            with self.assertRaisesRegex(SystemExit,'after target'):self.handapply(root,path)
            self.assertEqual(self.snapshot(root),before)

    def test_permuted_alias_applies_after_real_module_check(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);source,asm,path,text=self.fixture(root);header=(root/'include/functions.h').read_bytes()
            with mock.patch.object(decomp,'ROOT',td),mock.patch.object(apply_permuted,'rom_ok',return_value=True),contextlib.redirect_stdout(io.StringIO()):
                self.assertTrue(apply_permuted.try_apply(FUNC,text))
            self.assertFalse(asm.exists())
            self.assertIn('void f_v(void)',source.read_text())
            self.assertIn('asm("%s")'%FUNC,source.read_text())
            self.assertEqual((root/'include/functions.h').read_bytes(),header)
            self.compile_modes(root)

    def test_permuted_rom_failure_restores_exact_bytes(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);source,asm,path,text=self.fixture(root);before=self.snapshot(root)
            with mock.patch.object(decomp,'ROOT',td),mock.patch.object(apply_permuted,'rom_ok',return_value=False) as rom,contextlib.redirect_stdout(io.StringIO()):
                self.assertFalse(apply_permuted.try_apply(FUNC,text))
            self.assertEqual(rom.call_count,1)
            self.assertEqual(self.snapshot(root),before)

    def test_permuted_rom_failure_restores_crlf_source_and_header(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);source,asm,path,text=self.fixture(root)
            for target in (source,root/'include/functions.h',asm):
                target.write_bytes(target.read_bytes().replace(b'\n',b'\r\n'))
            before=self.snapshot(root)
            with mock.patch.object(decomp,'ROOT',td),mock.patch.object(apply_permuted,'rom_ok',return_value=False) as rom,contextlib.redirect_stdout(io.StringIO()):
                self.assertFalse(apply_permuted.try_apply(FUNC,text))
            self.assertEqual(rom.call_count,1)
            self.assertEqual(self.snapshot(root),before)

    def test_permuted_directory_cli_resolves_alias_in_arbitrary_filename(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);source,asm,path,text=self.fixture(root)
            winners=root/'winners';winners.mkdir();path.rename(winners/'f_v.c')
            process_run=subprocess.run
            def command(args,**kwargs):
                if args[0]=='sha1sum':return subprocess.CompletedProcess(args,0,stdout='',stderr='')
                if args[0]=='make' and '-C' in args:return subprocess.CompletedProcess(args,0,stdout='',stderr='')
                return process_run(args,**kwargs)
            with mock.patch.object(decomp,'ROOT',td),mock.patch.object(sys,'argv',['apply_permuted.py',str(winners)]),mock.patch('subprocess.run',side_effect=command),contextlib.redirect_stdout(io.StringIO()) as output:
                runpy.run_path(str(SCRIPTS/'apply_permuted.py'),run_name='__main__')
            self.assertIn(FUNC,output.getvalue())
            self.assertFalse(asm.exists())

    def test_permuted_file_cli_resolves_alias_to_canonical_target(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);source,asm,path,text=self.fixture(root)
            # Patch rom_ok in the runpy namespace by replacing only its make/sha subprocess calls.
            process_run=subprocess.run
            def command(args,**kwargs):
                if args[0]=='sha1sum':return subprocess.CompletedProcess(args,0,stdout='',stderr='')
                if args[0]=='make' and '-C' in args:return subprocess.CompletedProcess(args,0,stdout='',stderr='')
                return process_run(args,**kwargs)
            with mock.patch.object(decomp,'ROOT',td),mock.patch.object(sys,'argv',['apply_permuted.py',str(path)]),mock.patch('subprocess.run',side_effect=command),contextlib.redirect_stdout(io.StringIO()) as output:
                runpy.run_path(str(SCRIPTS/'apply_permuted.py'),run_name='__main__')
            self.assertIn(FUNC,output.getvalue())
            self.assertFalse(asm.exists())

if __name__=='__main__':unittest.main()
