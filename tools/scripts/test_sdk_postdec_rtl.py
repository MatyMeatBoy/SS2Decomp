from sdk_postdec_common import setup, ROOT
r,cc,options=setup('rtl')
from pathlib import Path
import subprocess,re,argparse
g=options.source or ROOT/'tools/agbcc_sdk_postdec/source/agbcc-1b1c4a81d13918ca55c39c1ccf83689691b03a25/gcc'
out=r/'host';out.mkdir(exist_ok=True)
from types import SimpleNamespace
args=SimpleNamespace(fixture_source=r/'host_fixture.c',backend_source=None,expect_red=False,checks=61,failures=0)
def run(args):
 p=subprocess.run(list(map(str,args)),capture_output=True,text=True)
 with(out/'commands.log').open('a')as f:f.write(repr(args)+'\n'+p.stdout+p.stderr)
 assert not p.returncode,p.stdout+p.stderr
common=['gcc','-g','-std=gnu11','-Werror-implicit-function-declaration','-Wno-error=incompatible-pointer-types','-I',g]
run([*common,'-Dmain=compiler_entry_for_host_fixture','-c',g/'toplev.c','-o',out/'toplev_test.o'])
run([*common,'-c',args.fixture_source,'-o',out/'fixture.o'])
s=(g/'Makefile').read_text();m=re.search(r'^SRCS = (.*?)(?=\n\n)',s,re.M|re.S);assert m
sources=m.group(1).replace('\\\n',' ').split()
objects=[g/Path(x).with_suffix('.o')for x in sources if x!='toplev.c' and (not args.backend_source or x!='thumb.c')]+[g/(x+'.o')for x in ['rtl','bitmap','obstack','print-rtl','rtlanal']]
if args.backend_source:
 run([*common,'-c',args.backend_source,'-o',out/'backend_test.o']);objects.append(out/'backend_test.o')
run(['gcc','-g','-o',out/'fixture.exe',out/'fixture.o',out/'toplev_test.o',*objects])
p=subprocess.run([str((out/'fixture.exe').absolute())],capture_output=True,text=True)
(out/'result.log').write_text(p.stdout+p.stderr);print(p.stdout);print('exit',p.returncode)


expected='checks=%d failures=%d'%(args.checks,args.failures)
if args.expect_red:assert p.returncode and args.failures>0 and expected in p.stdout,p.stdout+p.stderr
else:assert not p.returncode and expected in p.stdout,p.stdout+p.stderr
