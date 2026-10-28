"""Only the claimed function owner may change a per-function work report."""
import json
from pathlib import Path
import sys
import tempfile
import unittest
from unittest import mock
SCRIPTS=Path(__file__).resolve().parents[1]/'scripts';sys.path.insert(0,str(SCRIPTS))
import claim
FIRST='sub_0800023C';SECOND='sub_08000240'
FOLDER='docs/agents/function_work/'

def report(address):
    return json.dumps({'address':address,'updated_utc':'2026-10-28T18:43:00Z','checkpoint':'fixture','areas':[{'id':'flow','label':'Flow','state':'active','evidence':'fixture source audit'}]})

class FunctionWorkOwnershipTests(unittest.TestCase):
    def guard(self, after, before=None):
        before=before or {}
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);(root/'tools/config').mkdir(parents=True)
            (root/'tools/config/shards.txt').write_text('0 %s\n1 %s\n0 NamedTarget\n'%(FIRST,SECOND))
            (root/'tools/config/functions.cfg').write_text('thumb 0x0800023C\nthumb 0x08000240\nthumb 0x08000244 NamedTarget\n')
            def git(*args,**kwargs):
                if args[0]=='merge-base':return 'base'
                if args[0]=='diff':return '\n'.join(sorted(set(before)|set(after)))
                if args[0]=='ls-tree':
                    files=before if args[-2]=='base' else after
                    return args[-1] if args[-1] in files else ''
                if args[0]=='show':
                    rev,path=args[1].split(':',1)
                    return (before if rev=='base' else after).get(path,'')
                raise AssertionError(args)
            with mock.patch.object(claim,'ROOT',td),mock.patch.object(claim,'CFG',str(root/'tools/config/shards.txt')),mock.patch.object(claim,'git',side_effect=git):claim.guard('shard/000','main')

    def test_owned_report_is_allowed(self):
        self.guard({FOLDER+FIRST+'.json':report('0x0800023C')})

    def test_foreign_report_is_rejected(self):
        with self.assertRaises(SystemExit):self.guard({FOLDER+SECOND+'.json':report('0x08000240')})

    def test_filename_and_address_must_agree(self):
        with self.assertRaises(SystemExit):self.guard({FOLDER+FIRST+'.json':report('0x08000240')})

    def test_unknown_function_is_rejected(self):
        with self.assertRaises(SystemExit):self.guard({FOLDER+'sub_08009999.json':report('0x08009999')})

    def test_nested_or_non_address_filename_is_rejected(self):
        for name in ('nested/'+FIRST+'.json','NamedTarget.json'):
            with self.subTest(name=name),self.assertRaises(SystemExit):self.guard({FOLDER+name:report('0x0800023C')})

    def test_malformed_or_missing_address_is_rejected(self):
        for text in ('', '{', '{}', '[]', '{"address":null}'):
            with self.subTest(text=text),self.assertRaises(SystemExit):self.guard({FOLDER+FIRST+'.json':text})

    def test_descriptive_canonical_symbol_is_owned_by_registered_address(self):
        self.guard({FOLDER+'sub_08000244.json':report('0x08000244')})

    def test_owned_deletion_is_allowed(self):
        self.guard({}, {FOLDER+FIRST+'.json':report('0x0800023C')})

    def test_foreign_deletion_is_rejected(self):
        with self.assertRaises(SystemExit):self.guard({}, {FOLDER+SECOND+'.json':report('0x08000240')})

if __name__=='__main__':unittest.main()
