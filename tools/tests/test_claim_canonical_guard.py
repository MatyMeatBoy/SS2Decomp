"""A C-only edit cannot bypass shard ownership by using an asm alias."""
import pathlib
import sys
import tempfile
import unittest
from unittest import mock
SCRIPTS = pathlib.Path(__file__).resolve().parents[1] / 'scripts'
sys.path.insert(0, str(SCRIPTS))
import claim
FIRST='sub_0800023C'; SECOND='sub_08000240'

class ClaimCanonicalGuardTests(unittest.TestCase):
    def guard(self, before, after, header_before='', header_after='', changed=None, remote=None):
        with tempfile.TemporaryDirectory() as td:
            root=pathlib.Path(td); (root/'tools/config').mkdir(parents=True)
            (root/'tools/config/shards.txt').write_text('0 %s\n1 %s\n' % (FIRST,SECOND)+'1 NamedTarget\n')
            (root/'tools/config/functions.cfg').write_text('thumb 0x0800023C\nthumb 0x08000240\nthumb 0x08000244 NamedTarget\n')
            def git(*args, **kwargs):
                if args[0]=='merge-base': return 'base'
                if args[0]=='diff': return '\n'.join(changed or ['src/shared.c'])
                if args[0]=='ls-tree': return 'include/functions.h' if args[-1]=='include' else 'src/shared.c'
                if args[0]=='show':
                    old=args[1].startswith(('origin/main:','base:'))
                    if remote is not None and args[1].startswith('origin/main:') and args[1].endswith('.c'):return remote
                    return (header_before if old else header_after) if args[1].endswith('.h') else (before if old else after)
                raise AssertionError(args)
            with mock.patch.object(claim,'ROOT',td),mock.patch.object(claim,'CFG',str(root/'tools/config/shards.txt')),mock.patch.object(claim,'git',side_effect=git):
                claim.guard('shard/000','main')

    def test_foreign_aliased_body_edit_without_asm_change_is_rejected(self):
        before='void f_v(void) asm("%s");\nvoid f_v(void) {}\n' % SECOND
        with self.assertRaises(SystemExit): self.guard(before,before.replace('{}','{ wrong(); }'))

    def test_foreign_normal_return_type_edit_is_rejected(self):
        with self.assertRaises(SystemExit): self.guard('int %s(void) {return 1;}'%SECOND,'void %s(void) {return 1;}'%SECOND)

    def test_foreign_descriptive_body_edit_is_rejected(self):
        with self.assertRaises(SystemExit):self.guard('void NamedTarget(void) {}','void NamedTarget(void) {wrong();}')

    def test_foreign_changes_only_on_main_are_not_attributed_to_branch(self):
        before='void %s(void) {}\nvoid %s(void) {}\n'%(FIRST,SECOND)
        after=before.replace('void %s(void) {}'%FIRST,'void %s(void) {own();}'%FIRST)
        remote=before.replace('void %s(void) {}'%SECOND,'void %s(void) {other();}'%SECOND)
        self.guard(before,after,remote=remote)

    def test_owned_aliased_body_edit_is_allowed(self):
        before='void f_v(void) asm("%s");\nvoid f_v(void) {}\n' % FIRST
        self.guard(before,before.replace('{}','{ changed(); }'))

    def test_header_only_alias_redirection_is_rejected(self):
        source='void f_v(void) {}'
        with self.assertRaises(SystemExit):
            self.guard(source,source,'void f_v(void) asm("%s");'%FIRST,'void f_v(void) asm("%s");'%SECOND,['include/functions.h'])

if __name__=='__main__': unittest.main()
