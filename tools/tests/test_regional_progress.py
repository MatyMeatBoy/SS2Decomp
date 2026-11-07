"""Regional bars measure source-backed bytes, never copied-ROM completion."""
import copy
import hashlib
import json
from pathlib import Path
import sys
import tempfile
import unittest
import xml.etree.ElementTree as ET

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
try:
    import regional_progress as rp
except ModuleNotFoundError:
    rp = None


class RegionalProgressTests(unittest.TestCase):
    def setUp(self):
        self.assertIsNotNone(rp, 'regional progress reporting is not implemented')
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        (self.root / 'src').mkdir()
        (self.root / 'data').mkdir()
        self.source = self.root / 'src/table.c'
        self.source.write_text('const unsigned char values[4] = {1,2,3,4};\n')
        self.profiles = {r: {'name': r, 'size': 4096, 'sha1': 'a' * 40, 'sha256': 'a' * 64,
                             'game_code': 'TEST', 'revision': 0}
                         for r in ('eu', 'usa', 'jp')}
        self.modules = [
            {'name': 'game', 'kind': 'c', 'funcs': [
                {'name': 'F', 'addr': 0x0800023C, 'size': 32, 'state': 'done'},
                {'name': 'G', 'addr': 0x0800025C, 'size': 16, 'state': 'nonmatch'}]},
            {'name': 'linked', 'kind': 'linked', 'funcs': [
                {'name': 'L', 'addr': 0x0800026C, 'size': 8, 'state': 'done'}]},
            {'name': 'asm', 'kind': 'asm', 'funcs': [
                {'name': 'A', 'addr': 0x08000274, 'size': 8, 'state': 'asm'}]},
        ]
        receipt = {'canonical_eu_symbol': 'F', 'address': '0x0800023C',
                   'bytes': 16, 'module': 'game', 'sha256': 'b' * 64}
        region = {'rom_sha1': 'a' * 40, 'rom_sha256': 'a' * 64, 'code_start': '0x23C',
                  'code_end': '0x27C', 'data_end': '0x1000',
                  'boundary_anchor': {'offset': '0x21C', 'bytes': 128, 'sha256': 'c' * 64},
                  'compiled_c': [receipt], 'data_sources': []}
        self.evidence = {'schema_version': 1, 'primary_region': 'eu',
                         'regions': {r: copy.deepcopy(region) for r in self.profiles}}
        self.evidence['regions']['eu']['compiled_c'] = []
        self.evidence['regions']['eu']['data_sources'] = [{
            'rom_offset': '0x27C', 'bytes': 4, 'source': 'src/table.c',
            'source_sha256': hashlib.sha256(self.source.read_bytes().replace(b'\r\n', b'\n')).hexdigest(),
            'sha256': 'd' * 64, 'symbol': 'values'}]
        (self.root / 'data/raw.s').write_text('.incbin "baserom.gba", 0x280, 0xD80\n')

    def collect(self):
        return rp.collect(self.root, self.modules, self.profiles, self.evidence)

    def test_eu_counts_only_matching_c_and_preserves_distinct_denominator(self):
        report = self.collect()
        self.assertEqual(report['primary_region'], 'eu')
        self.assertEqual(report['regions']['eu']['code']['matching'], 32)
        self.assertEqual(report['regions']['eu']['code']['total'], 64)
        self.assertEqual(report['regions']['eu']['code']['percent'], 50)

    def test_other_regions_use_their_own_verified_intervals_not_eu_percent(self):
        for region in ('usa', 'jp'):
            code = self.collect()['regions'][region]['code']
            self.assertEqual((code['matching'], code['total'], code['percent']), (16, 64, 25))

    def test_draft_linked_and_asm_receipts_get_no_matching_c_credit(self):
        for name, address, module in [('G', 0x0800025C, 'game'),
                                      ('L', 0x0800026C, 'linked'),
                                      ('A', 0x08000274, 'asm')]:
            with self.subTest(name=name):
                receipt = self.evidence['regions']['usa']['compiled_c'][0]
                receipt.update(canonical_eu_symbol=name, address=address, bytes=8, module=module)
                result = self.collect()['regions']['usa']
                self.assertEqual(result['code']['matching'], 0)
                self.assertEqual(len(result['excluded_receipts']), 1)

    def test_raw_incbin_and_whole_rom_reconstruction_do_not_count_as_data_source(self):
        report = self.collect()['regions']
        self.assertEqual(report['eu']['data']['done'], 4)
        self.assertEqual(report['eu']['data']['total'], 4096 - 0x27C)
        self.assertEqual(report['usa']['data']['done'], 0)
        self.assertEqual(report['jp']['data']['done'], 0)

    def test_changed_source_invalidates_its_data_credit(self):
        self.source.write_text('changed initializer\n')
        result = self.collect()['regions']['eu']
        self.assertEqual(result['data']['done'], 0)
        self.assertTrue(result['excluded_receipts'])

    def test_checkout_line_endings_do_not_invalidate_identical_source(self):
        original = self.source.read_bytes().replace(b'\r\n', b'\n')
        self.source.write_bytes(original.replace(b'\n', b'\r\n'))
        self.assertEqual(self.collect()['regions']['eu']['data']['done'], 4)

    def test_malformed_byte_hash_is_rejected(self):
        self.evidence['regions']['usa']['compiled_c'][0]['sha256'] = 'not a hash'
        with self.assertRaises(ValueError):
            self.collect()

    def test_data_source_cannot_overlap_raw_incbin(self):
        (self.root / 'data/raw.s').write_text('.incbin "baserom.gba", 0x27C, 4\n')
        with self.assertRaises(ValueError):
            self.collect()

    def test_overlapping_receipts_are_rejected_before_counting(self):
        receipts = self.evidence['regions']['usa']['compiled_c']
        duplicate = copy.deepcopy(receipts[0])
        duplicate['address'] = '0x08000244'
        receipts.append(duplicate)
        with self.assertRaises(ValueError):
            self.collect()

    def test_out_of_bounds_data_and_wrong_profile_identity_are_rejected(self):
        bad = copy.deepcopy(self.evidence)
        self.evidence['regions']['eu']['data_sources'][0]['rom_offset'] = 4096
        with self.assertRaises(ValueError):
            self.collect()
        self.evidence = bad
        self.evidence['regions']['jp']['rom_sha1'] = 'e' * 40
        with self.assertRaises(ValueError):
            self.collect()

    def test_source_paths_must_stay_inside_repository(self):
        self.evidence['regions']['eu']['data_sources'][0]['source'] = '../outside.c'
        with self.assertRaises(ValueError):
            self.collect()

    def test_sha256_profile_mismatch_is_also_rejected(self):
        self.evidence['regions']['jp']['rom_sha256'] = 'e' * 64
        with self.assertRaises(ValueError):
            self.collect()

    def test_tiny_positive_percent_is_not_displayed_as_zero(self):
        self.assertEqual(rp.format_percent(0), '0.00%')
        self.assertEqual(rp.format_percent(0.0016), '<0.01%')
        self.assertEqual(rp.format_percent(92.858), '92.86%')

    def test_svg_has_six_labeled_bars_with_exact_counts(self):
        svg = rp.render_svg(self.collect())
        root = ET.fromstring(svg)
        bars = [e for e in root.iter() if e.attrib.get('class') == 'progress-fill']
        self.assertEqual(len(bars), 6)
        text = ''.join(root.itertext())
        self.assertIn('main', text)
        self.assertIn('32 / 64 bytes', text)
        self.assertIn('Data', text)

    def test_report_writes_only_additional_generated_outputs(self):
        config = self.root / 'tools/config'
        config.mkdir(parents=True)
        (config / 'rom_regions.json').write_text(json.dumps({'schema_version': 1, 'regions': self.profiles}))
        (config / 'regional_progress.json').write_text(json.dumps(self.evidence))
        out = self.root / 'out'
        out.mkdir()
        (out / 'existing-report.txt').write_text('preserve')
        rp.write_outputs(self.root, out, self.modules)
        for extension in ('json', 'svg', 'md'):
            self.assertTrue((out / ('regional_progress.' + extension)).exists())
        self.assertEqual((out / 'existing-report.txt').read_text(), 'preserve')


if __name__ == '__main__':
    unittest.main()
