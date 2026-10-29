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

fixtures = Path(__file__).resolve().parents[1]/'tests/fixtures/sdk_flags'
for part in ['a', 'b']:
    (r/('align_'+part+'.c')).write_bytes((fixtures/('align_'+part+'.c')).read_bytes())
profiles = ([('accepted', reference, False)] if reference else []) + [('new_off', cc, False), ('halfword_on', cc, True)]
def run(args):
 p=subprocess.run([str(a) for a in args],capture_output=True,text=True)
 with (r/'alignment-commands.log').open('a') as log:log.write(repr(args)+'\n'+p.stdout+p.stderr+'\n')
 assert not p.returncode,p.stdout+p.stderr
for part in ['a','b']:run(['arm-none-eabi-cpp','-undef','-nostdinc',r/('align_'+part+'.c'),'-o',r/('align_'+part+'.i')])
results=[];rng=random.Random(0x414c4947);values=[0,1,2,126,127,128,129,0x7fffffff,0x80000000,0xffffffff]+[rng.getrandbits(32) for _ in range(64)]
for profile,compiler,enabled in profiles:
 flags=['-O2','-mthumb-interwork','-fprologue-bugfix','-ftst']+(['-flsr-flags','-fthumb-halfword-align'] if enabled else [])
 objects=[];relocations=[]
 for part in ['a','b']:
  stem=r/(profile+'_'+part);run([compiler,*flags,'-o',stem.with_suffix('.s'),r/('align_'+part+'.i')]);run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',stem.with_suffix('.o'),stem.with_suffix('.s')]);objects.append(stem.with_suffix('.o'))
  if profile=='new_off' and reference:assert (r/('accepted_'+part+'.o')).read_bytes()==objects[-1].read_bytes(),'off object changed'
  with objects[-1].open('rb') as f:
   elf=ELFFile(f);table=elf.get_section_by_name('.symtab')
   for section in elf.iter_sections():
    if section.name=='.rel.text':
     for relocation in section.iter_relocations():relocations.append((relocation['r_info_type'],relocation['r_offset'],table.get_symbol(relocation['r_info_sym']).name))
 calls=[x for x in relocations if x[0]==10];pools=[x for x in relocations if x[0]==2 and x[2]=='shared_words'];assert calls and pools;assert all(x[1]%4==0 for x in pools)
 ld=r/(profile+'.ld');ld.write_text('SECTIONS { . = 0x01000000; .text : { *(.text) } .rodata ALIGN(4) : { *(.rodata) } /DISCARD/ : { *(.data) *(.bss) *(.ARM.attributes) *(.comment) } }')
 image=r/(profile+'.elf');binary=r/(profile+'.bin');run(['arm-none-eabi-ld','-T',ld,'-o',image,*objects]);run(['arm-none-eabi-objcopy','-O','binary',image,binary])
 with image.open('rb') as f:
  elf=ELFFile(f);syms={s.name:s['st_value']&~1 for s in elf.get_section_by_name('.symtab').iter_symbols() if s['st_info']['type']=='STT_FUNC'}
 offsets={name:hex(syms[name]&3) for name in ['half_call','half_branch','half_literal']}
 if enabled:assert all(syms[name]%4==2 for name in offsets),offsets
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB);base=0x1000000;stop=base+0xf000;sp=0x3000ff0;mu.mem_map(base,0x10000);mu.mem_write(base,binary.read_bytes());mu.mem_map(0x3000000,0x1000)
 regs=[UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11]
 def execute(name,x,nzcv):
  mu.reg_write(UC_ARM_REG_CPSR,(nzcv<<28)|0x30)
  for reg,val in [(UC_ARM_REG_R0,x),(UC_ARM_REG_R1,0x11111111),(UC_ARM_REG_R2,0x22222222),(UC_ARM_REG_R3,0x33333333^x),(UC_ARM_REG_R12,0xcccccccc^x)]:mu.reg_write(reg,val)
  saved={reg:((0x44440000+i*0x1111)^x)&0xffffffff for i,reg in enumerate(regs)}
  for reg,val in saved.items():mu.reg_write(reg,val)
  mu.reg_write(UC_ARM_REG_SP,sp);mu.reg_write(UC_ARM_REG_LR,stop|1);mu.emu_start(syms[name]|1,stop,count=1000)
  state=dict(returned=mu.reg_read(UC_ARM_REG_PC)==stop,sp_restored=mu.reg_read(UC_ARM_REG_SP)==sp,callee_saved=all(mu.reg_read(reg)==val for reg,val in saved.items()))
  return mu.reg_read(UC_ARM_REG_R0),state
 tested=0;failures=[]
 for name in ['pad_a0','pad_a1','pad_b','half_literal','half_call','half_branch']:
  for x in values:
   for nzcv in range(16):
    v=(x+0x89abcdef)&0xffffffff;want=x if name.startswith('pad_') else v
    if name=='half_call':want=(v^0x13579bdf) if x&1 else ((v+0x2468ace0)&0xffffffff)
    if name=='half_branch':want=v if x<128 else ((x+1+0x89abcdef)&0xffffffff)
    got,state=execute(name,x,nzcv);tested+=1
    if got!=want or not all(state.values()):
     if len(failures)<8:failures.append(dict(function=name,x=hex(x),nzcv=nzcv,got=hex(got),want=hex(want),state=state))
 got,state=execute('half_negative_spin',1,0);negative=got==1 and not state['returned'];assert negative
 results.append(dict(profile=profile,cases=tested,function_offsets_mod4=offsets,branch_call_relocations=calls,data_pool_relocations=pools,negative_rejected=negative,failures=failures,passed=not failures));print(profile,tested,offsets,'PASS' if not failures else 'FAIL',failures[:1],flush=True)
(r/'alignment-results.json').write_text(json.dumps(results,indent=2));assert all(row['passed'] for row in results)
