import sys
import tempfile
import unittest
from pathlib import Path
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "scripts"))
import function_names
import source_index
import data_inventory


class NameCatalogTests(unittest.TestCase):
    def entries(self):
        return [
            {"addr": 0x0800023C, "name": "sub_0800023C", "state": "asm", "kind": "asm", "cat": "game", "module": "sched", "size": 56},
            {"addr": 0x08000618, "name": "AgbMain", "state": "done", "kind": "c", "cat": "game", "module": "main", "size": 20},
            {"addr": 0x080B96A4, "name": "memcpy", "state": "done", "kind": "linked", "cat": "lib", "module": "libc", "size": 40},
        ]

    def test_confirmed_catalog_and_existing_names_have_separate_provenance(self):
        records = [{"address": "0x0800023C", "canonical_symbol": "sub_0800023C", "display_name": "TaskSchedulerInit", "status": "confirmed", "evidence": [{"source": "asm/sched.s", "detail": "initializes the task chain"}]}]
        nodes = function_names.identify(self.entries(), records)
        self.assertEqual(nodes[0]["canonical_symbol"], "sub_0800023C")
        self.assertEqual((nodes[0]["display_name"], nodes[0]["name_status"]), ("TaskSchedulerInit", "confirmed"))
        self.assertEqual(nodes[1]["name_status"], "existing")
        self.assertEqual(nodes[2]["domain"], "sdk")
        self.assertEqual(nodes[2]["implementation"], "linked")

    def test_sdk_origin_override_and_named_c_definition_alias(self):
        rows = [{"address": "0x0800023C", "display_name": "MultiSioWorker", "status": "confirmed", "domain": "sdk", "evidence": [{"source": "docs/LINK_CABLE.md", "detail": "SDK driver identity"}]}]
        nodes = function_names.identify(self.entries(), rows)
        self.assertEqual(nodes[0]["domain"], "sdk")
        aliases = {"sub_0800023C": [{"name": "sub_0800023C_scheduler", "source": "src/s.c", "line": 2}]}
        named = function_names.identify(self.entries(), [], defined_names=aliases)
        self.assertEqual(named[0]["name_status"], "existing")
        self.assertEqual(named[0]["name_source"], "c_definition_alias")

    def test_abi_aliases_do_not_count_as_descriptive_names(self):
        for suffix in ("", "_", "_impl", "_void", "_u32", "_s16", "_ptr", "_u32_impl"):
            with self.subTest(suffix=suffix):
                aliases = {"sub_0800023C": [{"name": "sub_0800023C" + suffix, "source": "src/s.c", "line": 2}]}
                nodes = function_names.identify(self.entries(), [], defined_names=aliases)
                self.assertEqual(nodes[0]["name_status"], "unidentified")

    def test_proposals_do_not_count_as_identified(self):
        records = [{"address": "0x0800023C", "display_name": "MaybeInit", "status": "proposed", "evidence": [{"source": "asm/sched.s", "detail": "needs confirmation"}]}]
        nodes = function_names.identify(self.entries(), records)
        stats = function_names.summarize(nodes)
        self.assertEqual(stats["all"]["identified"], 2)
        self.assertEqual(stats["all"]["proposed"], 1)
        self.assertEqual(stats["game"]["identified"], 1)
        self.assertEqual(stats["sdk"]["identified"], 1)

    def test_bad_catalog_evidence_address_or_symbol_is_rejected(self):
        valid = {"address": "0x0800023C", "canonical_symbol": "sub_0800023C", "display_name": "TaskInit", "status": "confirmed", "evidence": [{"source": "asm/sched.s", "detail": "writes the task list"}]}
        for override in ({"evidence": []}, {"address": "0x08000240"}, {"canonical_symbol": "wrong"}, {"status": "guessed"}):
            with self.subTest(override=override), self.assertRaises(ValueError):
                function_names.identify(self.entries(), [dict(valid, **override)])
        with self.assertRaises(ValueError):
            function_names.identify(self.entries(), [valid, valid])


