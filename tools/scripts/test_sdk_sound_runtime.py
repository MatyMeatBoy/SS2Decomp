#!/usr/bin/env python3
"""Execute SoundMain C and original kernel with callbacks, clocks and ABI checks."""
from pathlib import Path
import argparse, sys, os, tempfile, shutil
ROOT = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--deps', type=Path)
parser.add_argument('--out', type=Path, default=ROOT/'build/sdk_sound_tests')
options = parser.parse_args()
if options.deps: sys.path.insert(0, str(options.deps.resolve()))
# This fixture exercises the compiler and flags selected by the normal Makefile.
# Independent option profiles are covered by the SUB/literal fixtures.
options.out.mkdir(parents=True, exist_ok=True)
r = Path(tempfile.mkdtemp(prefix='run_', dir=options.out.resolve()))
fixture = ROOT/'tools/tests/fixtures/sdk_sound'
os.chdir(ROOT)
shutil.copyfile(fixture/'sound_callbacks.c',r/'callbacks.c')
from pathlib import Path
import os,sys,subprocess,struct,json
from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB,UC_HOOK_CODE,UC_HOOK_MEM_READ
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile
def run(args):
 p=subprocess.run(list(map(str,args)),capture_output=True,text=True);assert not p.returncode,p.stdout+p.stderr
run(['arm-none-eabi-cpp','-undef','-nostdinc',r/'callbacks.c','-o',r/'callbacks.i'])
run(['tools/agbcc/bin/agbcc','-O2','-mthumb-interwork','-o',r/'callbacks.s',r/'callbacks.i'])
run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',r/'callbacks.o',r/'callbacks.s'])
(r/'callbacks.ld').write_text('SECTIONS { . = 0x080F0000; .text : { *(.text) } }')
(r/'entry.s').write_text('.syntax unified\n.thumb\n.global SoundMain\n.type SoundMain,%function\n.thumb_set SoundMain,0x080B64E9\n')
run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',r/'entry.o',r/'entry.s'])
run(['arm-none-eabi-ld','-T',r/'callbacks.ld','-o',r/'callbacks.elf',r/'callbacks.o',r/'entry.o','-L','tools/agbcc/lib','-lgcc'])
def image(path):
 with Path(path).open('rb')as f:
  e=ELFFile(f);s=e.get_section_by_name('.text');return s['sh_addr'],s.data(),{s.name:s['st_value']for s in e.get_section_by_name('.symtab').iter_symbols()}
