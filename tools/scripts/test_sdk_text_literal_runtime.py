#!/usr/bin/env python3
"""Portable SDK text-literal regression fixtures; no ROM required."""
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
shutil.copyfile(fixture/'literal_runtime.c',r/'runtime.c')
from pathlib import Path
import os,sys,subprocess,json,random
from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB,UC_HOOK_CODE
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
def run(args):
 p=subprocess.run(list(map(str,args)),capture_output=True,text=True)
 with (r/'runtime-commands.log').open('a')as log:log.write(repr(args)+'\n'+p.stdout+p.stderr)
 assert not p.returncode,p.stdout+p.stderr
run(['arm-none-eabi-cpp','-undef','-nostdinc','-std=gnu17',r/'runtime.c','-o',r/'runtime.i']);run([cc,'-O2','-mthumb-interwork','-fprologue-bugfix','-fthumb-halfword-align','-fthumb-text-literals',*(['-fsub-compare-flags'] if options.combined else []),'-o',r/'runtime.s',r/'runtime.i']);run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',r/'runtime.o',r/'runtime.s'])
with (r/'runtime.o').open('rb')as f:
 e=ELFFile(f);syms={s.name:s for s in e.get_section_by_name('.symtab').iter_symbols()};table=e.get_section_by_name('.symtab');text=e.get_section_by_name('.text').data();relocs=[]
 for sec in e.iter_sections():
  if isinstance(sec,RelocationSection):
   relocs += [(x['r_info_type'],x['r_offset'],table.get_symbol(x['r_info_sym']).name)for x in sec.iter_relocations()]
 assert any(x[0]==10 and x[2].startswith('_call_via_')for x in relocs),relocs
 assert any(x[0]==2 and x[2]=='data'for x in relocs)and any(x[0]==2 and x[2]=='callback_target'for x in relocs),relocs
 def loads(name):
  s=syms[name];start=s['st_value']&~1;out=[]
  for off in range(start,start+s['st_size'],2):
   op=int.from_bytes(text[off:off+2],'little')
   if op&0xf800==0x4800:out.append((off,((off+4)&~3)+(op&255)*4))
  return out
 expectedloads={'read_shared':('common',1),'twice_shared':('common',1),'read_pointer':('pointer_literal',1),'read_byte_pointer':('byte_pointer_literal',1),'call_callback':('callback_literal',1),'volatile_sum':('changing',2)}
 for name,(literal,count)in expectedloads.items():
  found=loads(name);assert len(found)==count and all(target==syms[literal]['st_value']for _,target in found),(name,found)
 assert {name for name,symbol in syms.items() if symbol['st_info']['type']=='STT_FUNC' and isinstance(symbol['st_shndx'],int)}=={'prefix','read_shared','twice_shared','read_pointer','read_byte_pointer','call_callback','volatile_sum','callback_target','negative_spin'}
 assert (syms['read_shared']['st_value']&~1)%4==2
(r/'runtime.ld').write_text('SECTIONS { . = 0x01000000; .text : { *(.text) } .rodata ALIGN(4) : { *(.rodata*) } . = 0x02000000; .data : { *(.data) } .bss : { *(.bss) } }')
run(['arm-none-eabi-ld','--no-undefined','-T',r/'runtime.ld','-o',r/'runtime.elf',r/'runtime.o','-L','tools/agbcc/lib','-lgcc'])
mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB);base=0x1000000;stop=base+0xf000;sp=0x3000ff0;mu.mem_map(base,0x10000);mu.mem_map(0x2000000,0x1000);mu.mem_map(0x3000000,0x1000)
with (r/'runtime.elf').open('rb')as f:
 e=ELFFile(f);linked={s.name:s for s in e.get_section_by_name('.symtab').iter_symbols()};assert not any(isinstance(s,RelocationSection)and s['sh_size']for s in e.iter_sections())
 for sec in e.iter_sections():
  if sec['sh_flags']&2 and sec['sh_size']and sec['sh_type']!='SHT_NOBITS':mu.mem_write(sec['sh_addr'],sec.data())
 pointer=linked['pointer_literal']['st_value'];callback=linked['callback_literal']['st_value']
 assert int.from_bytes(mu.mem_read(pointer,4),'little')==linked['data']['st_value']+4
 assert int.from_bytes(mu.mem_read(callback,4),'little')==(linked['callback_target']['st_value']|1)
 assert int.from_bytes(mu.mem_read(linked['byte_pointer_literal']['st_value'],4),'little')==linked['byte_data']['st_value']+1
 changing=linked['changing']['st_value'];volatile_load_pcs={base+off for off,_ in loads('volatile_sum')}
# The pointer relocation and volatile PC-load addresses are independent checks.
active=[False];reads=[0]
def hook(machine,address,size,extra):
 if active[0]and address in volatile_load_pcs:
  reads[0]+=1
  if reads[0]==2:machine.mem_write(changing,(23).to_bytes(4,'little'))
mu.hook_add(UC_HOOK_CODE,hook)
callee=[UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11]
def execute(name,x,nzcv):
 mu.reg_write(UC_ARM_REG_CPSR,(nzcv<<28)|0x30)
 for reg,v in [(UC_ARM_REG_R0,x),(UC_ARM_REG_R1,0x11111111),(UC_ARM_REG_R2,0x22222222),(UC_ARM_REG_R3,0x33333333),(UC_ARM_REG_R12,0xcccccccc)]:mu.reg_write(reg,v)
 saved={reg:((0x44440000+i*0x1111)^x)&0xffffffff for i,reg in enumerate(callee)}
 for reg,v in saved.items():mu.reg_write(reg,v)
 mu.reg_write(UC_ARM_REG_SP,sp);mu.reg_write(UC_ARM_REG_LR,stop|1);mu.mem_write(changing,(11).to_bytes(4,'little'));active[0]=name=='volatile_sum';reads[0]=0
 mu.emu_start(linked[name]['st_value']|1,stop,count=1000)
 good=mu.reg_read(UC_ARM_REG_PC)==stop and mu.reg_read(UC_ARM_REG_SP)==sp and all(mu.reg_read(reg)==v for reg,v in saved.items())
 if name=='volatile_sum':assert reads[0]==2
 return mu.reg_read(UC_ARM_REG_R0),good
rng=random.Random(0x4c4954);values=[0,1,2,0x7fffffff,0x80000000,0xffffffff]+[rng.getrandbits(32)for _ in range(64)]
funcs={'prefix':lambda x:x,'read_shared':lambda x:0x12345678+x,'twice_shared':lambda x:2*0x12345678+x,'read_pointer':lambda x:[0x13579bdf,0x2468ace0][x&1]+x,'read_byte_pointer':lambda x:[11,23][x&1]+x,'call_callback':lambda x:3*x+7,'volatile_sum':lambda x:34+x,'callback_target':lambda x:3*x+7};tested=0
for name,want in funcs.items():
 for x in values:
  for flags in range(16):
   got,good=execute(name,x,flags);assert good and got==(want(x)&0xffffffff),(name,x,flags,got,good);tested+=1
assert tested==len(funcs)*len(values)*16 and tested>0
got,good=execute('negative_spin',1,0);assert got==1 and not good
result=dict(cases=tested,functions=sorted(funcs),pc_relative_loads=expectedloads,relocations=relocs,volatile_read_mutation=True,negative_rejected=True,passed=True);print(json.dumps(result,indent=2));(r/'runtime-results.json').write_text(json.dumps(result,indent=2))
