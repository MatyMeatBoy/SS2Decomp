from sdk_vsync_common import setup, ROOT
r,cc,options=setup('target')
from pathlib import Path
import sys,subprocess,json
sys.path.insert(0,str(ROOT/'tools/scripts'))
import decomp
from elftools.elf.elffile import ELFFile
from source_index import functions
build=Path(__import__('os').path.relpath(r,ROOT)).as_posix()
result=decomp.run(['make','-j1','BUILD='+build,build+'/src/m4a_1_vsync.o'])
assert not result.returncode,result.stdout+result.stderr
import shutil
shutil.copyfile(r/'src/m4a_1_vsync.o',r/'vsync.o')
shutil.copyfile(r/'src/m4a_1_vsync.i',r/'vsync.i')
compile_flags=decomp.module_flags('m4a_1_vsync')
selected=Path(decomp.module_cc1('m4a_1_vsync')).absolute()
assert selected==ROOT/'tools/agbcc_sdk_vsync/bin/agbcc'
if not selected.is_file():selected=selected.with_suffix('.exe')
assert cc==selected
active={row['name']for row in functions((r/'vsync.i').read_text())}
assert active=={'m4aSoundVSync','sub_080B6DD0'},active
with (r/'vsync.o').open('rb')as f:
 e=ELFFile(f);symbols={x.name:x for x in e.get_section_by_name('.symtab').iter_symbols()}
 assert symbols['m4aSoundVSync']['st_size']==44 and symbols['m4aSoundVSync']['st_value']==1
 assert symbols['sub_080B6DD0']['st_size']==2
 for name in ['_080B6B6C','_080B6B70','_080B6DD4','_080B6DD8','_080B6DDC']:
  assert symbols[name]['st_size']==4 and symbols[name]['st_info']['type']=='STT_OBJECT'
original=(ROOT/'tools/tests/fixtures/sdk_vsync/original.s').read_text()
(r/'original.s').write_text('.include "asm/macros.inc"\n.syntax unified\n.text\n'+original)
def run(cmd):
 p=subprocess.run(list(map(str,cmd)),capture_output=True,text=True);assert not p.returncode,p.stdout+p.stderr
run(['arm-none-eabi-as','-mcpu=arm7tdmi','-I','.', '-o',r/'original.o',r/'original.s'])
script=r/'canonical.ld';script.write_text('SECTIONS { . = 0x080B6B3C; .text : { *(.text) } /DISCARD/ : { *(.data) *(.bss) *(.ARM.attributes) *(.comment) } }')
with (r/'vsync.o').open('rb')as stream:
 elf=ELFFile(stream)
 undefined={x.name for x in elf.get_section_by_name('.symtab').iter_symbols()if x.name and x['st_shndx']=='SHN_UNDEF'}
assert undefined=={'FadeOutBody','ClearChain','Clear64byte','TrkVolPitSet','MidiKeyToFreq','gUnk_080BBA5C','gUnk_03007FF0'},undefined
external='.syntax unified\n.thumb\n'
for name in sorted(undefined):
 address=decomp.func_address(name)
 external+='.global '+name+'\n'
 if address is not None:
  external+='.type '+name+',%function\n.thumb_set '+name+',0x%x\n'%(address|1)
 else:
  address=decomp.resolve(name);assert address is not None,name
  external+='.set '+name+',0x%x\n'%address
(r/'externals.s').write_text(external)
run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',r/'externals.o',r/'externals.s'])
data=[]
for name in ['original','vsync']:
 run(['arm-none-eabi-ld','--no-undefined','-T',script,'-o',r/(name+'.elf'),r/(name+'.o'),r/'externals.o'])
 with(r/(name+'.elf')).open('rb')as f:
  e=ELFFile(f)
  assert not any(x['sh_type'] in ('SHT_REL','SHT_RELA') and x['sh_size']for x in e.iter_sections())
  symbols={x.name:x for x in e.get_section_by_name('.symtab').iter_symbols()}
  for symbol,address in [('m4aSoundVSync',0x080B6B3D),('MPlayMain',0x080B6B75),('sub_080B6DD0',0x080B6DD1),('_080B6B6C',0x080B6B6C),('_080B6B70',0x080B6B70),('_080B6DD4',0x080B6DD4),('_080B6DD8',0x080B6DD8),('_080B6DDC',0x080B6DDC)]:
   assert symbols[symbol]['st_value']==address,(name,symbol,symbols[symbol]['st_value'])
  data.append(e.get_section_by_name('.text').data())
assert len(data[0])==len(data[1])==676,[len(x)for x in data]
diff=[hex(0x080B6B3C+i)for i,(a,b)in enumerate(zip(*data))if a!=b]
result=dict(full_container_bytes=676,vsync_target_bytes=56,unchanged_neighbors=620,differences=diff)
(r/'strict-results.json').write_text(json.dumps(result,indent=2));print(result);assert not diff


from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB,UC_HOOK_MEM_WRITE
from unicorn.arm_const import *
import random,struct
base=0x080b6b3c;stop=0x080ff000;sound=0x02001000
def code(path):
 with path.open('rb') as f:return ELFFile(f).get_section_by_name('.text').data()
