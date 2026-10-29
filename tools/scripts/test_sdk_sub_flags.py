#!/usr/bin/env python3
"""All NZCV, condition, liveness and ABI cases for generic SDK SUB reuse."""
from pathlib import Path
import argparse, sys, os, tempfile, shutil
ROOT = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--compiler', type=Path, default=ROOT/'tools/agbcc_sdk_sound/bin/agbcc')
parser.add_argument('--reference-compiler', type=Path, default=ROOT/'tools/agbcc_sdk_flags/bin/agbcc')
parser.add_argument('--deps', type=Path)
parser.add_argument('--out', type=Path, default=ROOT/'build/sdk_sound_tests')
parser.add_argument('--combined', action='store_true', help='also enable the independent SUB option')
options = parser.parse_args()
if options.deps: sys.path.insert(0, str(options.deps.resolve()))
def executable(p):
    p = p.resolve()
    return p.with_suffix('.exe') if not p.is_file() and p.with_suffix('.exe').is_file() else p
cc = executable(options.compiler)
options.out.mkdir(parents=True, exist_ok=True)
r = Path(tempfile.mkdtemp(prefix='run_', dir=options.out.resolve()))
fixture = ROOT/'tools/tests/fixtures/sdk_sound'
os.chdir(ROOT)
shutil.copyfile(fixture/'sub_conditions.c',r/'fixtures.c')
shutil.copyfile(fixture/'sub_names.txt',r/'expected-names.txt')
shutil.copyfile(fixture/'sub_zero.s',r/'zero-semantics.s')
from pathlib import Path
import sys,os,subprocess,json,random,re,hashlib
from elftools.elf.elffile import ELFFile
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB
from unicorn.arm_const import *
profiles=[('accepted',executable(options.reference_compiler),False),('off',cc,False),('literal',cc,False),('sub',cc,True),('both',cc,True)]
names=set((r/'expected-names.txt').read_text().splitlines());assert len(names)==105
rng=random.Random(0x535542);values={k:sorted(set(list(range(10))+[0x7ffffffe,0x7fffffff,0x80000000,0x80000001,0xfffffffe,0xffffffff]+[rng.getrandbits(32)for _ in range(32)]))for k in range(8)}
def signed(x):return x if x<0x80000000 else x-0x100000000
def flags(a,b):
 d=(a-b)&0xffffffff;return ((d>>31)<<3)|((d==0)<<2)|((a>=b)<<1)|bool((a^b)&(a^d)&0x80000000)
def result(form,a,k,d):
 if form=='flags':return 0x22222222
 if form=='same':return int(d<=k)
 if form=='multiple':return int(a>k)+2*int(a==k)+4*int(signed(a)<k)
 return int({'eq':a==k,'ne':a!=k,'lt':signed(a)<k,'le':signed(a)<=k,'gt':signed(a)>k,'ge':signed(a)>=k,'lo':a<k,'ls':a<=k,'hi':a>k,'hs':a>=k}[form])
def run(args):
 p=subprocess.run(list(map(str,args)),capture_output=True,text=True);assert not p.returncode,p.stdout+p.stderr
