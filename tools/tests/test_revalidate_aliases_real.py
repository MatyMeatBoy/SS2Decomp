"""Optional real-toolchain alias regression; no ROM or game source edits."""
import contextlib
import io
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile
import unittest
from unittest import mock
SCRIPTS=Path(__file__).resolve().parents[1]/'scripts';sys.path.insert(0,str(SCRIPTS))
import decomp
import revalidate
ROOT=Path(decomp.ROOT)
FUNC='sub_0800023C'
AVAILABLE=all(shutil.which(tool) for tool in ('make','arm-none-eabi-as','arm-none-eabi-cpp')) and (Path(decomp.AGBCC).is_file() or Path(decomp.AGBCC+'.exe').is_file())

@unittest.skipUnless(AVAILABLE,'optional real alias regression requires agbcc and ARM binutils')
class ActualAliasModuleTests(unittest.TestCase):
    def fixture(self, root, bad=False):
        for folder in ('src','include','asm','tools/config','data','expected','build'):(root/folder).mkdir(parents=True)
        makefile=(ROOT/'Makefile').read_text(encoding='utf-8')
        makefile=re.sub(r'(?m)^CC1\s*:=.*$','CC1 := '+Path(decomp.AGBCC).as_posix(),makefile)
        (root/'Makefile').write_text(makefile,encoding='utf-8')
        shutil.copyfile(ROOT/'asm/macros.inc',root/'asm/macros.inc')
        (root/'include/functions.h').write_text('int %s(void);\n'%FUNC)
        global_header=(ROOT/'include/global.h').read_text(encoding='utf-8')
        macro=global_header[global_header.index('#define INCLUDE_ASM'):].split('#endif')[0]
        (root/'include/global.h').write_text('#include \"functions.h\"\n'+macro)
        body='extern volatile int flag; flag=1;' if bad else ''
        (root/'src/shared.c').write_text('#include "global.h"\nvoid f_v(void) asm("%s");\nvoid f_v(void) {%s}\nstruct Later {int value;};\nextern struct Later later[];\n'%(FUNC,body))
        (root/'tools/config/modules.cfg').write_text('0x0800023C shared c game\n')
        (root/'tools/config/functions.cfg').write_text('thumb 0x0800023C\n')
        (root/'sym_ram.ld').write_text('');(root/'data/rodata.s').write_text('')
        original=root/'expected/original.s'
        original.write_text('thumb_func_start %s\n%s:\n bx lr\nthumb_func_end %s\n'%(FUNC,FUNC,FUNC))
        return original

    def test_valid_void_alias_matches_original_despite_stale_int_header(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);original=self.fixture(root)
            with mock.patch.object(decomp,'ROOT',td),mock.patch.object(decomp,'orig_asm',return_value=(str(original),FUNC)),contextlib.redirect_stdout(io.StringIO()) as output:
                status=revalidate.main(['shared'])
            self.assertEqual(status,0,output.getvalue())
            self.assertIn('OK  '+FUNC,output.getvalue())

    def test_git_style_original_in_same_directory_is_not_self_included(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);original=self.fixture(root)
            def recovered(name,workdir):
                path=Path(workdir)/(FUNC+'.s')
                path.write_text(original.read_text())
                return str(path),FUNC
            with mock.patch.object(decomp,'ROOT',td),mock.patch.object(decomp,'orig_asm',side_effect=recovered),contextlib.redirect_stdout(io.StringIO()) as output:
                status=revalidate.main(['shared'])
            self.assertEqual(status,0,output.getvalue())

    def test_bad_alias_restores_canonical_asm_and_both_build_modes_compile(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);original=self.fixture(root,bad=True)
            with mock.patch.object(decomp,'ROOT',td),mock.patch.object(decomp,'orig_asm',return_value=(str(original),FUNC)),contextlib.redirect_stdout(io.StringIO()) as output:
                status=revalidate.main(['--apply','shared'])
            self.assertEqual(status,1,output.getvalue())
            self.assertIn('BAD '+FUNC,output.getvalue())
            source=(root/'src/shared.c').read_text()
            self.assertIn('#ifdef NONMATCHING\nvoid f_v',source)
            self.assertIn('INCLUDE_ASM("asm/nonmatchings/shared", '+FUNC+')',source)
            self.assertTrue((root/'asm/nonmatchings/shared'/ (FUNC+'.s')).is_file())
            for build,flags in [('build_match',''),('build_draft','-DNONMATCHING')]:
                result=subprocess.run(['make','-s','-B','-j1','BUILD='+build,'NM_FLAGS='+flags,build+'/src/shared.o'],cwd=root,capture_output=True,text=True)
                self.assertEqual(result.returncode,0,result.stdout+result.stderr)

if __name__=='__main__':unittest.main()
