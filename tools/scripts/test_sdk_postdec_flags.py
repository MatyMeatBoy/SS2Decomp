from sdk_postdec_common import setup, ROOT
r,cc,options=setup('flags')
from pathlib import Path
import sys,subprocess,json,re,struct,random

from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile
def run(command):
 p=subprocess.run(list(map(str,command)),capture_output=True,text=True)
 with(r/'fixture-commands.log').open('a')as f:f.write(repr(command)+'\n'+p.stdout+p.stderr)
 assert not p.returncode,p.stdout+p.stderr
run(['arm-none-eabi-cpp','-P','-undef','-nostdinc',r/'fixtures.c','-o',r/'fixtures.i'])
spec=json.loads((r/'fixture-spec.json').read_text());names=set(spec['functions'])
expected=set('sgt sle seq sne sge slt ugt ule ueq une uge ult new_count live_return live_memory live_global live_asm new_only different_dest different_source wrong_const call_gap callback'.split())
assert names==expected and set(spec['positive'])=={'sgt','sle','ugt','ule'}
(r/'fixtures.ld').write_text('SECTIONS { . = 0x01000000; .text : { *(.text) } . = 0x02008000; .data : { *(.data) } .bss : { *(.bss) } }')
reference=Path('tools/agbcc_sdk_sound/bin/agbcc');reference=reference if reference.is_file() else reference.with_suffix('.exe')
profiles={};static={}
for name,cc,on in [('accepted',reference,False),('off',cc,False),('on',cc,True)]:
 stem=r/('fixture-'+name)
 run([cc,'-O2','-mthumb-interwork','-fprologue-bugfix',*(['-fthumb-postdec-flags']if on else[]),r/'fixtures.i','-o',stem.with_suffix('.s')])
 run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',stem.with_suffix('.o'),stem.with_suffix('.s')])
 if name=='off':assert stem.with_suffix('.o').read_bytes()==(r/'fixture-accepted.o').read_bytes()
 asm=stem.with_suffix('.s').read_text();static[name]={}
 for fn in spec['positive']:
  body=asm.split(fn+':\n')[1].split('.Lfe')[0];static[name][fn]=len(re.findall(r'\bcmp\s',body))
  assert static[name][fn]==(0 if on else 1),(name,fn,body)
 run(['arm-none-eabi-ld','--no-undefined','-T',r/'fixtures.ld','-o',stem.with_suffix('.elf'),stem.with_suffix('.o')])
 with stem.with_suffix('.elf').open('rb')as f:
  e=ELFFile(f);code=e.get_section_by_name('.text').data();symbols={x.name:x['st_value']for x in e.get_section_by_name('.symtab').iter_symbols()}
 funcs=set()
 with stem.with_suffix('.elf').open('rb')as f:funcs={x.name for x in ELFFile(f).get_section_by_name('.symtab').iter_symbols()if x['st_info']['type']=='STT_FUNC'}
 assert funcs==names,(name,funcs^names)
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB)
 for address,size in [(0x01000000,0x10000),(0x02000000,0x10000),(0x03000000,0x10000)]:mu.mem_map(address,size)
 mu.mem_write(0x01000000,code);profiles[name]=(mu,symbols)
regs=[UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3,UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11,UC_ARM_REG_R12]
def signed(v):return v if v<0x80000000 else v-0x100000000
def model(fn,value,initial):
 result=list(initial);memory=0;nxt=(value-1)&0xffffffff
 if fn=='callback':return result,memory
 result[1]=nxt;condition=signed(value)>1
 if fn[:1]in ['s','u']and len(fn)==3:
  a=signed(value)if fn[0]=='s'else value;op=fn[1:]
  condition={'gt':a>1,'le':a<=1,'eq':a==1,'ne':a!=1,'ge':a>=1,'lt':a<1}[op];result[2]=7 if condition else 9
 elif fn=='new_count':result[0]=7 if condition else 9;result[2]=11 if signed(nxt)>0 else 13
 elif fn=='live_return':result[0]=value;result[2]=7 if condition else 9
 elif fn=='live_memory':memory=value;result[0]=7 if condition else 9
 elif fn in ['live_global','live_asm']:result[2]=value;result[0]=7 if condition else 9
 elif fn=='new_only':result[2]=7 if signed(nxt)>1 else 9
 elif fn=='different_dest':result[1]=value;result[2]=nxt;result[0]=7 if condition else 9
 elif fn=='different_source':result[1]=(initial[3]-1)&0xffffffff;result[0]=7 if condition else 9
 elif fn=='wrong_const':result[2]=7 if signed(value)>2 else 9
 elif fn=='call_gap':result[0]=7 if condition else 9
 else:raise AssertionError(fn)
 return result,memory
def execute(profile,fn,value,flags,retbit):
 mu,symbols=profiles[profile];initial=[(value^((i+1)*0x11111111))&0xffffffff for i in range(13)];initial[1]=value
 mu.reg_write(UC_ARM_REG_CPSR,(flags<<28)|0x3f)
 for reg,val in zip(regs,initial):mu.reg_write(reg,val)
 mu.reg_write(UC_ARM_REG_SP,0x0300fff0);mu.reg_write(UC_ARM_REG_LR,0x0100f000|retbit)
 mu.mem_write(symbols['observed'],bytes(4))
 mu.emu_start(symbols[fn],0x0100f000,count=1000)
 assert mu.reg_read(UC_ARM_REG_PC)==0x0100f000 and mu.reg_read(UC_ARM_REG_SP)==0x0300fff0 and mu.reg_read(UC_ARM_REG_LR)==0x0100f000|retbit,(profile,fn,'return')
 result=[mu.reg_read(reg)for reg in regs];memory=int.from_bytes(mu.mem_read(symbols['observed'],4),'little')
 expected,expected_memory=model(fn,value,initial)
 assert result==expected and memory==expected_memory,(profile,fn,hex(value),result,expected,memory,expected_memory)
 return result,memory,mu.reg_read(UC_ARM_REG_CPSR)
rng=random.Random(0x504f5354);values=[0,1,2,3,7,0x7f,0xff,0x100,0xffff,0x10000,0x7ffffffe,0x7fffffff,0x80000000,0x80000001,0xfffffffe,0xffffffff]+[rng.getrandbits(32)for _ in range(32)]
tested=0
for fn in sorted(names):
 for value in values:
  for flags in range(16):
   for retbit in [0,1]:
    reference=execute('accepted',fn,value,flags,retbit)
    assert execute('off',fn,value,flags,retbit)==reference
    assert execute('on',fn,value,flags,retbit)==reference,(fn,hex(value),flags,retbit)
    tested+=1
assert tested==35328,(tested,len(names),len(values))
result=dict(functions=23,cases_per_profile=tested,profiles=3,total_executions=tested*3,independent_c_model=True,all_registers=True,all_nzcv=True,pc_sp_lr=True,callee_saved=True,off_object_identical=True,positive_cmp_counts=static)
(r/'fixture-results.json').write_text(json.dumps(result,indent=2));print(result)
