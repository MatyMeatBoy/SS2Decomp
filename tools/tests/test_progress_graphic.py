import sys
import unittest
import xml.etree.ElementTree as ET
import tempfile
import json
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import progress


class ProgressGraphicTests(unittest.TestCase):
    def test_worker_report_overrides_seed_and_rejects_wrong_filename(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td); (root/'tools/config').mkdir(parents=True)
            reports=root/'docs/agents/function_work'; reports.mkdir(parents=True)
            area=dict(id='flow',label='Flow',state='active',evidence='checkpoint')
            row=dict(address='0x08000618',areas=[area])
            (root/'tools/config/function_work.json').write_text(json.dumps(dict(functions=[row])))
            row['areas']=[dict(area,state='done')]
            report=reports/'sub_08000618.json'; report.write_text(json.dumps(row))
            self.assertEqual(progress.load_function_work(root,{0x08000618})[0x08000618]['areas'][0]['state'],'done')
            report.rename(reports/'sub_08000620.json')
            with self.assertRaises(ValueError): progress.load_function_work(root,{0x08000618})

    def test_dashboard_separates_metrics_and_preserves_canonical_identity(self):
        modules = [dict(name='game', kind='c', cat='game', size=100,
                        funcs=[dict(name='sub_08000618', addr=0x08000618, size=100, state='done')]),
                   dict(name='libc', kind='linked', cat='lib', size=20,
                        funcs=[dict(name='memcpy', addr=0x080B96A4, size=20, state='done')])]
        summary = progress.summarize(modules)
        summary.update(identification={'all':dict(total=2, identified=1, percent_identified=50)},
                       data=dict(incbin_count=3, incbin_bytes=1024, labels_descriptive=1, labels_total=3),
                       callgraph=dict(nodes=2, edges=1, unresolved_calls=1))
        modules[0]['funcs'][0].update(display_name='TaskWaitForSignal', name_status='confirmed')
        svg = progress.treemap_svg(modules, summary)
        ET.fromstring(svg)
        for text in ('C matching', 'Bibliotecas enlazadas', 'Identificación', 'Histórico C + linked',
                     'TaskWaitForSignal', 'sub_08000618', 'Datos:', 'sin porcentaje', 'Grafo:'):
            self.assertIn(text, svg)
        self.assertNotIn('100.00% de datos', svg)
        self.assertEqual(summary['all']['funcs_decompiled'], 1)
        self.assertEqual(summary['all']['funcs_linked'], 1)
        self.assertNotIn('fill="' + progress.BLUE + '"', svg)
        self.assertNotIn('fill="' + progress.PURPLE + '"', svg)

    def test_partial_work_is_milestones_not_matching_bytes(self):
        function = dict(name='sub_08000618',addr=0x08000618,size=100,state='nonmatch',
                        work_progress=dict(areas=[dict(label='flow',state='done'),
                                                  dict(label='types',state='active')]))
        modules = [dict(name='game',kind='c',cat='game',size=100,funcs=[function])]
        summary = progress.summarize(modules)
        svg = progress.treemap_svg(modules,summary)
        ET.fromstring(svg)
        self.assertIn('1/2 hitos',svg)
        self.assertIn('no es matching',svg)
        self.assertEqual(summary['all']['bytes_done'],0)

    def test_existing_callers_without_extended_inventory_still_render(self):
        modules = [dict(name='game',kind='c',cat='game',size=4,
                        funcs=[dict(name='sub_08000618',addr=0x08000618,size=4,state='todo')])]
        ET.fromstring(progress.treemap_svg(modules, progress.summarize(modules)))


if __name__ == '__main__': unittest.main()
