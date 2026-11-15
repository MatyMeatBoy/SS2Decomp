"""Regional reconstruction keeps C provenance and reference bytes separate."""
from pathlib import Path
import json
import re
import shutil
import struct
import subprocess
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import region_build
import region_symbols
from rom_regions import RegionError

SAMPLE = '''.code 16
.globl sample
.type sample,function
.thumb_func
sample:
    mov r0, #7
    bx lr
.L1:
    .word 0x12345678
.Lfe1:
.size sample,.Lfe1-sample
.include "asm/nonmatchings/unrelated.s"
'''


class RegionDispatchTests(unittest.TestCase):
    def make(self, *args):
        return subprocess.run(['make', '-n', *args], cwd=region_build.ROOT,
                              capture_output=True, text=True)

    def test_explicit_regional_build_uses_the_regional_builder(self):
        for region in ('usa', 'jp'):
            with self.subTest(region=region):
                result = self.make('REGION=' + region, 'compare')
                self.assertEqual(result.returncode, 0, result.stderr)
                self.assertIn('region_build.py --region ' + region, result.stdout)
                self.assertNotIn('sha1sum -c shiningsoul2_eu', result.stdout)

    def test_unknown_region_and_eu_only_targets_fail_closed(self):
        self.assertNotEqual(self.make('REGION=unknown', 'compare').returncode, 0)
        self.assertNotEqual(self.make('REGION=usa', 'nonmatching').returncode, 0)


