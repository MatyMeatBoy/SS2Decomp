import json
import sys
import tempfile
import unittest
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import project_inventory
import source_index

class ReportTests(unittest.TestCase):
    def test_complete_stable_rom_free_report_and_definition_alias(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            for directory in ('src', 'include', 'asm', 'tools/config', 'data'):
                (root / directory).mkdir(parents=True)
            (root / 'tools/config/function_names.json').write_text(json.dumps({'schema_version': 1, 'functions': []}))
            (root / 'src/a.c').write_text('void useful_name(void) asm("sub_0800023C");\nvoid useful_name(void) { memcpy(); }')
            modules = [{'name': 'game', 'kind': 'c', 'cat': 'game', 'funcs': [{'addr': 0x0800023C, 'name': 'sub_0800023C', 'size': 4, 'state': 'done'}]}, {'name': 'lib', 'kind': 'linked', 'cat': 'lib', 'funcs': [{'addr': 0x08000240, 'name': 'memcpy', 'size': 8, 'state': 'done'}]}]
            out = root / 'report'
            report = project_inventory.generate(root, out, modules)
            self.assertEqual(report['identification']['all']['identified'], 2)
            inventory = json.loads((out / 'functions.json').read_text())
            self.assertEqual(inventory['functions'][0]['name_source'], 'c_definition_alias')
            graph = json.loads((out / 'callgraph.json').read_text())
            self.assertEqual(graph['edges'][0]['callee'], 'memcpy')
            self.assertEqual(report['data']['incbin_bytes'], 0)
            before = {p.name: p.read_bytes() for p in out.iterdir()}
            project_inventory.generate(root, out, modules)
            self.assertEqual(before, {p.name: p.read_bytes() for p in out.iterdir()})
            self.assertTrue((out / 'identification.md').is_file())
            self.assertTrue((out / 'callgraph.dot').is_file())

    def test_graph_json_keeps_all_values_with_one_record_per_line(self):
        graph = {"schema_version": 1, "nodes": [{"canonical_symbol": "A", "evidence": [{"detail": "quoted \"name\" and unicode \u00f1"}]}, {"canonical_symbol": "B"}],
                 "edges": [{"caller": "A", "callee": "B", "observations": [{"line": 1}, {"line": 2}]}],
                 "unresolved_calls": [{"caller": "A", "expression": "cb", "line": 3}],
                 "parsed_c_functions": 1, "limitations": ["source only"], "future_field": {"preserve": True}}
        with tempfile.TemporaryDirectory() as td:
            path = Path(td) / 'graph.json'
            project_inventory.write_graph_json(path, graph)
            text = path.read_text(encoding='utf-8')
            self.assertEqual(json.loads(text), graph)
            for record in graph['nodes'] + graph['edges'] + graph['unresolved_calls']:
                encoded = json.dumps(record, ensure_ascii=True, separators=(',', ':'))
                self.assertEqual(sum(line.strip().rstrip(',') == encoded for line in text.splitlines()), 1)
            self.assertLess(len(text.splitlines()), 20)

    def test_definition_aliases_exclude_extern_only_and_mechanical_helpers(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td); (root / 'src').mkdir(); (root / 'include').mkdir()
            (root / 'src/a.c').write_text('void sub_08000000_u16(void) asm("D"); void sub_08000000_u16(void) {}\nvoid sub_08000004_(void) asm("E"); void sub_08000004_(void) {}\nvoid guessed(void) asm("A");\nvoid B_impl(void) asm("B");\nvoid B_impl(void) {}\nvoid real_name(void) asm("C");\nvoid real_name(void) {}')
            names = source_index.definition_names(root, {'A', 'B', 'C', 'D', 'E'})
            self.assertEqual(set(names), {'C'})

if __name__ == '__main__': unittest.main()
