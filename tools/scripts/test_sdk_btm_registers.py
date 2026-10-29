from sdk_btm_common import setup, ROOT
r, cc, options = setup('registers')
import argparse
from pathlib import Path
import os,sys,subprocess,itertools,re,json,random,struct
from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile

def run(a):
 p=subprocess.run(list(map(str,a)),capture_output=True,text=True)
 with (r/'commands.log').open('a')as f:f.write(repr(a)+'\n'+p.stdout+p.stderr)
 assert not p.returncode,p.stderr
registers=[UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3,UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11,UC_ARM_REG_R12]
rng=random.Random(0x53544d34);states=[[0]*13,[0xffffffff]*13]+[[rng.getrandbits(32)for _ in registers]for _ in range(8)]
profiles=[('accepted',(Path('tools/agbcc_sdk_flags/bin/agbcc') if Path('tools/agbcc_sdk_flags/bin/agbcc').is_file() else Path('tools/agbcc_sdk_flags/bin/agbcc.exe')),False),('off',cc,False),('on',cc,True)];reports=[]
for profile,compiler,on in profiles:
 tested=0;functions=0
 for base_reg in range(8):
  combos=list(itertools.combinations([x for x in range(8)if x!=base_reg],4));assert len(combos)==35
  stem=r/('base'+str(base_reg));source='typedef unsigned int u32;\nregister u32 *dest asm("r%d");\n'%base_reg
  for reg in range(8):
   if reg!=base_reg:source+='register volatile u32 v%d asm("r%d");\n'%(reg,reg)
  expected={}
  for combo in combos:
   name='reg_%d_'%base_reg+''.join(map(str,combo));expected[name]=combo;body=''.join('dest[%d]=v%d;'%(i,reg)for i,reg in enumerate(combo))+'dest+=4;'
   source+='void '+name+'(void) __attribute__((naked));\nvoid '+name+'(void){'+body+'}\nasm("bx lr");\n'
  stem.with_suffix('.c').write_text(source);run(['arm-none-eabi-cpp','-undef','-nostdinc',stem.with_suffix('.c'),'-o',stem.with_suffix('.i')])
  out=r/(profile+'-'+str(base_reg));run([compiler,'-O2','-mthumb-interwork','-fprologue-bugfix',*(['-fthumb-store-four']if on else []),'-o',out.with_suffix('.s'),stem.with_suffix('.i')]);run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',out.with_suffix('.o'),out.with_suffix('.s')])
  if profile=='off':assert out.with_suffix('.o').read_bytes()==(r/('accepted-'+str(base_reg)+'.o')).read_bytes()
  assembly=out.with_suffix('.s').read_text()
  for name in expected:
   body=re.search(name+r':\n(.*?)\.Lfe\d+:',assembly,re.S).group(1);assert len(re.findall(r'\bstmia\b',body))==int(on),(profile,name,body)
  with out.with_suffix('.o').open('rb')as f:
   e=ELFFile(f);code=e.get_section_by_name('.text').data();symbols={s.name:s['st_value']for s in e.get_section_by_name('.symtab').iter_symbols()if s['st_info']['type']=='STT_FUNC'};assert set(symbols)==set(expected)
  mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB)
  for address,size in [(0x1000000,0x10000),(0x2000000,0x10000),(0x3000000,0x1000),(0xfffff000,0x1000),(0,0x1000)]:mu.mem_map(address,size)
  mu.mem_write(0x1000000,code)
  for name,combo in expected.items():
   for pointer in [0x2001000,0xfffffff0]:
    for state in states:
     for nzcv in range(16):
      initial=list(state);initial[base_reg]=pointer;mu.reg_write(UC_ARM_REG_CPSR,(nzcv<<28)|0x3f)
      for reg,value in zip(registers,initial):mu.reg_write(reg,value)
      mu.reg_write(UC_ARM_REG_SP,0x3000ff0);mu.reg_write(UC_ARM_REG_LR,0x100f001)
      mu.mem_write(pointer,b'\xa5'*16);mu.mem_write((pointer-4)&0xffffffff,b'\x5a'*4);mu.mem_write((pointer+16)&0xffffffff,b'\x5a'*4)
      mu.emu_start((0x1000000+symbols[name])|1,0x100f000,count=100)
      final=list(initial);final[base_reg]=(pointer+16)&0xffffffff
      assert mu.reg_read(UC_ARM_REG_PC)==0x100f000 and mu.reg_read(UC_ARM_REG_SP)==0x3000ff0 and mu.reg_read(UC_ARM_REG_LR)==0x100f001
      assert [mu.reg_read(reg)for reg in registers]==final,(profile,name,pointer,nzcv)
      assert bytes(mu.mem_read(pointer,16))==struct.pack('<4I',*(initial[reg]for reg in combo))
      assert bytes(mu.mem_read((pointer-4)&0xffffffff,4))==b'\x5a'*4 and bytes(mu.mem_read((pointer+16)&0xffffffff,4))==b'\x5a'*4
      tested+=1
  functions+=len(symbols)
 assert functions==280 and tested==89600
 report=dict(profile=profile,register_combinations=functions,cases=tested,all_incoming_nzcv=True,wrap32=True,nonbase_registers_preserved=True,passed=True);reports.append(report);print(report,flush=True)
(r/'results.json').write_text(json.dumps(dict(note='Global fixed-register contract: base register is intentionally updated, including r4-r7; ordinary callee ABI separately checked by BTM fixture.',profiles=reports),indent=2))
