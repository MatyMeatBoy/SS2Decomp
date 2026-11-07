"""Regional reconstruction keeps C provenance and reference bytes separate."""
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import region_build
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


if __name__ == '__main__':
    unittest.main()