class RegionFragmentTests(unittest.TestCase):
    def test_generated_paths_cannot_overwrite_reference_or_eu_outputs(self):
        root = region_build.ROOT
        with tempfile.TemporaryDirectory() as td:
            out = Path(td)
            rom = out / 'own.gba'
            for output in (rom, root / 'baserom.gba', root / 'shiningsoul2_eu.gba',
                           root / 'shiningsoul2_eu.elf', root / 'shiningsoul2_nm.gba',
                           root / 'shiningsoul2_nm.elf', out / 'linked.gba'):
                with self.subTest(output=output):
                    with self.assertRaises(RegionError):
                        region_build.validate_output_paths(rom, out, output)
            with self.assertRaises(RegionError):
                region_build.validate_output_paths(out / 'linked.elf', out, out / 'result.gba')
            region_build.validate_output_paths(rom, out, out / 'result.gba')

    def test_extracts_compiler_function_without_asm_fallback(self):
        functions = region_build.extract_functions(SAMPLE)
        self.assertEqual(set(functions), {'sample'})
        self.assertIn('.thumb_func', functions['sample'])
        self.assertNotIn('.include', functions['sample'])

    def test_top_level_assembly_is_not_counted_as_a_c_definition(self):
        source = ('asm(".type asm_only,function\\nasm_only:\\nbx lr\\n");\n'
                  'void readable(void) asm("canonical");\n'
                  'void readable(void) { return; }\n')
        self.assertEqual(region_build.active_c_names(source, {'canonical', 'asm_only'}), {'canonical'})

    def test_namespaces_local_identifiers_without_editing_literals(self):
        source = '.L1:\n b .L1\n .ascii ".L1"\n @ .L1 is a comment\n'
        first = region_build.namespace_locals(source, 'first')
        second = region_build.namespace_locals(source, 'second')
        self.assertIn('.Lregion_first_1:', first)
        self.assertIn('b .Lregion_first_1', first)
        self.assertIn('.ascii ".L1"', first)
        self.assertIn('@ .L1 is a comment', first)
        self.assertNotEqual(first, second)

    def test_missing_size_is_not_treated_as_a_c_fragment(self):
        with self.assertRaisesRegex(RegionError, 'size'):
            region_build.extract_functions(SAMPLE.split('.size')[0])

    def test_mixed_thumb_arm_wrapper_is_not_admitted_as_a_c_fragment(self):
        source = ('.type wrapper,%function\n.thumb_func\nwrapper:\n bx r2\n.arm\n'
                  '.type arm_body,function\narm_body:\n bx lr\n.size arm_body,.-arm_body\n')
        self.assertEqual(region_build.extract_functions(source), {})

    def fragment(self, name='sample', offset=16, data=b'12345678'):
        assembly = SAMPLE.split('.include')[0].replace('sample', name)
        return region_build.Fragment(name, 0x08000000 + offset, data, assembly, 'fixture')

    def test_selects_only_complete_same_address_matches(self):
        eu = bytes(16) + b'12345678' + bytes(40)
        fragment = self.fragment()
        self.assertEqual(region_build.select_fragments([fragment], eu, eu), [fragment])
        target = bytearray(eu)
        target[23] = 0xFF
        self.assertEqual(region_build.select_fragments([fragment], eu, bytes(target)), [])

    def test_eu_compiler_bytes_must_already_match_the_reference(self):
        with self.assertRaisesRegex(RegionError, 'EU'):
            region_build.select_fragments([self.fragment()], bytes(64), bytes(64))

    def test_overlap_is_rejected_instead_of_double_counted(self):
        fragments = [self.fragment(), self.fragment('alias', 20)]
        with self.assertRaisesRegex(RegionError, 'overlap'):
            region_build.render_layout('reference.gba', 64, fragments)

    def test_layout_accounts_for_every_reference_gap(self):
        source, gaps = region_build.render_layout('own dump.gba', 64,
                                                  [self.fragment(), self.fragment('other', 32)])
        self.assertEqual(gaps, [(0, 16), (24, 8), (40, 24)])
        self.assertEqual(sum(length for _, length in gaps) + 16, 64)
        self.assertIn('own dump.gba', source)
        self.assertIn('.Lregion_sample_', source)
        self.assertIn('.Lregion_other_', source)

    def test_reference_only_layout_claims_no_c_bytes(self):
        source, gaps = region_build.render_layout('own.gba', 64, [])
        self.assertEqual(gaps, [(0, 64)])
        self.assertEqual(source.count('.incbin'), 1)

    def test_fragment_outside_the_rom_is_rejected(self):
        with self.assertRaisesRegex(RegionError, 'bounds'):
            region_build.render_layout('own.gba', 20, [self.fragment()])

    def test_external_symbols_keep_verified_values_and_exclude_definitions(self):
        script = region_build.render_linker({'sample': 0x08000011, 'helper': 0x08000101}, {'sample'}, 64)
        self.assertIn('helper = 0x08000101', script)
        self.assertNotIn('PROVIDE(sample', script)
        self.assertIn('SIZEOF(.rom) == 64', script)

    def test_path_control_characters_are_rejected(self):
        with self.assertRaises(RegionError):
            region_build.render_layout('bad\npath.gba', 64, [])

    @unittest.skipUnless(all(shutil.which(name) for name in
                              ('arm-none-eabi-as', 'arm-none-eabi-ld', 'arm-none-eabi-objcopy')),
                         'ARM binutils are optional for this synthetic integration test')
    def test_real_link_preserves_the_compiled_fragment_and_all_reference_gaps(self):
        with tempfile.TemporaryDirectory(prefix='region build ') as td:
            root = Path(td)
            assembly = root / 'reference.s'
            assembly.write_text(SAMPLE.split('.include')[0])
            obj = root / 'reference.o'
            elf = root / 'reference.elf'
            binary = root / 'reference.bin'
            subprocess.run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-o', str(obj), str(assembly)], check=True)
            subprocess.run(['arm-none-eabi-ld', '-Ttext=0x08000010', '-e', 'sample',
                            '-o', str(elf), str(obj)], check=True)
            subprocess.run(['arm-none-eabi-objcopy', '-O', 'binary', '-j', '.text',
                            str(elf), str(binary)], check=True)
            data = binary.read_bytes()
            rom_data = bytes([0xA5]) * 16 + data + bytes([0x5A]) * (48 - len(data))
            rom = root / 'reference dump.gba'
            rom.write_bytes(rom_data)
            fragment = self.fragment(data=data)
            source, _ = region_build.render_layout(rom, len(rom_data), [fragment])
            layout = root / 'layout.s'
            layout.write_text(source)
            script = root / 'layout.ld'
            script.write_text(region_build.render_linker({}, {'sample'}, len(rom_data)))
            region_build.link_layout(layout, script, root / 'output.elf', root / 'output.gba')
            self.assertEqual((root / 'output.gba').read_bytes(), rom_data)


