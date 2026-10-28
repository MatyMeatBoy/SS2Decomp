"""Revalidation must audit the exported ROM symbol, not only the C spelling."""
import contextlib
import io
import pathlib
import re
import runpy
import subprocess
import sys
import tempfile
import types
import unittest
from unittest import mock

SCRIPTS = pathlib.Path(__file__).resolve().parents[1] / 'scripts'
sys.path.insert(0, str(SCRIPTS))
import decomp

FIRST = 'sub_0800023C'
SECOND = 'sub_08000240'
NAMED = 'NamedTarget'


class RevalidateAliasTests(unittest.TestCase):
    def invoke(self, source, bad=(), arguments=(), report=None, preprocessed=None, exported=None, missing_source=False, compile_error=False):
        with tempfile.TemporaryDirectory() as td:
            root = pathlib.Path(td)
            for folder in ('src', 'build', 'tools/config', 'include'):
                (root / folder).mkdir(parents=True)
            (root / 'src/shared.c').write_text(source, encoding='utf-8')
            if missing_source: (root / 'src/shared.c').unlink()
            (root / 'src/other.c').write_text('void OtherTarget(void) {}', encoding='utf-8')
            (root / 'tools/config/modules.cfg').write_text('0x0800023C shared c game\n0x08000248 other c game\n')
            (root / 'tools/config/functions.cfg').write_text('thumb 0x0800023C\nthumb 0x08000240\nthumb 0x08000244 NamedTarget\nthumb 0x08000248 OtherTarget\n')
            if report is not None:
                (root / 'build/from.txt').write_text(report)
                arguments = (*arguments, '--from', str(root / 'build/from.txt'))
            checked, restored, builds = [], [], []
            fake = types.ModuleType('decomp')
            fake.ROOT = td
            fake.split_functions = decomp.split_functions
            fake.func_address = lambda name: {FIRST: 0x0800023C, SECOND: 0x08000240, NAMED: 0x08000244}.get(name)
            fake.check = lambda name, *a, **kw: checked.append(name) is None and name not in bad
            fake.assemble_orig = lambda name, output: name
            fake.function_symbols = lambda obj: set(exported or [])
            fake.compare = lambda orig, candidate, name, **kw: checked.append(name) is None and name not in bad
            def restore(name):
                restored.append(name)
                target = root / 'asm/nonmatchings/shared' / (name + '.s')
                target.parent.mkdir(parents=True, exist_ok=True)
                target.write_text('original ' + name)
                return str(target)
            fake.restore_asm = restore
            def command(args, **kwargs):
                builds.append(args)
                if compile_error: return subprocess.CompletedProcess(args,1,stdout='',stderr='fixture compile error')
                build = next((arg.split('=', 1)[1] for arg in args if arg.startswith('BUILD=')), 'build')
                target = root / build / 'src/shared.i'
                target.parent.mkdir(parents=True, exist_ok=True)
                target.write_text(source if preprocessed is None else preprocessed, encoding='utf-8')
                (target.with_suffix('.o')).write_bytes(b'fixture')
                return subprocess.CompletedProcess(args, 0, stdout='', stderr='')
            output = io.StringIO(); exit_code = 0
            with mock.patch.dict(sys.modules, {'decomp': fake}), mock.patch.object(sys, 'argv', ['revalidate.py', *arguments, 'shared']), mock.patch('subprocess.run', side_effect=command), contextlib.redirect_stdout(output):
                try: runpy.run_path(str(SCRIPTS / 'revalidate.py'), run_name='__main__')
                except SystemExit as exc: exit_code = exc.code or 0
            return dict(checked=checked, restored=restored, builds=builds, source=(root / 'src/shared.c').read_text(encoding='utf-8') if (root / 'src/shared.c').exists() else None, other=(root / 'src/other.c').read_text(encoding='utf-8'), output=output.getvalue(), exit_code=exit_code)

    def test_valid_alias_is_checked_as_original_symbol(self):
        result = self.invoke('void f_v(void) asm("%s");\nvoid f_v(void) {}\n' % FIRST)
        self.assertEqual(result['checked'], [FIRST])
        self.assertIn('OK', result['output'])

    def test_rollback_preserves_braces_inside_strings_and_comments(self):
        body = 'void f_v(void) { const char *s = "}"; /* } */ wrong(); }'
        result = self.invoke('void f_v(void) asm("%s");\n%s\n' % (FIRST, body), bad={FIRST}, arguments=('--apply',))
        self.assertIn('#ifdef NONMATCHING\n' + body + '\n#else', result['source'])

    def test_unmapped_export_is_error_instead_of_silent_skip(self):
        result=self.invoke('void unsupported_v(void) {}\n',exported={FIRST},arguments=('--apply',))
        self.assertIn('ERROR',result['output'])
        self.assertEqual(result['restored'],[])

    def test_bad_alias_is_not_silently_skipped(self):
        result = self.invoke('void f_v(void) asm("%s");\nvoid f_v(void) { wrong(); }\n' % FIRST, bad={FIRST})
        self.assertEqual(result['checked'], [FIRST])
        self.assertIn('BAD', result['output'])

    def test_descriptive_registered_symbol_is_checked(self):
        self.assertEqual(self.invoke('void NamedTarget(void) {}\n')['checked'], [NAMED])

    def test_apply_restores_canonical_asm_and_keeps_correct_alias_draft(self):
        text = 'void f_v(void) asm("%s");\nvoid f_v(void) { wrong(); }\n' % FIRST
        result = self.invoke(text, bad={FIRST}, arguments=('--apply',))
        self.assertEqual(result['restored'], [FIRST])
        self.assertIn('#ifdef NONMATCHING\nvoid f_v(void)', result['source'])
        self.assertIn('INCLUDE_ASM("asm/nonmatchings/shared", %s)' % FIRST, result['source'])
        self.assertIn('asm("%s")' % FIRST, result['source'])
        self.assertEqual(result['other'], 'void OtherTarget(void) {}')

    def test_selected_missing_module_source_is_error(self):
        result=self.invoke('',missing_source=True)
        self.assertIn('ERROR',result['output'])
        self.assertNotEqual(result['exit_code'],0)

    def test_failed_module_compile_never_restores_or_wraps_unproven_functions(self):
        text='void f_v(void) asm("%s");\nvoid f_v(void) {}\n'%FIRST
        result=self.invoke(text,arguments=('--apply',),compile_error=True)
        self.assertIn('ERROR',result['output'])
        self.assertEqual(result['restored'],[])
        self.assertEqual(result['source'],text)

    def test_normal_definition_still_checked_and_module_build_preserves_order(self):
        text = 'void %s(void) {}\nstruct Later { int value; };\n' % FIRST
        result = self.invoke(text)
        self.assertEqual(result['checked'], [FIRST])
        self.assertEqual(result['source'], text)
        self.assertTrue(result['builds'])
        self.assertIn('-j1', result['builds'][0])

    def test_unknown_ambiguous_or_foreign_alias_fails_closed(self):
        declarations = ['void f_v(void) asm("Missing");',
                        'void f_v(void) asm("%s"); void f_v(void) asm("%s");' % (FIRST, SECOND),
                        'void f_v(void) asm("OtherTarget");']
        for declaration in declarations:
            with self.subTest(declaration=declaration):
                result = self.invoke(declaration + '\nvoid f_v(void) {}\n', arguments=('--apply',))
                self.assertIn('ERROR', result['output'])
                self.assertNotEqual(result['exit_code'], 0)
                self.assertEqual(result['restored'], [])
                self.assertNotIn('#ifdef NONMATCHING', result['source'])

    def test_from_is_selected_fresh_check_and_does_not_trust_cached_bad(self):
        text = 'void f_v(void) asm("%s");\nvoid f_v(void) {}\nvoid %s(void) {}\n' % (FIRST, SECOND)
        result = self.invoke(text, arguments=('--apply',), report='shared %s\n' % FIRST)
        self.assertEqual(result['checked'], [FIRST])
        self.assertEqual(result['restored'], [])
        self.assertEqual(result['source'], text)

    def test_inactive_nonmatching_draft_is_not_selected(self):
        text = 'void %s(void) {}\n#ifdef NONMATCHING\nvoid draft_v(void) asm("%s");\nvoid draft_v(void) {}\n#else\nINCLUDE_ASM("x", %s);\n#endif\n' % (FIRST, SECOND, SECOND)
        result = self.invoke(text, preprocessed='void %s(void) {}\n' % FIRST)
        self.assertEqual(result['checked'], [FIRST])

    def test_from_with_stale_module_mapping_does_not_apply(self):
        result = self.invoke('void %s(void) {}\n' % FIRST, bad={FIRST}, arguments=('--apply',), report='other %s\n' % FIRST)
        self.assertIn('ERROR', result['output'])
        self.assertEqual(result['restored'], [])

