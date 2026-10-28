"""C drafts in m4a can be owned without admitting original hand-written ASM."""
from pathlib import Path
import sys
import tempfile
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import claim


class M4aClaimTests(unittest.TestCase):
    def test_c_sound_drafts_are_claimable_but_original_asm_is_excluded(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            for module, name in [('m4a', 'CgbSound'), ('m4a', 'm4aSoundInit'),
                                 ('m4a_1', 'SoundMain'), ('sched', 'Schedule'),
                                 ('libagbsyscall', 'CpuSet')]:
                folder = root / 'asm/nonmatchings' / module
                folder.mkdir(parents=True, exist_ok=True)
                (folder / (name + '.s')).write_text('fixture\n')
            config = root / 'shards.txt'
            config.write_text('120 CgbSound m4a\n120 m4aSoundInit m4a\n')
            with mock.patch.object(claim, 'ROOT', td), mock.patch.object(claim, 'CFG', str(config)):
                self.assertEqual(claim.remaining(), {'CgbSound', 'm4aSoundInit'})
                self.assertEqual(claim.shards(), {120: [2, 0]})

    def test_sdk_function_ownership_is_unique_in_current_registry(self):
        rows = [line.split() for line in Path(claim.CFG).read_text().splitlines() if line.strip()]
        for name in ('CgbSound', 'm4aSoundInit'):
            self.assertEqual([row for row in rows if row[1] == name], [['120', name, 'm4a']])
