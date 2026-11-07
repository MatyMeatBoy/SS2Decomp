"""ROM identities are verified with the complete payload, not the header alone."""
import hashlib
from pathlib import Path
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import rom_regions


class RomRegionTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.rom = Path(self.temp.name) / 'own dump.gba'
        data = bytearray(512)
        data[0xA0:0xAC] = b'SHININGSOUL2'
        data[0xAC:0xB0] = b'AU2E'
        self.data = bytes(data)
        self.rom.write_bytes(self.data)
        self.profiles = {'usa': {
            'name': 'Synthetic USA fixture', 'filename': 'baserom_usa.gba',
            'game_code': 'AU2E', 'revision': 0, 'size': len(data),
            'sha1': hashlib.sha1(data).hexdigest(),
            'sha256': hashlib.sha256(data).hexdigest(),
        }}

    def test_verified_profile_returns_identity(self):
        result = rom_regions.verify_rom(self.rom, 'usa', self.profiles)
        self.assertEqual(result['region'], 'usa')
        self.assertEqual(result['game_code'], 'AU2E')
        self.assertEqual(result['sha1'], self.profiles['usa']['sha1'])
        self.assertEqual(result['size'], 512)

    def test_modified_payload_with_valid_header_is_rejected(self):
        data = bytearray(self.data)
        data[-1] ^= 1
        self.rom.write_bytes(data)
        with self.assertRaisesRegex(rom_regions.RegionError, 'hash'):
            rom_regions.verify_rom(self.rom, 'usa', self.profiles)

    def test_truncated_input_is_rejected(self):
        self.rom.write_bytes(self.data[:200])
        with self.assertRaisesRegex(rom_regions.RegionError, 'size'):
            rom_regions.verify_rom(self.rom, 'usa', self.profiles)

    def test_wrong_region_header_is_rejected(self):
        data = bytearray(self.data)
        data[0xAF] = ord('P')
        self.rom.write_bytes(data)
        with self.assertRaisesRegex(rom_regions.RegionError, 'game code'):
            rom_regions.verify_rom(self.rom, 'usa', self.profiles)

    def test_unknown_region_has_a_clear_error(self):
        with self.assertRaisesRegex(rom_regions.RegionError, 'Unknown region'):
            rom_regions.verify_rom(self.rom, 'unknown', self.profiles)

    def test_supplied_profiles_are_distinct_and_complete(self):
        profiles = rom_regions.load_profiles()
        self.assertEqual(set(profiles), {'eu', 'usa', 'jp'})
        self.assertEqual({p['game_code'] for p in profiles.values()}, {'AU2P', 'AU2E', 'AU2J'})
        self.assertEqual(len({p['sha1'] for p in profiles.values()}), 3)
        for profile in profiles.values():
            self.assertEqual(profile['size'], 16 * 1024 * 1024)
            self.assertEqual(profile['revision'], 0)
            self.assertEqual(len(profile['sha1']), 40)
            self.assertEqual(len(profile['sha256']), 64)


if __name__ == '__main__':
    unittest.main()