class SourceCallGraphTests(unittest.TestCase):
    def test_c_aliases_comments_strings_casts_and_indirect_calls(self):
        source = r'''
        extern void send_alias(void) asm("SendPacket");
        extern void register_alias asm("r0");
        void Caller(void (*cb)(void)) {
            /* SendPacket(); */
            const char *s = "SendPacket()";
            send_alias();
            ((void (*)(void))SendPacket)();
            cb(); obj->SendPacket(); (*cb)();
            WRAP(SendPacket);
        }
        void SendPacket(void) {}
        '''
        result = source_index.scan_c(source, {"Caller", "SendPacket"}, "src/test.c")
        edges = [e for e in result["calls"] if e["caller"] == "Caller"]
        self.assertEqual([e["callee"] for e in edges], ["SendPacket", "SendPacket"])
        self.assertEqual(result["aliases"]["send_alias"], "SendPacket")
        self.assertNotIn("register_alias", result["aliases"])
        self.assertTrue(any(e["reason"] == "indirect" for e in result["unresolved"]))
        self.assertEqual({f["name"] for f in result["functions"]}, {"Caller", "SendPacket"})

    def test_parameter_shadowing_a_known_function_is_indirect(self):
        source = "void Caller(void (*SendPacket)(void)) { SendPacket(); }"
        result = source_index.scan_c(source, {"Caller", "SendPacket"}, "src/test.c")
        self.assertEqual(result["calls"], [])
        self.assertEqual(result["unresolved"][0]["reason"], "indirect")

    def test_asm_direct_tail_calls_and_register_calls(self):
        source = '''thumb_func_start Caller
Caller:
    bl SendPacket @ bl Fake
    b TailTarget
    bl _08001234
    blx r3
    .ascii "bl Fake"
_08001234:
    bx lr
'''
        result = source_index.scan_asm(source, {"Caller", "SendPacket", "TailTarget"}, "asm/test.s")
        self.assertEqual([(e["callee"], e["kind"]) for e in result["calls"]], [("SendPacket", "call"), ("TailTarget", "tail_branch")])
        self.assertTrue(any(e["reason"] == "indirect" for e in result["unresolved"]))

    def test_asm_block_comments_do_not_create_edges(self):
        result = source_index.scan_asm("Caller:\n/*\n bl SendPacket\n*/\n bx lr\n", {"Caller", "SendPacket"}, "asm/a.s")
        self.assertEqual(result["calls"], [])

    def test_unconfigured_asm_function_does_not_inherit_previous_caller(self):
        result = source_index.scan_asm("thumb_func_start Caller\nCaller:\n bl SendPacket\nthumb_func_start NotConfigured\nNotConfigured:\n bl SendPacket\n", {"Caller", "SendPacket"}, "asm/a.s")
        self.assertEqual(len(result["calls"]), 1)

    def test_focused_graph_obeys_direction_and_depth(self):
        graph = {"nodes": [{"canonical_symbol": n} for n in "ABCD"], "edges": [{"caller": a, "callee": b, "observations": []} for a, b in (("A", "B"), ("B", "C"), ("D", "A"))], "limitations": []}
        result = source_index.focus_graph(graph, "A", depth=1, direction="callees")
        self.assertEqual({n["canonical_symbol"] for n in result["nodes"]}, {"A", "B"})
        self.assertEqual(len(result["edges"]), 1)
        callers = source_index.focus_graph(graph, "A", depth=1, direction="callers")
        self.assertEqual({n["canonical_symbol"] for n in callers["nodes"]}, {"A", "D"})
        with self.assertRaises(ValueError): source_index.focus_graph(graph, "missing")

    def test_graph_keeps_provenance_resolves_header_alias_and_outputs_dot(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td)
            (root / "src").mkdir(); (root / "include").mkdir(); (root / "asm").mkdir()
            (root / "include/alias.h").write_text('extern void alias(void) asm("SendPacket");')
            (root / "src/a.c").write_text('void Caller(void) { alias(); }')
            (root / "asm/a.s").write_text('Caller:\n bl SendPacket\n')
            nodes = [{"canonical_symbol": n, "address": "0x%08X" % (0x08000000 + i * 4), "display_name": n, "implementation": "decompiled"} for i, n in enumerate(("Caller", "SendPacket"))]
            graph = source_index.build_callgraph(root, nodes)
            self.assertEqual(len(graph["edges"]), 1)
            self.assertEqual({o["language"] for o in graph["edges"][0]["observations"]}, {"c", "asm"})
            self.assertIn('"Caller" -> "SendPacket"', source_index.to_dot(graph))
            self.assertIn("limitations", graph)


class DataInventoryTests(unittest.TestCase):
    def test_multiline_comments_preserve_incbin_evidence_line(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td); (root / "data").mkdir()
            (root / "data/a.s").write_text('/* comment\n .incbin "fake", 0, 100\n*/\n.incbin "baserom.gba", 0, 4\n')
            result = data_inventory.collect(root)
            self.assertEqual(result["incbin_count"], 1)
            self.assertEqual(result["incbins"][0]["line"], 4)

    def test_raw_data_counts_are_not_a_decoding_percentage(self):
        with tempfile.TemporaryDirectory() as td:
            root = Path(td); (root / "data").mkdir()
            (root / "data/a.s").write_text('gUnk_08001000:\n.incbin "baserom.gba", 0x1000, 0x20\nKnownFont:\n.incbin "baserom.gba", 0x1020, 16\n.byte 1,2\n.align 2\n')
            data = data_inventory.collect(root)
            self.assertEqual((data["incbin_count"], data["incbin_bytes"]), (2, 48))
            self.assertEqual((data["labels_total"], data["labels_descriptive"]), (2, 1))
            self.assertEqual(data["explicit_data_directives"], 1)
            self.assertEqual(data["padding_directives"], 1)
            self.assertNotIn("percent_decoded", data)
            self.assertIn("padding", data["limitations"].lower())


if __name__ == "__main__":
    unittest.main()
