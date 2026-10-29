from sdk_btm_common import setup, ROOT
r, cc, options = setup('target')
import argparse
from pathlib import Path
import sys,os,json,random
sys.path.insert(0,'tools/scripts');import decomp
from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile
flags=['-O2','-mthumb-interwork','-fprologue-bugfix','-fthumb-store-four']

error=decomp.compile_c(str(ROOT/'src/m4a_1_btm.c'),str(r/'register_save-on.o'),cc,flags);assert not error,error
def image(path):
 with path.open('rb')as f:
  e=ELFFile(f);assert not any(x['sh_type'] in ('SHT_REL','SHT_RELA') and x['sh_size'] for x in e.iter_sections());return e.get_section_by_name('.text').data()
(r/'original.s').write_text('.include "asm/macros.inc"\n.syntax unified\n.text\n'+(r/'SoundMainBTM.s').read_text())
result=decomp.run(['arm-none-eabi-as','-mcpu=arm7tdmi','-I',str(ROOT),'-o',str(r/'original.o'),str(r/'original.s')]);assert not result.returncode,result.stderr
from source_index import functions
with (r/'register_save-on.o').open('rb') as stream:
 elf=ELFFile(stream)
 symbols={x.name:x for x in elf.get_section_by_name('.symtab').iter_symbols()}
 assert symbols['SoundMainBTM']['st_size']==20
 assert symbols['SoundMainBTM']['st_value']==1 and symbols['SoundMainBTM']['st_info']['type']=='STT_FUNC'
 assert not any(x['sh_type'] in ('SHT_REL','SHT_RELA') and x['sh_size'] for x in elf.iter_sections())
assert {x['name'] for x in functions((r/'register_save-on.i').read_text())} == {'SoundMainBTM'}
original=image(r/'original.o');candidate=image(r/'register_save-on.o');assert original==candidate and len(candidate)==24
registers=[UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3,UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11,UC_ARM_REG_R12]
rng=random.Random(0x6910);states=[[rng.getrandbits(32)for _ in registers]for _ in range(64)]
def machine(code):
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB)
 for address,size in [(0x08000000,0x100000),(0x02000000,0x10000),(0x03000000,0x8000),(0xfffff000,0x1000),(0,0x1000)]:mu.mem_map(address,size)
 mu.mem_write(0x080b6910,code);return mu
def wrap_write(mu,address,data):
 split=min(len(data),0x100000000-address);mu.mem_write(address,data[:split])
 if split<len(data):mu.mem_write(0,data[split:])
def wrap_read(mu,address,size):
 split=min(size,0x100000000-address);return bytes(mu.mem_read(address,split))+(bytes(mu.mem_read(0,size-split))if split<size else b'')
def execute(mu,base,state,flags):
 initial=list(state);initial[0]=base
 mu.reg_write(UC_ARM_REG_CPSR,(flags<<28)|0x3f)
 for reg,value in zip(registers,initial):mu.reg_write(reg,value)
 mu.reg_write(UC_ARM_REG_SP,0x03007000);mu.reg_write(UC_ARM_REG_LR,0x080ff001)
 wrap_write(mu,(base-16)&0xffffffff,b'\xa5'*96)
 mu.emu_start(0x080b6911,0x080ff000,count=1000)
 expected=list(initial);expected[0]=(base+64)&0xffffffff;expected[1:4]=[0,0,0];expected[12]=initial[4]
 result=dict(returned=mu.reg_read(UC_ARM_REG_PC)==0x080ff000,sp=mu.reg_read(UC_ARM_REG_SP)==0x03007000,lr=mu.reg_read(UC_ARM_REG_LR)==0x080ff001,registers=[mu.reg_read(x)for x in registers]==expected,nzcv=mu.reg_read(UC_ARM_REG_CPSR)>>28==((flags&3)|4),memory=wrap_read(mu,(base-16)&0xffffffff,96)==b'\xa5'*16+b'\0'*64+b'\xa5'*16)
 return result,mu.reg_read(UC_ARM_REG_R0)
reports=[]
for name,code in [('original',original),('candidate',candidate)]:
 mu=machine(code);tested=0
 for base in [0x02001000,0x03001000,0xffffffc0]:
  for state in states:
   for flags_value in range(16):
    result,_=execute(mu,base,state,flags_value);assert all(result.values()),(name,base,flags_value,result);tested+=1
 reports.append(dict(profile=name,cases=tested,all_nzcv_exact=True,all_registers=True,return_sp_lr=True,wrap32=True,passed=True))
source=(ROOT/'src/m4a_1_btm.c').read_text();assert source.count('z4=0;')==1
(r/'negative.c').write_text(source.replace('z4=0;','z4=1;'));error=decomp.compile_c(str(r/'negative.c'),str(r/'negative.o'),cc,flags);assert not error,error
bad=image(r/'negative.o');assert bad!=original;result,pointer=execute(machine(bad),0x02001000,states[0],0);assert pointer==0x02001040 and not all(result.values())
prefix=source[:source.index('void SoundMainBTM(')]
(r/'spin.c').write_text(prefix+'void SoundMainBTM(void *soundInfo) __attribute__((naked));\nvoid SoundMainBTM(void *soundInfo){dest+=16;asm volatile("" : "+r"(dest));for(;;){}}\n');error=decomp.compile_c(str(r/'spin.c'),str(r/'spin.o'),cc,flags);assert not error,error
result,pointer=execute(machine(image(r/'spin.o')),0x02001000,states[0],0);assert pointer==0x02001040 and not result['returned']
(r/'btm-runtime-results.json').write_text(json.dumps(dict(profiles=reports,negative_controls=2),indent=2));print(reports,'two C negatives rejected')
