"""Real agbcc controls for aliases and constrained GNU C; never randomizes."""
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import decomp
import permute

COMPILER = Path(decomp.AGBCC + '.exe') if os.name == 'nt' else Path(decomp.AGBCC)
AVAILABLE = COMPILER.is_file() and all(shutil.which(t) for t in ('sh', 'arm-none-eabi-as', 'arm-none-eabi-cpp'))
PERMUTER = Path(permute.PERMUTER)
READY = AVAILABLE and (PERMUTER / 'src/candidate.py').is_file()

FIXTURE = r'''typedef unsigned int u32;
register u32 globalCount asm("r8");
extern u32 samples[2] asm("gSamples");
extern u32 invoke(u32) __asm__("real_invoke");
extern u32 test_target(signed long);
u32 popupAlias(u32) asm("test_target");
u32 popupAlias(u32 value) {
    register u32 local asm("r4") = value;
    asm volatile("" : "+r"(local), "+r"(globalCount) : : "memory");
    {register u32 bound asm("r3")=local;
     asm("" : "+r"(bound));local=bound;}
    return invoke(({register u32 bound asm("r0")=local;
                    asm("" : "+r"(bound));bound;})) + globalCount + samples[1];
}
'''

@unittest.skipUnless(READY, 'requires agbcc, ARM binutils and installed permuter')
class PermuterConstraintControls(unittest.TestCase):
    def prepare(self, source, case, flags=None):
        with mock.patch.object(decomp, 'func_address', return_value=0), \
             mock.patch.object(decomp, 'module_of_addr', return_value='fixture'), \
             mock.patch.object(decomp, 'module_cc1', return_value=str(COMPILER)), \
             mock.patch.object(decomp, 'module_flags', return_value=flags or decomp.CC1FLAGS), \
             mock.patch.object(decomp, 'assemble_orig', return_value='test_target'):
            return permute.setup('test_target',str(source),str(case))

    def test_alias_definition_and_constraints_have_identical_complete_object(self):
        with tempfile.TemporaryDirectory(prefix='permuter-control-') as td:
            root=Path(td);source=root/'candidate.c';source.write_text(FIXTURE)
            case=root/'case'
            self.prepare(source,case)
            settings=(case/'settings.toml').read_text()
            self.assertIn('func_name = "popupAlias"',settings)
            result=permute.validate_control(str(case),str(source))
            self.assertTrue(result['entire_object_equal'])
            self.assertEqual((case/'reference.o').read_bytes(),(case/'baseline.o').read_bytes())
            exported=(case/'control.c').read_text()
            for fragment in ['asm("r8")','asm("r4")','asm("r3")','asm("r0")','asm("test_target")','asm("gSamples")','__asm__("real_invoke")','"+r"(globalCount)']:
                self.assertIn(fragment,exported)
            self.assertNotIn('sed ', (case/'compile.sh').read_text())
            self.assertEqual(decomp.normalized(str(case/'baseline.o'),'test_target'),
                             decomp.normalized(str(case/'reference.o'),'test_target'))

    def test_changed_fixed_register_is_rejected_by_complete_control(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);source=root/'candidate.c';source.write_text(FIXTURE);case=root/'case'
            self.prepare(source,case)
            base=case/'base.c';base.write_text(base.read_text().replace('asm("r4")','asm("r5")'))
            with self.assertRaisesRegex(SystemExit,'differs from normal object'):
                permute.validate_control(str(case),str(source))
            self.assertFalse(json.loads((case/'control.json').read_text())['entire_object_equal'])

    def test_stripped_used_inline_helper_fails_before_randomization(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);source=root/'candidate.c';case=root/'case'
            source.write_text('static inline int helper(int x) { return x*3+1; }\n'
                              'int test_target(int x) { return helper(x); }\n')
            self.prepare(source,case)
            with self.assertRaisesRegex(SystemExit,'differs from normal object'):
                permute.validate_control(str(case),str(source))

    def test_control_uses_selected_module_flags_for_both_objects(self):
        with tempfile.TemporaryDirectory() as td:
            root=Path(td);source=root/'candidate.c';case=root/'case'
            source.write_text('int test_target(int x) { return x*3+1; }\n')
            flags=['-O0' if x=='-O2' else x for x in decomp.CC1FLAGS]
            self.prepare(source,case,flags)
            result=permute.validate_control(str(case),str(source))
            self.assertEqual(result['flags'],flags)
            self.assertTrue(result['entire_object_equal'])
            self.assertIn('-O0',(case/'compile.sh').read_text())

class PermuterControlGate(unittest.TestCase):
    def test_failed_control_never_starts_randomizer(self):
        with tempfile.TemporaryDirectory() as td, \
             mock.patch.object(sys,'argv',['permute.py','target','input.c','--dir',td]), \
             mock.patch.object(permute,'setup',return_value=[]), \
             mock.patch.object(permute,'validate_control',create=True,side_effect=SystemExit('baseline changed')), \
             mock.patch.object(permute.subprocess,'run',return_value=subprocess.CompletedProcess([],0,'','')) as run:
            with self.assertRaisesRegex(SystemExit,'baseline changed'):
                permute.main()
            self.assertFalse(any(any(str(a).endswith('permuter.py') for a in c.args[0]) for c in run.call_args_list))

if __name__=='__main__':unittest.main()