cbbase,cb,syms=image(r/'callbacks.elf')
base=0x80b64e8;info=0x2000000;sp=0x3007000;stop=0x80ff000;ram=0x3000e3c;ident=0x68736d53
regs=[UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11]
saved=[0x12340000+i*0x10101 for i in range(8)]
def word(data,off,val):struct.pack_into('<I',data,off,val&0xffffffff)
def execute(code,case,nzcv,negative=False):
 samples,counter,reverb,head,lines,vcount,chans,magic=case
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB)
 for addr,size in [(0x8000000,0x100000),(0x2000000,0x10000),(0x3000000,0x8000),(0x4000000,0x1000)]:mu.mem_map(addr,size)
 mu.mem_write(base,code);mu.mem_write(cbbase,cb);mu.mem_write(ram,code[132:]);mu.mem_write(0x3007ff0,struct.pack('<I',info))
 data=bytearray(0x1000);word(data,0,magic);data[4]=counter;data[5]=reverb;data[6]=chans;data[11]=1584//samples;data[12]=lines;word(data,16,samples)
 word(data,32,0 if head==0 else syms['head_plain'if head==1 else'head_reenter']);word(data,36,0x2004000);word(data,40,syms['cgb_callback'])
 data[0x350:0xfb0]=bytes((i*37+11)&255 for i in range(0xc60));mu.mem_write(info,bytes(data));mu.mem_write(0x4000006,bytes([vcount]))
 mu.reg_write(UC_ARM_REG_CPSR,(nzcv<<28)|0x3f);mu.reg_write(UC_ARM_REG_SP,sp);mu.reg_write(UC_ARM_REG_LR,stop|1);mu.reg_write(UC_ARM_REG_R0,info)
 for reg,value in zip(regs,saved):mu.reg_write(reg,value)
 reads=[];tails=[]
 def clock(mu,address,size,user):mu.mem_write(0x4000006,bytes([(vcount+1)%228]))
 def read(mu,access,address,size,value,user):reads.append((mu.reg_read(UC_ARM_REG_PC),size,bytes(mu.mem_read(address,size)).hex()))
 def tail(mu,address,size,user):
  frame=struct.unpack('<16I',bytes(mu.mem_read(mu.reg_read(UC_ARM_REG_SP),64)));tails.append(frame)
  assert mu.reg_read(UC_ARM_REG_SP)==sp-64
  assert frame[5]==(0 if lines==0 else lines+vcount+(228 if vcount<160 else 0)),frame
  assert frame[6]==info and list(frame[7:11])==saved[4:] and list(frame[11:15])==saved[:4] and frame[15]==stop|1,frame
  out=info+0x350+(0 if counter<=1 else (1584//samples-(counter-1))*samples)
  assert frame[2]==out and mu.reg_read(UC_ARM_REG_R5)==out
  assert mu.reg_read(UC_ARM_REG_R8)==samples and mu.reg_read(UC_ARM_REG_R6)==1584
 mu.hook_add(UC_HOOK_CODE,clock,begin=syms['cgb_callback']&~1,end=syms['cgb_callback']&~1)
 mu.hook_add(UC_HOOK_CODE,tail,begin=ram,end=ram)
 mu.hook_add(UC_HOOK_MEM_READ,read,begin=0x4000006,end=0x4000006)
 mu.emu_start(base|1,stop,count=50000)
 assert mu.reg_read(UC_ARM_REG_PC)==stop,'did not return'
 assert mu.reg_read(UC_ARM_REG_SP)==sp,'stack not restored'
 assert [mu.reg_read(x)for x in regs]==saved,'callee register changed'
 valid=magic==ident
 assert len(tails)==int(valid),'missing SoundMain algorithm'
 prefix=[x for x in reads if base<=x[0]<base+108]
 assert len(prefix)==int(valid and lines!=0) and all(x[1]==1 for x in prefix),prefix
 return bytes(mu.mem_read(info,0x1000)),bytes(mu.mem_read(0x2004000,0x80)),reads,tails
cases=set()
for samples in [96,132,176]:
 for counter in [0,1,2,1584//samples]:
  for reverb in [0,64]:
   for head in range(3):cases.add((samples,counter,reverb,head,[0,1,7,255][counter%4],[0,159,160,227][head],3,ident))
for head in range(3):
 for lines in [0,1,7,255]:
  for vc in [0,159,160,227]:
   for rev in [0,64]:cases.add((132,2,rev,head,lines,vc,3,ident))
for magic in [0,ident-1,ident+1,0xffffffff]:cases.add((132,2,64,2,7,159,3,magic))
build=Path(os.path.relpath(r,ROOT)).as_posix()
run(['make','-j1','BUILD='+build,build+'/src/m4a_1_sound.o'])
(r/'oracle.s').write_text('.include "asm/macros.inc"\n.syntax unified\n.text\n'+(fixture/'SoundMain.s').read_text()+(fixture/'SoundMainRAM.s').read_text())
run(['arm-none-eabi-as','-mcpu=arm7tdmi','-I',ROOT,'-o',r/'oracle.o',r/'oracle.s'])
(r/'canonical.ld').write_text('gUnk_03007FF0 = 0x03007FF0; SoundMainRAM_Buffer = 0x03000E3C; SECTIONS { . = 0x080B64E8; .text : { *(.text) } /DISCARD/ : { *(.ARM.attributes) *(.comment) } }')
for name,obj in [('reference',r/'oracle.o'),('candidate',r/'src/m4a_1_sound.o')]:
 run(['arm-none-eabi-ld','--no-undefined','-T',r/'canonical.ld','-o',r/(name+'.elf'),obj])
_,original,_=image(r/'reference.elf');_,candidate,_=image(r/'candidate.elf')
assert original==candidate and len(original)==1064
assert len(cases)==166
tested=0
for case in sorted(cases):
 for flags in range(16):
  a=execute(original,case,flags);b=execute(candidate,case,flags);assert a==b,(case,flags);tested+=2
for name,body in [('spin','for(;;){}'),('empty','')]:
 (r/(name+'.c')).write_text('void SoundMain(void){'+body+'}')
 run(['tools/agbcc/bin/agbcc','-O2','-mthumb-interwork','-o',r/(name+'.s'),r/(name+'.c')]);run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',r/(name+'.o'),r/(name+'.s')])
 (r/'negative.ld').write_text('SECTIONS { . = 0x080B64E8; .text : { *(.text) } }');run(['arm-none-eabi-ld','-T',r/'negative.ld','-o',r/(name+'.elf'),r/(name+'.o')]);_,bad,_=image(r/(name+'.elf'))
 try:execute(bad,(132,2,64,2,7,159,3,ident),0,True)
 except AssertionError:pass
 else:raise AssertionError('negative accepted: '+name)
result=dict(cases=len(cases),executions=tested,negative_controls=2,full_kernel=True,all_nzcv=True,return_sp_callee=True,volatile_vcount=True)
(r/'runtime-results.json').write_text(json.dumps(result,indent=2));print(result)