class RegionOnlySourceTests(unittest.TestCase):
    def test_regional_names_encode_their_own_address(self):
        self.assertEqual(region_build.region_symbol_address('usa_sub_0801A1C8', 'usa'), 0x0801A1C9)
        self.assertEqual(region_build.region_symbol_address('usa_gUnk_03005EBC', 'usa'), 0x03005EBC)
        self.assertIsNone(region_build.region_symbol_address('usa_sub_0801A1C8', 'jp'))
        self.assertIsNone(region_build.region_symbol_address('sub_0801A1C8', 'usa'))
        self.assertIsNone(region_build.region_symbol_address('usa_sub_801A1C8', 'usa'))

    def test_only_called_thumb_symbols_become_absolute_thumb_entries(self):
        symbols = {'usa_sub_0805D6E8': 0x0805D6E9, 'sub_08001494': 0x08001495,
                   'usa_gUnk_03005EBC': 0x03005EBC}
        text = region_build.thumb_call_targets({'usa_sub_0805D6E8', 'sub_08001494',
                                                'usa_gUnk_03005EBC'}, symbols)
        self.assertIn('.thumb_set usa_sub_0805D6E8, 0x0805d6e8', text)
        self.assertIn('.thumb_set sub_08001494, 0x08001494', text)
        self.assertNotIn('usa_gUnk_03005EBC', text)
        with self.assertRaisesRegex(RegionError, 'Unresolved'):
            region_build.thumb_call_targets({'missing_function'}, symbols)

    def test_region_only_sources_live_outside_the_eu_build(self):
        for region in ('usa', 'jp'):
            sources = sorted((region_build.ROOT / 'src/regions' / region).glob('*.c'))
            self.assertTrue(sources, region)
            for source in sources:
                text = source.read_text(encoding='utf-8')
                for name in re.findall(r'^\w[\w \*]*?\b(\w+)\s*\([^;{]*\)\s*$\n\{', text, re.M):
                    with self.subTest(region=region, source=source.name, name=name):
                        self.assertIsNotNone(region_build.region_symbol_address(name, region))

class RelocatedFunctionTests(unittest.TestCase):
    EU_BASE, REGION_BASE = 0x08000100, 0x08000140

    def roms(self):
        # push {lr}; bl callee; ldr r0,[pc]; pop {pc}; pool word -> gUnk at 0x03000010 (+4 addend)
        def code(base, callee, word):
            offset = (callee - (base + 6)) >> 1
            bl = struct.pack('<HH', 0xF000 | (offset >> 11) & 0x7FF, 0xF800 | offset & 0x7FF)
            return b'\x00\xb5' + bl + b'\x00\x48\x00\xbd' + struct.pack('<I', word)
        eu, region = bytearray(0x400), bytearray(0x400)
        eu[0x100:0x110] = code(self.EU_BASE, 0x08000300, 0x03000014)
        region[0x140:0x150] = code(self.REGION_BASE, 0x08000320, 0x03000024)
        relocs = [(2, region_symbols.THM_CALL, 'callee'), (10, region_symbols.ABS32, 'gUnk_03000010')]
        fragment = region_build.Fragment('moved', self.EU_BASE, bytes(eu[0x100:0x110]), '', 'fixture')
        return bytes(eu), bytes(region), fragment, relocs

    def test_relocations_are_solved_for_regional_symbol_values(self):
        eu, region, fragment, relocs = self.roms()
        symbols = {'callee': 0x08000301, 'gUnk_03000010': 0x03000010}
        needs = region_symbols.resolve(fragment, relocs, symbols, eu, region, self.REGION_BASE)
        self.assertEqual(needs, {'callee': {0x08000321}, 'gUnk_03000010': {0x03000020}})

    def test_code_differences_outside_relocations_are_not_placed(self):
        eu, region, fragment, relocs = self.roms()
        changed = bytearray(region)
        changed[0x146] = 0x01  # ldr r0 -> ldr r0 with another offset
        symbols = {'callee': 0x08000301, 'gUnk_03000010': 0x03000010}
        self.assertIsNone(region_symbols.resolve(fragment, relocs, symbols, eu, bytes(changed),
                                                 self.REGION_BASE))

    def test_section_relative_words_must_move_with_the_function(self):
        eu, region, fragment, _ = self.roms()
        relocs = [(10, region_symbols.ABS32, None)]
        self.assertIsNone(region_symbols.resolve(fragment, relocs, {}, eu, region, self.REGION_BASE))

    def test_references_resolved_inside_the_eu_object_cannot_move(self):
        fragment = region_build.Fragment('f', 0x08000100, b'', 'f:\n ldr r0, _080B6554\n bl g\n', 'm')
        symbols = {'f': 0x08000101, 'g': 0x08000201, '_080B6554': 0x080B6554}
        self.assertFalse(region_symbols.self_contained(fragment, [(2, 10, 'g')], symbols))
        fragment = region_build.Fragment('f', 0x08000100, b'', 'f:\n bl g\n', 'm')
        self.assertTrue(region_symbols.self_contained(fragment, [(2, 10, 'g')], symbols))

    def test_symbol_tables_are_keyed_by_eu_address(self):
        for region in ('usa', 'jp'):
            table = json.loads(region_symbols.table_path(region).read_text(encoding='utf-8'))
            with self.subTest(region=region):
                self.assertEqual(table['region'], region)
                for section in ('functions', 'symbols'):
                    for key, value in table[section].items():
                        self.assertRegex(key, r'^0x[0-9A-F]{8}$')
                        self.assertRegex(value, r'^0x[0-9A-F]{8}$')


if __name__ == '__main__':
    unittest.main()