regs=[UC_ARM_REG_R0,UC_ARM_REG_R1,UC_ARM_REG_R2,UC_ARM_REG_R3,UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11,UC_ARM_REG_R12]
rng=random.Random(0x6b3c);saved=[rng.getrandbits(32)for _ in regs]
def machine(data):
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB)
 for address,size in [(0x08000000,0x100000),(0x02000000,0x10000),(0x03000000,0x10000),(0x04000000,0x1000)]:mu.mem_map(address,size)
 mu.mem_write(base,data);trace=[]
 mu.hook_add(UC_HOOK_MEM_WRITE,lambda m,access,address,size,value,user:trace.append((address,size,value)) if 0x04000000<=address<0x04001000 else None)
 return mu,trace
profiles={n:machine(code(r/(n+'.elf')))for n in ['original','vsync']}
def execute(mu,trace,ident,counter,period,flags):
 data=bytearray(b'\xa5'*32);data[:4]=struct.pack('<I',ident);data[4]=counter;data[11]=period
 mu.mem_write(sound,bytes(data));mu.mem_write(0x03007ff0,struct.pack('<I',sound));mu.mem_write(0x040000c0,b'\x5a'*32);trace.clear()
 mu.reg_write(UC_ARM_REG_CPSR,(flags<<28)|0x3f)
 for reg,value in zip(regs,saved):mu.reg_write(reg,value)
 mu.reg_write(UC_ARM_REG_SP,0x03007000);mu.reg_write(UC_ARM_REG_LR,stop|1)
 mu.emu_start(base|1,stop,count=1000)
 assert mu.reg_read(UC_ARM_REG_PC)==stop and mu.reg_read(UC_ARM_REG_SP)==0x03007000 and mu.reg_read(UC_ARM_REG_LR)==stop|1
 assert [mu.reg_read(reg)for reg in regs[4:12]]==saved[4:12]
 valid=ident in [0x68736d53,0x68736d54]
 expected=period if counter<=1 else counter-1
 if valid:data[4]=expected
 assert bytes(mu.mem_read(sound,32))==bytes(data)
 expected_trace=[(0x040000c6,2,0),(0x040000d2,2,0),(0x040000c6,2,0xb600),(0x040000d2,2,0xb600)]if valid and counter<=1 else[]
 assert trace==expected_trace,(ident,counter,period,trace)
 return [mu.reg_read(reg)for reg in regs],mu.reg_read(UC_ARM_REG_CPSR),bytes(mu.mem_read(0x040000c0,32))
tested=0
for ident in [0x68736d52,0x68736d53,0x68736d54,0x68736d55]:
 for counter in range(256):
  for period in [0,7,255]:
   for flags in range(16):
    a=execute(*profiles['original'],ident,counter,period,flags)
    assert execute(*profiles['vsync'],ident,counter,period,flags)==a
    tested+=1
assert tested==49152
report=dict(cases_per_profile=tested,profiles=2,all_nzcv=True,all_byte_values=True,ident_valid_invalid=True,dma_order=True,pc_sp_lr_callee=True,all_registers_and_physical_flags_equal=True)
(r/'vsync-runtime-results.json').write_text(json.dumps(report,indent=2));print(report)


source=(ROOT/'src/m4a_1_vsync.c').read_text()
start=source.index('void m4aSoundVSync(void) {');end=source.index('asm("bx lr");',start)
spin=source[:start]+'void m4aSoundVSync(void) { r0=(u32)infoLiteral; r0=*(u32 *)r0; for(;;){} }\n'+source[end:]
wrong=source.replace('(volatile u16 *)&REG_DMA2CNT_H','((volatile u16 *)&REG_DMA2CNT_H + 1)')
assert wrong!=source
def run(args):
 p=subprocess.run(list(map(str,args)),capture_output=True,text=True);assert not p.returncode,p.stdout+p.stderr
for name,s in [('spin',spin),('wrong_dma',wrong)]:
 (r/(name+'.c')).write_text(s);error=decomp.compile_c(str(r/(name+'.c')),str(r/(name+'.o')),str(cc),compile_flags);assert not error,error
 run(['arm-none-eabi-ld','--no-undefined','-T',r/'canonical.ld','-o',r/(name+'.elf'),r/(name+'.o'),r/'externals.o'])
namespace=globals()
passed=[]
for name,counter in [('spin',2),('wrong_dma',0)]:
 mu,trace=namespace['machine'](namespace['code'](r/(name+'.elf')))
 assert namespace['code'](r/(name+'.elf'))!=namespace['code'](r/'original.elf')
 try:namespace['execute'](mu,trace,0x68736d53,counter,7,0)
 except AssertionError:passed.append(name)
 else:raise AssertionError('negative accepted: '+name)
 if name=='spin':
  assert mu.reg_read(namespace['UC_ARM_REG_R0'])==0x02001000
  assert mu.reg_read(namespace['UC_ARM_REG_PC'])!=namespace['stop']
assert passed==['spin','wrong_dma']
(r/'negative-results.json').write_text(json.dumps(dict(c_source_mutations=passed,strict_rejected=True,correct_r0_spin_rejected=True,fresh_machine_per_negative=True),indent=2));print(passed)
