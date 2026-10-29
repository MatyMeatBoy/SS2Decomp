#!/usr/bin/env python3
"""Check SDK TST code generation against C results for all incoming NZCV flags.

Needs ARM binutils, pyelftools and Unicorn (optionally in --deps).
No ROM or SDK code is used by these generic compiler fixtures.
"""
from pathlib import Path
import argparse
import sys, subprocess, os, json, itertools, random, hashlib

ROOT = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--compiler', type=Path, default=ROOT/'tools/agbcc_tst/bin/agbcc')
parser.add_argument('--baseline', type=Path, default=ROOT/'tools/agbcc/bin/agbcc')
parser.add_argument('--deps', type=Path)
parser.add_argument('--out', type=Path, default=ROOT/'build/sdk_tst_tests')
args = parser.parse_args()
if args.deps:
    sys.path.insert(0, str(args.deps.resolve()))
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile

def executable(path):
    if not path.is_file() and path.with_suffix('.exe').is_file():
        return path.with_suffix('.exe')
    return path

root = args.out.resolve()
root.mkdir(parents=True, exist_ok=True)
src = ROOT/'tools/tests/fixtures/sdk_tst_conditions.c'
compilers = {'baseline': executable(args.baseline.resolve()),
             'sdk_tst': executable(args.compiler.resolve())}
subprocess.run(['arm-none-eabi-cpp','-undef','-nostdinc',str(src),'-o',str(root/'conditions.i')],check=True)
values=[0,1,2,3,0x7fffffff,0x80000000,0xffffffff,0x55555555,0xaaaaaaaa]
rng=random.Random(0x544354);pairs=list(itertools.product(values,repeat=2))+[(rng.getrandbits(32),rng.getrandbits(32)) for _ in range(64)]
def signed(x):return x-0x100000000 if x&0x80000000 else x
def expected(name,a,b):
 x=signed(a&b)
 if name=='and_two':return (1 if x==0 else 0)|(2 if x<0 else 0)|(4 if x>0 else 0)
 if name=='and_live':return 5 if x>0 else 7
 if name=='and_live_eq':return 5 if x==0 else 7
 if name=='and_live_two':return 11 if x==0 else (13 if x<0 else 17)
 return int({'and_eq':x==0,'and_ne':x!=0,'and_gt':x>0,'and_ge':x>=0,'and_lt':x<0,'and_le':x<=0}[name])
results=[]
for kind,cc in compilers.items():
 out=root/kind
 flags=['-O2','-mthumb-interwork','-fprologue-bugfix']+([] if kind=='baseline' else ['-ftst'])
 subprocess.run([str(cc),*flags,'-o',str(out)+'.s',str(root/'conditions.i')],check=True)
 subprocess.run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',str(out)+'.o',str(out)+'.s'],check=True)
 with open(str(out)+'.o','rb') as f:
  elf=ELFFile(f);code=elf.get_section_by_name('.text').data();syms={s.name:s['st_value']&~1 for s in elf.get_section_by_name('.symtab').iter_symbols() if s.name.startswith('and_') or s.name=='negative_spin'}
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB);base=0x1000000;stop=base+0xf000;data=0x2000000
 mu.mem_map(base,0x10000);mu.mem_write(base,code);mu.mem_map(data,0x1000);mu.mem_map(0x3000000,0x1000)
 failures=[];tested=0
 callee_regs=[UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11]
 initial_sp=0x3000ff0
 def execute(offset,a,b,nzcv):
  mu.reg_write(UC_ARM_REG_CPSR,(nzcv<<28)|0x30)
  mu.reg_write(UC_ARM_REG_R0,a);mu.reg_write(UC_ARM_REG_R1,b);mu.reg_write(UC_ARM_REG_R2,data)
  mu.reg_write(UC_ARM_REG_R3,0x33333333^a);mu.reg_write(UC_ARM_REG_R12,0xcccccccc^b)
  expected_regs={reg:((0x44440000+index*0x1111)^a^b)&0xffffffff for index,reg in enumerate(callee_regs)}
  for reg,value in expected_regs.items():mu.reg_write(reg,value)
  mu.reg_write(UC_ARM_REG_SP,initial_sp);mu.reg_write(UC_ARM_REG_LR,stop|1);mu.mem_write(data,b'\xa5'*4)
  mu.emu_start((base+offset)|1,stop,count=1000)
  state=dict(returned=mu.reg_read(UC_ARM_REG_PC)==stop,sp_restored=mu.reg_read(UC_ARM_REG_SP)==initial_sp,callee_saved=all(mu.reg_read(reg)==value for reg,value in expected_regs.items()))
  return mu.reg_read(UC_ARM_REG_R0),int.from_bytes(mu.mem_read(data,4),'little'),state
 for name,offset in syms.items():
  if not name.startswith('and_'):continue
  for a,b in pairs:
   for nzcv in range(16):
    got,stored,state=execute(offset,a,b,nzcv)
    want=expected(name,a,b);tested+=1
    if not all(state.values()) or got!=want or (name in ('and_live','and_live_eq','and_live_two') and stored!=(a&b)):
     if len(failures)<8:failures.append(dict(function=name,a=hex(a),b=hex(b),nzcv=nzcv,got=got,expected=want,state=state))
 got,stored,negative_state=execute(syms['negative_spin'],1,0,0)
 negative_rejected=got==1 and not negative_state['returned']
 if not negative_rejected:failures.append(dict(control='negative_spin',got=got,state=negative_state))
 results.append(dict(negative_control_rejected=negative_rejected,negative_control=dict(r0_matches_expected=got==1,state=negative_state),compiler=kind,sha256=hashlib.sha256(cc.read_bytes()).hexdigest(),cases=tested,first_failures=failures,passed=not failures))
 print(kind,tested,'PASS' if not failures else 'FAIL',failures[:1])
(root/'flags-results.json').write_text(json.dumps(results,indent=2))
if not all(row['passed'] for row in results):
    raise SystemExit(1)
