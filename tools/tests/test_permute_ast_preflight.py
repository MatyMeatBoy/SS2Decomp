"""Check real permuter ASTs before spending a bounded search budget."""
import json
from pathlib import Path
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import permute

READY = (Path(permute.PERMUTER) / 'src/candidate.py').is_file()


@unittest.skipUnless(READY, 'requires installed permuter')
class RandomizationPreflight(unittest.TestCase):
    def prepare(self, root, source, settings=''):
        (root / 'base.c').write_text(source)
        (root / 'control-settings.json').write_text(json.dumps({'c_name': 'target'}))
        (root / 'settings.toml').write_text(
            'func_name = "target"\ncompiler_type = "gcc"\n' + settings)

    def test_shared_named_struct_declaration_fails_before_randomization(self):
        source = ('struct Entry { int value; };\n'
                  'int target(struct Entry *input) {\n'
                  ' struct Entry *first, *second;\n'
                  ' first=input;second=input+1;return first->value+second->value;\n}\n')
        with tempfile.TemporaryDirectory() as td:
            root = Path(td); self.prepare(root, source)
            with self.assertRaisesRegex(SystemExit, 'shared AST nodes'):
                permute.validate_randomization(str(root))
            self.assertEqual((root / 'base.c').read_text(), source)

    def test_separate_named_struct_declarations_are_ready(self):
        source = ('struct Entry { int value; };\n'
                  'int target(struct Entry *input) {\n'
                  ' struct Entry *first;struct Entry *second;\n'
                  ' first=input;second=input+1;return first->value+second->value;\n}\n')
        with tempfile.TemporaryDirectory() as td:
            root = Path(td); self.prepare(root, source)
            result = permute.validate_randomization(str(root))
            self.assertGreater(result['unique_ast_nodes'], 0)
            self.assertEqual(result['disabled_passes'], [])
            self.assertEqual((root / 'base.c').read_text(), source)
            self.assertEqual(json.loads((root / 'randomization-control.json').read_text()), result)

    def test_local_type_disables_only_unsupported_temporary_pass(self):
        source = ('int target(int value) {\n'
                  ' struct Local { int value; };\n'
                  ' struct Local item;item.value=value;return item.value;\n}\n')
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            self.prepare(root, source, '\n[weight_overrides]\nperm_commutative = 0.25\n')
            result = permute.validate_randomization(str(root))
            sys.path.insert(0, permute.PERMUTER)
            from src.helpers import get_settings
            weights = get_settings(str(root))['weight_overrides']
            self.assertEqual(weights['perm_temp_for_expr'], 0.0)
            self.assertEqual(weights['perm_commutative'], 0.25)
            self.assertEqual(result['disabled_passes'], ['perm_temp_for_expr'])
            self.assertEqual(result['nameless_local_declarations'], 1)
            self.assertEqual((root / 'base.c').read_text(), source)

    def test_existing_disabled_pass_does_not_rewrite_settings(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            self.prepare(root, 'int target(void) { struct Local { int x; }; return 0; }',
                         '\n[weight_overrides]\n# keep this comment\nperm_temp_for_expr=0.0\n')
            before = (root / 'settings.toml').read_bytes()
            result = permute.validate_randomization(str(root))
            self.assertEqual(result['disabled_passes'], [])
            self.assertEqual((root / 'settings.toml').read_bytes(), before)

    def test_finite_template_does_not_require_randomizer_indexing(self):
        source = ('struct Entry { int value; };\n'
                  'int target(struct Entry *input) {\n'
                  ' struct Entry *first, *second;\n'
                  ' first=input;second=input+1;\n'
                  ' return PERM_GENERAL(first->value, second->value);\n}\n')
        with tempfile.TemporaryDirectory() as td:
            root = Path(td); self.prepare(root, source)
            before = (root / 'settings.toml').read_bytes()
            result = permute.validate_randomization(str(root))
            self.assertTrue(result['ready'])
            self.assertFalse(result['randomized'])
            self.assertEqual(result['disabled_passes'], [])
            self.assertEqual((root / 'settings.toml').read_bytes(), before)

    def test_local_enum_and_explicit_region_keep_input_unchanged(self):
        source = ('int target(int value) {\n'
                  ' enum Local { FIRST=1, SECOND=2 };\n'
                  ' int result;PERM_RANDOMIZE(result=value+FIRST;)return result;\n}\n')
        with tempfile.TemporaryDirectory() as td:
            root = Path(td); self.prepare(root, source)
            result = permute.validate_randomization(str(root))
            self.assertTrue(result['randomized'])
            self.assertEqual(result['nameless_local_declarations'], 1)
            self.assertEqual(result['disabled_passes'], ['perm_temp_for_expr'])
            self.assertEqual((root / 'base.c').read_text(), source)

    def test_unnamed_member_is_not_a_nameless_statement_declaration(self):
        source = ('int target(int value) {\n'
                  ' struct Local { unsigned int : 1; int value; } item;\n'
                  ' item.value=value;return item.value;\n}\n')
        with tempfile.TemporaryDirectory() as td:
            root = Path(td); self.prepare(root, source)
            result = permute.validate_randomization(str(root))
            self.assertEqual(result['nameless_local_declarations'], 0)
            self.assertEqual(result['disabled_passes'], [])

    def test_sizeof_unnamed_bitfield_does_not_disable_temporary_pass(self):
        source = ('int target(int value) {\n'
                  ' return value+sizeof(struct {unsigned :0; int field;});\n}\n')
        with tempfile.TemporaryDirectory() as td:
            root = Path(td); self.prepare(root, source)
            before = (root / 'settings.toml').read_bytes()
            result = permute.validate_randomization(str(root))
            self.assertEqual(result['nameless_local_declarations'], 0)
            self.assertEqual(result['disabled_passes'], [])
            self.assertEqual((root / 'settings.toml').read_bytes(), before)

    def test_standalone_anonymous_local_type_disables_temporary_pass(self):
        source = 'int target(void) { struct { int field; }; return 0; }'
        with tempfile.TemporaryDirectory() as td:
            root = Path(td); self.prepare(root, source)
            result = permute.validate_randomization(str(root))
            self.assertEqual(result['nameless_local_declarations'], 1)
            self.assertEqual(result['disabled_passes'], ['perm_temp_for_expr'])


if __name__ == '__main__':
    unittest.main()
