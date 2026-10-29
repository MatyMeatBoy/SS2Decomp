#!/usr/bin/env python3
"""SDK opt-in compiler semantic and ABI regression fixtures; no ROM required."""
from pathlib import Path
import argparse
import sys, subprocess, os, json, random, hashlib, re, tempfile
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--compiler', type=Path, required=True)
parser.add_argument('--reference-compiler', type=Path)
parser.add_argument('--deps', type=Path)
parser.add_argument('--out', type=Path, default=Path('build/sdk_flags'))
args = parser.parse_args()
if args.deps:
    sys.path.insert(0, str(args.deps.resolve()))
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile
args.out.mkdir(parents=True, exist_ok=True)
r = Path(tempfile.mkdtemp(prefix='run_', dir=args.out.resolve()))
cc = args.compiler.resolve()
reference = args.reference_compiler.resolve() if args.reference_compiler else None

forms = ['int lsr_deq_00(unsigned x,unsigned unused,unsigned *out){unsigned v=x>>0;if(v==0)return 5;return 7;}', 'int lsr_dne_00(unsigned x,unsigned unused,unsigned *out){unsigned v=x>>0;if(v!=0)return 5;return 7;}', 'int lsr_leq_00(unsigned x,unsigned unused,unsigned *out){unsigned v=x>>0;if(v==0){*out=0xa5;return 5;}*out=v;return 7;}', 'int lsr_lne_00(unsigned x,unsigned unused,unsigned *out){unsigned v=x>>0;if(v!=0){*out=v;return 5;}*out=0x5a;return 7;}', 'int lsr_two_00(unsigned x,unsigned unused,unsigned *out){unsigned v=x>>0;if(v==0){*out=0;return 11;}if(v>123){*out=v;return 13;}*out=v+1;return 17;}', 'int lsr_source_00(unsigned x,unsigned unused,unsigned *out){unsigned v=x>>0;if(v==0){*out=0x33;return x;}*out=v;return x^v;}', 'int lsr_signed_00(unsigned x,unsigned unused,unsigned *out){unsigned v=x>>0;if((int)v>0)return 5;return 7;}', 'int lsr_abi_00(unsigned x,unsigned unused,unsigned *out){register unsigned saved asm("r4")=x; register unsigned v asm("r5")=x>>0;if(v==0){*out=saved;return 5;}*out=saved^v;return 7;}']
source = []
for shift in range(32):
    source.extend(form.replace('_00(', '_%02d(' % shift).replace('>>0', '>>%d' % shift) for form in forms)
source.append('int lsr_negative_spin(int expected){for(;;){}}')
(r/'fixtures.c').write_text('\n'.join(source)+'\n')
profiles = ([('accepted', reference, False)] if reference else []) + [('new_off', cc, False), ('new_on', cc, True)]
subprocess.run(['arm-none-eabi-cpp','-undef','-nostdinc',str(r/'fixtures.c'),'-o',str(r/'fixtures.i')],check=True)
for name,compiler,enabled in profiles:
 flags=['-O2','-mthumb-interwork','-fprologue-bugfix','-ftst']+(['-flsr-flags'] if enabled else [])
 p=subprocess.run([str(compiler),*flags,'-o',str(r/(name+'.s')),str(r/'fixtures.i')],capture_output=True,text=True)
 (r/(name+'-compile.log')).write_text(p.stdout+p.stderr);assert not p.returncode,p.stderr
 subprocess.run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',str(r/(name+'.o')),str(r/(name+'.s'))],check=True)
 if name=='new_off' and reference:assert (r/'accepted.o').read_bytes()==(r/'new_off.o').read_bytes(),'option-off fixture object changed'
regs=[UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11]
values={};rng=random.Random(0x4c5352)
for k in range(32):
 vals=[0,1,2,0x7fffffff,0x80000000,0xffffffff,0x55555555,0xaaaaaaaa,(1<<k)-1,1<<k,(1<<k)+1]
 vals += [t<<k for t in [123,124,125] if t<<k<=0xffffffff]+[rng.getrandbits(32) for _ in range(8)]
 values[k]=sorted(set(v&0xffffffff for v in vals))