class OriginalDescriptiveSymbolTests(unittest.TestCase):
    def test_restore_passes_descriptive_canonical_name_to_original_lookup(self):
        with tempfile.TemporaryDirectory() as td:
            root=pathlib.Path(td);(root/'tools/config').mkdir(parents=True)
            (root/'tools/config/modules.cfg').write_text('0x0800023C shared c game\n')
            original=root/'original.s';original.write_text('NamedTarget:\n bx lr\n')
            def original_lookup(name, directory):
                self.assertEqual(name,NAMED)
                return str(original),NAMED
            with mock.patch.object(decomp,'ROOT',td),mock.patch.object(decomp,'func_address',return_value=0x08000244),mock.patch.object(decomp,'orig_asm',side_effect=original_lookup),mock.patch.object(decomp,'current_names',return_value={}):
                restored=decomp.restore_asm(NAMED)
            self.assertEqual(pathlib.Path(restored).name,NAMED+'.s')
            self.assertIn('NamedTarget:',pathlib.Path(restored).read_text())

    def test_original_asm_keeps_existing_descriptive_registration(self):
        def command(args, **kwargs):
            content='asm/nonmatchings/shared/NamedTarget.s\n' if args[1]=='ls-tree' else 'NamedTarget:\n bx lr\n'
            return subprocess.CompletedProcess(args,0,stdout=content,stderr='')
        with tempfile.TemporaryDirectory() as td, mock.patch.object(decomp,'find_asm',return_value=(None,None)), mock.patch.object(decomp,'func_address',return_value=0x08000244), mock.patch.object(decomp,'run',side_effect=command):
            path,symbol=decomp.orig_asm(NAMED,td)
            self.assertEqual(symbol,NAMED)
            self.assertIn('NamedTarget:',pathlib.Path(path).read_text())

if __name__ == '__main__': unittest.main()
