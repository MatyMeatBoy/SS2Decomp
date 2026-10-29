from sdk_btm_common import setup, ROOT
r, cc, options = setup('flags')
import argparse
from pathlib import Path
import os,sys,subprocess,json,re,random,struct
from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile

spec=json.loads((r/'fixture-spec.json').read_text());names={'stores_'+n for n in spec['functions']};assert len(names)==12
def run(args):
 p=subprocess.run(list(map(str,args)),capture_output=True,text=True)
 with (r/'commands.log').open('a')as f:f.write(repr(args)+'\n'+p.stdout+p.stderr)
 assert not p.returncode,p.stdout+p.stderr
for stem in ['fixtures','weak_fixture']:run(['arm-none-eabi-cpp','-undef','-nostdinc',r/(stem+'.c'),'-o',r/(stem+'.i')])
(r/'fixtures.ld').write_text('SECTIONS { . = 0x01000000; .text : { *(.text) } . = 0x02008000; .data : { *(.data) } .bss : { *(.bss) } }')
profiles=[('accepted',(Path('tools/agbcc_sdk_flags/bin/agbcc') if Path('tools/agbcc_sdk_flags/bin/agbcc').is_file() else Path('tools/agbcc_sdk_flags/bin/agbcc.exe')),False),('off',cc,False),('on',cc,True)]
reports=[];rng=random.Random(0x42544d);values=[(v,v^0xffffffff,(v+1)&0xffffffff,(v-1)&0xffffffff)for v in [0,1,2,0x7fffffff,0x80000000,0xffffffff]]+[[rng.getrandbits(32)for _ in range(4)]for _ in range(26)]
regs=[UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11]
def write_wrap(mu,address,data):
 split=min(len(data),0x100000000-address);mu.mem_write(address,data[:split])
 if split<len(data):mu.mem_write(0,data[split:])
def read_wrap(mu,address,size):
 split=min(size,0x100000000-address);return bytes(mu.mem_read(address,split))+(bytes(mu.mem_read(0,size-split))if split<size else b'')
for profile,compiler,on in profiles:
 objects=[];assembly=''
 for stem in ['fixtures','weak_fixture']:
  out=r/(profile+'-'+stem);run([compiler,'-O2','-mthumb-interwork','-fprologue-bugfix',*(['-fthumb-store-four']if on else []),'-o',out.with_suffix('.s'),r/(stem+'.i')]);run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',out.with_suffix('.o'),out.with_suffix('.s')]);objects.append(out.with_suffix('.o'));assembly+=out.with_suffix('.s').read_text()
  if profile=='off':assert out.with_suffix('.o').read_bytes()==(r/('accepted-'+stem+'.o')).read_bytes()
 for name in spec['functions']:
  body=re.search(r'stores_'+name+r':\n(.*?)\.Lfe\d+:',assembly,re.S).group(1);grouped=len(re.findall(r'\bstmia\b',body));assert grouped==(spec['expected_groups'].get(name,0)if on else 0),(profile,name,body)
 run(['arm-none-eabi-ld','--no-undefined','-T',r/'fixtures.ld','-o',r/(profile+'.elf'),*objects])
 with (r/(profile+'.elf')).open('rb')as f:
  e=ELFFile(f);text=e.get_section_by_name('.text').data();syms={s.name:s['st_value']for s in e.get_section_by_name('.symtab').iter_symbols()};actualnames={s.name for s in e.get_section_by_name('.symtab').iter_symbols()if s['st_info']['type']=='STT_FUNC'};assert actualnames==names,(actualnames^names)
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB)
 for address,size in [(0x1000000,0x10000),(0x2000000,0x10000),(0x3000000,0x10000),(0xfffff000,0x1000),(0,0x1000),(0x7ffff000,0x2000)]:mu.mem_map(address,size)
 mu.mem_write(0x1000000,text);tested=0
 def execute(name,base,source,flags):
  saved=[source[3]]+[0x51510000+i*0x10101 for i in range(7)]
  mu.reg_write(UC_ARM_REG_CPSR,(flags<<28)|0x3f)
  for reg,value in zip([UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3],[base,*source[:3]]):mu.reg_write(reg,value)
  for reg,value in zip(regs,saved):mu.reg_write(reg,value)
  mu.reg_write(UC_ARM_REG_R12,0xcccccccc);mu.reg_write(UC_ARM_REG_SP,0x300fff0);mu.reg_write(UC_ARM_REG_LR,0x100f001)
  start=(base-16)&0xffffffff;write_wrap(mu,start,b'\xa5'*256);mu.mem_write(syms['effect_counter'],b'\0'*4)
  mu.emu_start(syms[name],0x100f000,count=1000)
  good=mu.reg_read(UC_ARM_REG_PC)==0x100f000 and mu.reg_read(UC_ARM_REG_SP)==0x300fff0 and [mu.reg_read(x)for x in regs]==saved
  return good,mu.reg_read(UC_ARM_REG_R0),read_wrap(mu,start,256),int.from_bytes(mu.mem_read(syms['effect_counter'],4),'little')
 for name in sorted(names-{'stores_negative'}):
  kind=name[len('stores_'):];groups=4 if kind=='four'else 1
  for base in [0x2001000,(0x100000000-16*groups)&0xffffffff,0x80000000-16*groups]:
   for source in values:
    for flags in range(16):
     good,pointer,memory,effect=execute(name,base,source,flags);assert good and pointer==(base+16*groups)&0xffffffff,(profile,name,base,flags,good,hex(pointer))
     expected=bytearray(b'\xa5'*256);slots=[(0,source[0]),(4,source[1]),(8,source[2]),(12,source[3])]
     if kind=='descending':slots=[(4*i,v)for i,v in enumerate(reversed(source))]
     if kind=='duplicate':slots[1]=(4,source[0])
     if kind=='base_source':slots[0]=(0,base)
     if kind=='gap':slots=[(0,source[0]),(4,source[1]),(12,source[2]),(16,source[3])]
     for group in range(groups):
      for offset,value in slots:struct.pack_into('<I',expected,16+16*group+offset,value)
     assert memory==expected,(profile,name,base,flags)
     assert effect==int(kind=='side_effect' or (kind=='cc0_compare' and bool(pointer & 0x80000000))),(profile,name,effect)
     tested+=1
 good,pointer,_,_=execute('stores_negative',0x2001000,[1,2,3,4],0);assert pointer==0x2001010 and not good,'loop control did not fail with correct pointer'
 assert tested==11*3*len(values)*16 and tested>0
 report=dict(profile=profile,cases=tested,functions=len(names),all_incoming_nzcv=True,wrap32=True,return_sp_callee=True,negative_loop_rejected=True,passed=True);reports.append(report);print(report,flush=True)
(r/'results.json').write_text(json.dumps(reports,indent=2))