def expected(form,x,k):
 v=x>>k;untouched=0xa5a5a5a5
 if form=='deq':return (5 if v==0 else 7),untouched
 if form=='dne':return (5 if v!=0 else 7),untouched
 if form=='leq':return (5,0xa5) if v==0 else (7,v)
 if form=='lne':return (5,v) if v!=0 else (7,0x5a)
 if form=='two':return (11,0) if v==0 else ((13,v) if v>123 else (17,(v+1)&0xffffffff))
 if form=='source':return (x,0x33) if v==0 else (x^v,v)
 if form=='signed':return (5 if (v if v<0x80000000 else v-0x100000000)>0 else 7),untouched
 if form=='abi':return (5,x) if v==0 else (7,x^v)
 raise ValueError(form)
results=[]
expected_functions = {
 'lsr_%s_%02d' % (form, shift)
 for form in ('deq', 'dne', 'leq', 'lne', 'two', 'source', 'signed', 'abi')
 for shift in range(32)
}
expected_cases = len(forms) * sum(len(inputs) for inputs in values.values()) * 16
for profile,compiler,enabled in profiles:
 with (r/(profile+'.o')).open('rb') as f:
  elf=ELFFile(f);code=elf.get_section_by_name('.text').data()
  symbols={s.name:s for s in elf.get_section_by_name('.symtab').iter_symbols() if s.name.startswith('lsr_')}
  assert set(symbols) == expected_functions | {'lsr_negative_spin'}, ('missing or unexpected fixture functions', profile, sorted(expected_functions - set(symbols)), sorted(set(symbols) - expected_functions - {'lsr_negative_spin'}))
  assert all(s['st_info']['type'] == 'STT_FUNC' for s in symbols.values()), ('fixture must be a function symbol', profile)
  syms={name:s['st_value']&~1 for name,s in symbols.items()}
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB);base=0x1000000;stop=base+0xf000;data=0x2000000;sp=0x3000ff0
 assert len(code)<0xf000;mu.mem_map(base,0x10000);mu.mem_write(base,code);mu.mem_map(data,0x1000);mu.mem_map(0x3000000,0x1000)
 def execute(offset,x,nzcv):
  mu.reg_write(UC_ARM_REG_CPSR,(nzcv<<28)|0x30)
  for reg,val in [(UC_ARM_REG_R0,x),(UC_ARM_REG_R1,0x11111111),(UC_ARM_REG_R2,data),(UC_ARM_REG_R3,0x33333333^x),(UC_ARM_REG_R12,0xcccccccc^x)]:mu.reg_write(reg,val)
  saved={reg:((0x44440000+i*0x1111)^x)&0xffffffff for i,reg in enumerate(regs)}
  for reg,val in saved.items():mu.reg_write(reg,val)
  mu.reg_write(UC_ARM_REG_SP,sp);mu.reg_write(UC_ARM_REG_LR,stop|1);mu.mem_write(data,b'\xa5'*4)
  mu.emu_start((base+offset)|1,stop,count=1000)
  state=dict(returned=mu.reg_read(UC_ARM_REG_PC)==stop,sp_restored=mu.reg_read(UC_ARM_REG_SP)==sp,callee_saved=all(mu.reg_read(reg)==val for reg,val in saved.items()))
  return mu.reg_read(UC_ARM_REG_R0),int.from_bytes(mu.mem_read(data,4),'little'),state
 tested=0;failures=[]
 for name,offset in syms.items():
  match=re.fullmatch(r'lsr_(deq|dne|leq|lne|two|source|signed|abi)_(\d+)',name)
  if not match:continue
  form,k=match[1],int(match[2])
  for x in values[k]:
   for flags in range(16):
    got,mem,state=execute(offset,x,flags);want,wmem=expected(form,x,k);tested+=1
    if not all(state.values()) or got!=want or mem!=wmem:
     if len(failures)<12:failures.append(dict(function=name,x=hex(x),nzcv=flags,got=got,want=want,memory=hex(mem),expected_memory=hex(wmem),state=state))
 got,mem,state=execute(syms['lsr_negative_spin'],1,0);negative=got==1 and not state['returned']
 if not negative:failures.append(dict(negative_control_failed=True,got=got,state=state))
 assert tested == expected_cases and tested > 0, ('incomplete fixture execution', profile, tested, expected_cases)
 result=dict(profile=profile,option_enabled=enabled,cases=tested,functions=len(expected_functions),shifts='0(excluded encoding),1..31',negative_control_rejected=negative,failures=failures,passed=not failures,compiler_sha256=hashlib.sha256(compiler.read_bytes()).hexdigest())
 results.append(result);print(profile,tested,'PASS' if not failures else 'FAIL',failures[:1],flush=True)
(r/'fixture-results.json').write_text(json.dumps(results,indent=2));assert all(row['passed'] for row in results)
