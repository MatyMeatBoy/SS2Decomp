from pathlib import Path
import sys,struct,random,json,subprocess

from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile
BASE=0x080b6978;STOP=0x080ff000;SP=0x03007000;TRACK=0x02004000;ANCHOR=0x080bb7e8
regs=[UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3,UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11,UC_ARM_REG_R12]
rng=random.Random(0x6978);states=[[rng.getrandbits(32)for x in regs]for _ in range(8)]
def image(path):
 with path.open('rb')as f:return ELFFile(f).get_section_by_name('.text').data()
def run(command):
 p=subprocess.run(list(map(str,command)),capture_output=True,text=True);assert not p.returncode,p.stdout+p.stderr
def machine(code):
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB)
 for a,size in [(0x08000000,0x100000),(0x02000000,0x10000),(0x03000000,0x10000),(0,0x20000),(0xfffff000,0x1000)]:mu.mem_map(a,size)
 mu.mem_write(BASE,code);return mu
profiles={}
for anchor in [ANCHOR,0x1000]:
 (r/'dynamic-external.s').write_text('.global gUnk_080BB7E8\n.set gUnk_080BB7E8,0x%x\n'%anchor)
 run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',r/'dynamic-external.o',r/'dynamic-external.s'])
 for name in ['original','reader']:
  elf=r/('dynamic-%x-%s.elf'%(anchor,name))
  run(['arm-none-eabi-ld','--no-undefined','-T',r/'canonical.ld','-o',elf,r/(name+'.o'),r/'dynamic-external.o'])
  profiles[anchor,name]=machine(image(elf))
def write_wrap(mu,address,data):
 n=min(len(data),0x100000000-address);mu.mem_write(address,data[:n])
 if n<len(data):mu.mem_write(0,data[n:])
def read_wrap(mu,address,size):
 n=min(size,0x100000000-address)
 return bytes(mu.mem_read(address,n))+(bytes(mu.mem_read(0,size-n))if n<size else b'')
def start(mu,entry,state,nzcv,retbit):
 mu.reg_write(UC_ARM_REG_CPSR,(nzcv<<28)|0x3f)
 for reg,value in zip(regs,state):mu.reg_write(reg,value)
 mu.reg_write(UC_ARM_REG_SP,SP);mu.reg_write(UC_ARM_REG_LR,STOP|retbit)
 mu.mem_write(SP-16,b'\x5a'*32)
 mu.emu_start(entry|1,STOP,count=1000)
 assert mu.reg_read(UC_ARM_REG_PC)==STOP and mu.reg_read(UC_ARM_REG_SP)==SP
 return [mu.reg_read(reg)for reg in regs],mu.reg_read(UC_ARM_REG_LR),mu.reg_read(UC_ARM_REG_CPSR)
def jump(mu,dest,values,state,flags,retbit):
 inputs=list(state);inputs[0]=dest
 words=struct.pack('<36I',*values);mu.mem_write(ANCHOR,words)
 write_wrap(mu,(dest-16)&0xffffffff,b'\xa5'*176)
 result,lr,cpsr=start(mu,BASE,inputs,flags,retbit)
 expected=list(inputs);expected[0]=(dest+144)&0xffffffff;expected[1]=0;expected[2]=ANCHOR+144;expected[3]=values[-1];expected[12]=STOP|retbit
 assert result==expected,(result,expected)
 assert lr==BASE+13 and cpsr>>28==6
 assert read_wrap(mu,(dest-16)&0xffffffff,176)==b'\xa5'*16+words+b'\xa5'*16
 assert mu.mem_read(SP-4,4)==struct.pack('<I',(dest+140)&0xffffffff)
 return result,lr,cpsr
tables=[[0]*36,[0xffffffff]*36,list(range(36)),[(0x08000001+4*i)for i in range(36)],[(i*0x01010101)&0xffffffff for i in range(36)],[(0x80000000+i)&0xffffffff for i in range(36)],[rng.getrandbits(32)for _ in range(36)],[0xaaaaaaaa if i&1 else 0x55555555 for i in range(36)]]
counts={'jump_per_profile':0,'helpers_per_profile':0}
for values in tables:
 for dest in [0x02001000,0x03001000,0xffffff70]:
  for state in states:
   for flags in range(16):
    for retbit in [0,1]:
     a=jump(profiles[ANCHOR,'original'],dest,values,state,flags,retbit)
     assert jump(profiles[ANCHOR,'reader'],dest,values,state,flags,retbit)==a
     counts['jump_per_profile']+=1
def helper(mu,anchor,entry,cursor,state,flags,retbit):
 inputs=list(state);inputs[2]=cursor
 before=struct.pack('<I',cursor)
 if entry in [0x080b69ac,0x080b69ae]:
  inputs[1]=TRACK;mu.mem_write(TRACK+0x40,before)
 if entry!=0x080b6992:
  byte=(cursor^(cursor>>8)^state[3])&255;mu.mem_write(cursor,bytes([byte]));value=byte
 else:value=state[3]
 if entry==0x080b69ac:inputs[2]=state[2]
 result,lr,cpsr=start(mu,entry,inputs,flags,retbit)
 valid=(cursor>>25)!=0 or (cursor>=anchor and (cursor>>14)==0)
 expected=list(inputs);expected[2]=cursor;expected[3]=value if valid else 0
 assert result==expected,(hex(entry),hex(cursor),result,expected)
 assert lr==STOP|retbit
 if entry in [0x080b69ac,0x080b69ae]:assert bytes(mu.mem_read(TRACK+0x40,4))==struct.pack('<I',(cursor+1)&0xffffffff)
 assert mu.mem_read(SP-4,4)==struct.pack('<I',inputs[0])
 return result,lr,cpsr
direct=[0,1,0xfff,0x1000,0x3fff,0x4000,0x10000,0x1ffff,0x1ffffff,0x2000000,0x3000000,0x8000000,0x80000000,0xffffffff]
readable=[0x800,0x1000,0x3fff,0x4000,0x02001000,0x03001000,0x08001000,0xffffffff]
for anchor in [ANCHOR,0x1000]:
 for entry in [0x080b6992,0x080b6990,0x080b69ac,0x080b69ae]:
  for cursor in direct if entry==0x080b6992 else readable:
   for state in states:
    for flags in range(16):
     for retbit in [0,1]:
      a=helper(profiles[anchor,'original'],anchor,entry,cursor,state,flags,retbit)
      assert helper(profiles[anchor,'reader'],anchor,entry,cursor,state,flags,retbit)==a
      counts['helpers_per_profile']+=1
assert counts=={'jump_per_profile':6144,'helpers_per_profile':19456},counts
report=dict(private_only=True,profiles=2,counts=counts,total_executions=2*sum(counts.values()),all_registers=True,all_nzcv=True,pc_sp_lr=True,callee_saved=True,thumb_arm_return=True,word_guards_and_wrap=True,all_five_entries=True,synthetic_low_anchor_for_guard_branch=True)
(r/'runtime-results.json').write_text(json.dumps(report,indent=2));print(report)
