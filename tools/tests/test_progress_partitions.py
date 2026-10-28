import sys
import unittest
import tempfile
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "scripts"))
import progress


class ProgressPartitionTests(unittest.TestCase):
    def modules(self):
        return [
            {"name": "game", "kind": "c", "cat": "game", "funcs": [
                {"name": "a", "size": 4, "state": "done"},
                {"name": "b", "size": 8, "state": "nonmatch"},
                {"name": "c", "size": 12, "state": "todo"}]},
            {"name": "libc", "kind": "linked", "cat": "lib", "funcs": [
                {"name": "memcpy", "size": 16, "state": "done"}]},
            {"name": "start", "kind": "asm", "cat": "game", "funcs": [
                {"name": "Start", "size": 20, "state": "asm"}]},
        ]

    def test_linked_bytes_remain_in_legacy_done_but_not_decompiled(self):
        s = progress.summarize(self.modules())["all"]
        self.assertEqual((s["bytes_total"], s["bytes_done"], s["percent"]), (40, 20, 50.0))
        self.assertEqual((s["funcs_decompiled"], s["bytes_decompiled"]), (1, 4))
        self.assertEqual((s["funcs_linked"], s["bytes_linked"]), (1, 16))
        self.assertAlmostEqual(s["percent_decompiled"], 100 * 4 / 24)

    def test_partitions_cover_functions_and_bytes_without_overlap(self):
        for s in (progress.summarize(self.modules())[c] for c in ("game", "lib", "all")):
            for prefix in ("funcs", "bytes"):
                self.assertEqual(s[prefix + "_done"], s[prefix + "_decompiled"] + s[prefix + "_linked"])
                self.assertEqual(s[prefix + "_total"], sum(s[prefix + "_" + k] for k in ("decompiled", "linked", "drafts", "pending")))
                self.assertEqual(s[prefix + "_all"], s[prefix + "_total"] + s[prefix + "_original_asm"])
                self.assertEqual(s[prefix + "_decompilable"], sum(s[prefix + "_" + k] for k in ("decompiled", "drafts", "pending")))
        self.assertEqual(progress.summarize(self.modules())["all"]["bytes_original_asm"], 20)

    def test_collect_all_inventory_includes_prelude_and_ignores_fake_macros(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td); (root / "tools/config").mkdir(parents=True); (root / "src").mkdir()
            (root / "tools/config/functions.cfg").write_text("arm 0x080000C0 Start\nthumb 0x0800023C\nthumb 0x08000240\nthumb 0x08000244\nthumb 0x08000248 memcpy\n")
            (root / "tools/config/modules.cfg").write_text("0x0800023C game c game\n0x08000248 libc linked lib\n")
            (root / "src/game.c").write_text('// INCLUDE_ASM("x", sub_0800023C);\nvoid sub_0800023C(void) {}\n#ifdef NONMATCHING\nvoid sub_08000240(void) {}\n#else\nINCLUDE_ASM("x", sub_08000240);\n#endif\nINCLUDE_ASM("x", sub_08000244);\n')
            legacy = progress.collect(root, code_end=0x08000250)
            self.assertEqual(progress.summarize(legacy)["all"]["funcs_decompiled"], 1)
            full = progress.collect(root, code_end=0x08000250, include_prelude=True)
            self.assertEqual(full[0]["name"], "crt0")
            self.assertEqual(full[0]["funcs"][0]["name"], "Start")
            self.assertEqual(sum(len(m["funcs"]) for m in full), 5)

    def test_draft_percentage_does_not_label_drafts_as_matching_c(self):
        s = progress.summarize(self.modules())["game"]
        self.assertEqual(s["bytes_decompiled"], 4)
        self.assertEqual(s["bytes_drafts"], 8)
        self.assertEqual(s["bytes_pending"], 12)
        self.assertEqual(s["bytes_decompilable"], 24)
        self.assertAlmostEqual(s["percent_with_drafts"], 50.0)


if __name__ == "__main__":
    unittest.main()
