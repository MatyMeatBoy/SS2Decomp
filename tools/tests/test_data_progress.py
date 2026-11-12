"""Data progress levels are independent and computed from source only."""
import json
from pathlib import Path
import sys
import tempfile
import unittest
import xml.etree.ElementTree as ET

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import data_progress as dp


class DataProgressTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        (self.root / 'data').mkdir()
        (self.root / 'tools/config').mkdir(parents=True)
        region = {'code_end': '0x100', 'data_end': '0x200'}
        (self.root / 'tools/config/regional_progress.json').write_text(json.dumps({'regions': {'eu': region}}))
        # 0x100-0x110 typed table, 0x110-0x150 split object, 0x150-0x200 blob with two objects inside
        (self.root / 'data/rodata.s').write_text(
            'gPalette:\n\t.2byte 1, 2, 3, 4, 5, 6, 7, 8\n'
            'gUnk_08000110:\n\t.incbin "baserom.gba", 0x110, 0x40\n'
            'gUnk_08000150:\n\t.incbin "baserom.gba", 0x150, 0xB0\n')
        (self.root / 'tools/config/data_targets.txt').write_text('# test\n000110\n000150\n000180\n0001C0\n')

    def test_levels(self):
        report = dp.collect(self.root)
        self.assertEqual(report['bytes_total'], 0x100)
        self.assertEqual(report['typed']['bytes'], 0x10)
        self.assertEqual(report['split']['bytes'], 0x50)          # typed bytes are split too
        self.assertEqual(report['split']['blob_bytes'], 0xB0)
        self.assertEqual(report['split']['pending_targets'], 2)   # a target at a range start is not pending
        self.assertEqual((report['split']['objects'], report['split']['objects_expected']), (3, 5))
        self.assertEqual(report['named']['objects'], 1)
        self.assertEqual(sum(r['size'] for r in report['ranges']), 0x100)

    def test_outputs_are_well_formed_and_tiny_values_are_escaped(self):
        report = dp.collect(self.root)
        report['typed']['percent'] = 0.001
        ET.fromstring(dp.render_svg(report))
        self.assertIn('&lt;0.01%', dp.render_svg(report))
        dp.write_outputs(self.root, self.root / 'out')
        self.assertEqual(sorted(p.name for p in (self.root / 'out').iterdir()),
                         ['data_progress.json', 'data_progress.md', 'data_progress.svg'])


if __name__ == '__main__':
    unittest.main()
