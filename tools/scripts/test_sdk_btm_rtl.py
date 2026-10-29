from sdk_btm_common import setup, ROOT
from pathlib import Path
import argparse,os,subprocess,re,json,hashlib
r, cc, options = setup('rtl')
g=(options.source or ROOT/'tools/agbcc_sdk_btm/source/agbcc-1b1c4a81d13918ca55c39c1ccf83689691b03a25/gcc').absolute()
out=r/('rtl_red' if options.expect_red else 'rtl_fixed');out.mkdir()
if not options.expect_red:
 for name,expected in json.loads((r/'provenance.json').read_text())['source_files_lf'].items():
  assert hashlib.sha256((g/name).read_text().encode()).hexdigest()==expected,name

def run(args,cwd=None):
 p=subprocess.run(list(map(str,args)),cwd=cwd,capture_output=True,text=True)
 with (out/'commands.log').open('a')as f:f.write(repr(args)+'\n'+p.stdout+p.stderr)
 assert not p.returncode,p.stdout+p.stderr
 # Return successful build diagnostics only to the saved log.
 return p
# Rename the compiler's C entry point while compiling a test-only object.
# No object-byte rewriting or duplicated allocator/copy implementation is used.
common=['gcc','-g','-std=gnu11','-Werror-implicit-function-declaration','-Wno-error=incompatible-pointer-types','-I',g]
run([*common,'-Dmain=compiler_entry_for_rtl_fixture','-c',g/'toplev.c','-o',out/'toplev_test.o'])
run([*common,'-c',r/'rtl_clone_fixture.c','-o',out/'fixture.o'])
# These wrappers expose static functions without changing their implementations.
(out/'integrate_test.c').write_text((g/'integrate.c').read_text()+'\nrtx fixture_copy_for_inline(rtx x){return copy_for_inline(x); }\n')
run([*common,'-c',out/'integrate_test.c','-o',out/'integrate_test.o'])
wrapper="""
rtx fixture_eliminate_changed_address(rtx mem)
{
    struct elim_table local[NUM_ELIMINABLE_REGS];
    struct elim_table *saved = reg_eliminate;
    tree saved_decl = current_function_decl;
    rtx result;
    zero_memory(local, sizeof local);
    local[0].from_rtx = XEXP(mem, 0);
    local[0].to_rtx = gen_rtx_REG(SImode, 1);
    local[0].can_eliminate = 1;
    local[0].previous_offset = 1;
    current_function_decl = make_node(FUNCTION_DECL);
    reg_eliminate = local;
    result = eliminate_regs(mem, VOIDmode, NULL_RTX);
    reg_eliminate = saved;
    current_function_decl = saved_decl;
    return result;
}
"""
(out/'reload_test.c').write_text((g/'reload1.c').read_text()+'\n#include "tree.h"\n'+wrapper)
run([*common,'-c',out/'reload_test.c','-o',out/'reload_test.o'])

make=(g/'Makefile').read_text();match=re.search(r'^SRCS = (.*?)(?=\n\n)',make,re.M|re.S);assert match
sources=match.group(1).replace('\\\n',' ').split();objects=[g/Path(s).with_suffix('.o')for s in sources if s not in ['toplev.c','integrate.c','reload1.c']];objects += [g/(s+'.o')for s in ['rtl','bitmap','obstack','print-rtl','rtlanal']]
run(['gcc','-g','-o',out/'fixture.exe',out/'fixture.o',out/'toplev_test.o',out/'integrate_test.o',out/'reload_test.o',*objects])
result=subprocess.run([str(out/'fixture.exe')],capture_output=True,text=True);(out/'result.log').write_text(result.stdout+result.stderr);print(result.stdout)
if options.expect_red:assert result.returncode and 'unshare clone loses proof: FAIL'in result.stdout
else:assert not result.returncode and 'cases=11 failures=0'in result.stdout,result.stderr
(out/'result.json').write_text(json.dumps(dict(expected_red=options.expect_red,returncode=result.returncode,output=result.stdout),indent=2))