run(['arm-none-eabi-cpp','-undef','-nostdinc','-std=gnu17',r/'fixtures.c','-o',r/'fixtures.i'])
reports=[]
for profile,compiler,on in profiles:
 stem=r/profile;run([compiler,'-O2','-mthumb-interwork','-fprologue-bugfix','-ftst',*(['-fsub-compare-flags']if on else []),*(['-fthumb-text-literals']if profile in ['literal','both']else []),'-o',stem.with_suffix('.s'),r/'fixtures.i']);run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',stem.with_suffix('.o'),stem.with_suffix('.s')])
 if profile in ['off','literal']:assert stem.with_suffix('.o').read_bytes()==(r/'accepted.o').read_bytes()
 if profile=='both':assert stem.with_suffix('.o').read_bytes()==(r/'sub.o').read_bytes()
 assembly=stem.with_suffix('.s').read_text()
 for immediate in range(1,8):
  body=re.search(r'subf_flags_%d:\n(.*?)\.Lfe\d+:'%immediate,assembly,re.S).group(1)
  assert re.search(r'\bsub\s+r0, r1, #%d\b'%immediate,body),body
  compare=re.search(r'\bcmp\s+r1, #%d\b'%immediate,body)
  assert bool(compare)==(not on),(profile,immediate,'option did not change eligible sequence',body)
 zero=re.search(r'subf_flags_0:\n(.*?)\.Lfe\d+:',assembly,re.S).group(1)
 assert re.search(r'\bcmp\s+r1, #0\b',zero),'zero C should remain ADD0+CMP'
 same=re.search(r'subf_same_1:\n(.*?)\.Lfe\d+:',assembly,re.S).group(1)
 assert re.search(r'\bcmp\s+r0, #1\b',same),'D==S must retain its comparison'

 with stem.with_suffix('.o').open('rb')as f:
  e=ELFFile(f);code=e.get_section_by_name('.text').data();syms={s.name:s['st_value']&~1 for s in e.get_section_by_name('.symtab').iter_symbols()if s.name.startswith('subf_')}
 assert set(syms)==names,(set(syms)^names)
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB);base=0x1000000;stop=base+0xf000;sp=0x3000ff0;mu.mem_map(base,0x10000);mu.mem_write(base,code);mu.mem_map(0x3000000,0x1000)
 savedregs=[UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11]
 def execute(name,a,nzcv):
  mu.reg_write(UC_ARM_REG_CPSR,(nzcv<<28)|0x30)
  for reg,v in [(UC_ARM_REG_R0,a),(UC_ARM_REG_R1,a),(UC_ARM_REG_R2,0x22222222),(UC_ARM_REG_R3,0x33333333),(UC_ARM_REG_R12,0xcccccccc)]:mu.reg_write(reg,v)
  saved={reg:(0x44440000+i*0x1111)^a for i,reg in enumerate(savedregs)}
  for reg,v in saved.items():mu.reg_write(reg,v)
  mu.reg_write(UC_ARM_REG_SP,sp);mu.reg_write(UC_ARM_REG_LR,stop|1);mu.emu_start((base+syms[name])|1,stop,count=1000)
  good=mu.reg_read(UC_ARM_REG_PC)==stop and mu.reg_read(UC_ARM_REG_SP)==sp and all(mu.reg_read(reg)==v for reg,v in saved.items())
  return mu.reg_read(UC_ARM_REG_R0),mu.reg_read(UC_ARM_REG_R1),mu.reg_read(UC_ARM_REG_R2),mu.reg_read(UC_ARM_REG_CPSR)>>28,good
 tested=0
 for name in sorted(names-{'subf_negative'}):
  form,k=re.fullmatch(r'subf_(.+)_(\d+)',name).groups();k=int(k)
  for a in values[k]:
   for nzcv in range(16):
    d,source,out,gotflags,good=execute(name,a,nzcv);wantd=(a-k)&0xffffffff
    assert good and d==wantd and source==a and out==result(form,a,k,wantd),(profile,name,hex(a),nzcv,d,source,out,good)
    if form=='flags':assert gotflags==flags(a,k),(profile,name,a,nzcv,gotflags,flags(a,k))
    tested+=1
 assert tested==sum(13*len(v)*16 for v in values.values()) and tested>0
 d,source,out,gotflags,good=execute('subf_negative',0,0);assert d==0 and not good
 report=dict(profile=profile,functions=len(names),cases=tested,negative_rejected=True,passed=True,sha256=hashlib.sha256(compiler.read_bytes()).hexdigest());reports.append(report);print(report,flush=True)
(r/'results.json').write_text(json.dumps(reports,indent=2))
# Independent ISA semantic fixture: actual SUB immediate zero, which C folds to
# a move before this peephole. This is test ASM, never implementation source.
run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',r/'zero-semantics.o',r/'zero-semantics.s'])
with (r/'zero-semantics.o').open('rb')as f:
 e=ELFFile(f);code=e.get_section_by_name('.text').data();syms={s.name:s['st_value']&~1 for s in e.get_section_by_name('.symtab').iter_symbols()if s.name.startswith('zero_')}
assert set(syms)=={'zero_original','zero_fused'}
mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB);mu.mem_map(base,0x10000);mu.mem_write(base,code);mu.mem_map(0x3000000,0x1000)
zero_cases=0
for name in syms:
 for a in values[0]:
  for nzcv in range(16):
   d,source,out,gotflags,good=execute(name,a,nzcv)
   assert good and d==a and source==a and gotflags==flags(a,0),(name,a,nzcv,gotflags)
   zero_cases+=1
print('SUB immediate-zero instruction semantics',zero_cases,'PASS')
(r/'zero-results.json').write_text(json.dumps(dict(cases=zero_cases,passed=True,note='C zero remains ADD0+CMP; separate actual SUB0 ISA oracle'),indent=2))
