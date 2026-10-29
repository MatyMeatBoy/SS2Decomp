from sdk_vsync_common import setup, ROOT
r,cc,options=setup('flags')
from pathlib import Path
import json,subprocess,sys,re,struct,random,hashlib
from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile
def run(args):
 p=subprocess.run(list(map(str,args)),capture_output=True,text=True)
 with(r/'matrix-commands.log').open('a')as f:f.write(repr(args)+'\n'+p.stdout+p.stderr)
 assert not p.returncode,p.stdout+p.stderr
source=ROOT/'tools/agbcc_sdk_vsync/source/agbcc-1b1c4a81d13918ca55c39c1ccf83689691b03a25/gcc'
for name,expected in json.loads((r/'provenance.json').read_text())['source_files_lf'].items():
 assert hashlib.sha256((source/name).read_text().encode()).hexdigest()==expected,name

spec=json.loads((r/'matrix-spec.json').read_text()); names=set(spec['functions']);positive=set(spec['positive'])
assert names==set('byte_gt byte_le unproved signed_byte halfword overflow opaque_between carry_condition opaque_after copied_reg redefined flow carry_after overflow_after mixed_after volatile_store callback call_between'.split())
assert positive=={'byte_gt','byte_le'}
def inspect(path):
 with path.open('rb')as f:
  e=ELFFile(f);return e.get_section_by_name('.text').data(),{s.name:s['st_value'] for s in e.get_section_by_name('.symtab').iter_symbols()if s['st_info']['type']=='STT_FUNC'}
(r/'matrix.ld').write_text('SECTIONS { . = 0x01000000; .text : { *(.text) } }')
reference=ROOT/'tools/agbcc_sdk_sound/bin/agbcc';reference=reference if reference.is_file() else reference.with_suffix('.exe')
run(['arm-none-eabi-cpp','-P','-undef','-nostdinc',r/'matrix.c','-o',r/'matrix.i'])
profiles={}
for name,cc,opt in [('accepted',reference,False),('off',cc,False),('on',cc,True)]:
 out=r/('matrix-'+name)
 run([cc,'-O2','-mthumb-interwork','-fprologue-bugfix','-ftst',*(['-fthumb-byte-sub-flags']if opt else[]),r/'matrix.i','-o',out.with_suffix('.s')])
 run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',out.with_suffix('.o'),out.with_suffix('.s')])
 if name=='off':assert out.with_suffix('.o').read_bytes()==(r/'matrix-accepted.o').read_bytes()
 run(['arm-none-eabi-ld','-T',r/'matrix.ld','-o',out.with_suffix('.elf'),out.with_suffix('.o')])
 code,symbols=inspect(out.with_suffix('.elf'));assert set(symbols)==names
 asm=out.with_suffix('.s').read_text()
 for fn in names:
  body=asm.split(fn+':\n')[1].split('.Lfe')[0]
  cmp_count=len(re.findall(r'\bcmp\s',body))
  if name=='on' and fn in positive:
   assert cmp_count==0,(fn,body)
   assert re.search(r'\b'+('bgt' if fn=='byte_gt' else 'ble')+r'\s',body),(fn,body)
  elif fn!="callback":assert cmp_count>=1,(name,fn,body)
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB)
 mu.mem_map(0x01000000,0x10000);mu.mem_map(0x02000000,0x10000);mu.mem_map(0x03000000,0x10000)
 mu.mem_write(0x01000000,code)
 profiles[name]=(mu,symbols)
regs=[UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3,UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11,UC_ARM_REG_R12]
rng=random.Random(0x42595445);initial=[rng.getrandbits(32)for _ in regs]
def execute(profile,fn,data,nzcv):
 mu,symbols=profiles[profile]
 mu.reg_write(UC_ARM_REG_CPSR,0x3f|(nzcv<<28))
 for reg,value in zip(regs,initial):mu.reg_write(reg,value)
 mu.reg_write(UC_ARM_REG_R0,0x02001000);mu.reg_write(UC_ARM_REG_SP,0x0300fff0);mu.reg_write(UC_ARM_REG_LR,0x0100f001)
 mu.mem_write(0x02001000,data)
 mu.emu_start(symbols[fn],0x0100f000,count=1000)
 assert mu.reg_read(UC_ARM_REG_PC)==0x0100f000 and mu.reg_read(UC_ARM_REG_SP)==0x0300fff0 and mu.reg_read(UC_ARM_REG_LR)==0x0100f001,(profile,fn,'return')
 assert [mu.reg_read(reg)for reg in regs[4:12]]==initial[4:12],(profile,fn,'callee')
 return bytes(mu.mem_read(0x02001000,len(data))),[mu.reg_read(reg)for reg in regs]
tested=0
boundaries=[0,1,2,0x7f,0x80,0xff,0x100,0x7fffffff,0x80000000,0x80000001,0xffffffff]
for fn in sorted(names):
 values=range(256) if fn in positive or fn=='signed_byte' else boundaries
 for value in values:
  for period in [0,1,255]:
   data=bytearray(b'\xa5'*32);data[4:8]=struct.pack('<I',value);data[11]=period;data[12:16]=struct.pack('<I',0x80000000)
   for flags in range(16):
    a=execute('accepted',fn,bytes(data),flags)
    assert execute('off',fn,bytes(data),flags)==a
    assert execute('on',fn,bytes(data),flags)==a,(fn,value,period,flags)
    tested+=1
assert tested==44784
report=dict(functions=len(names),positive=sorted(positive),cases_per_profile=tested,profiles=3,all_byte_values=True,all_nzcv=True,pc_sp_lr_callee=True,default_off_object_identical=True)
(r/'matrix-results.json').write_text(json.dumps(report,indent=2));print(report)
