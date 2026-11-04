#!/usr/bin/env python3
from pathlib import Path
import sys,struct,json,re,argparse,subprocess
ROOT=Path(__file__).resolve().parents[2]
parser=argparse.ArgumentParser(description='Execute generic bounded byte-loop CC fixtures; no ROM required.')
parser.add_argument('--compiler',type=Path,default=ROOT/'tools/agbcc_sdk_cc/bin/agbcc')
parser.add_argument('--reference-compiler',type=Path,default=ROOT/'tools/agbcc_tst/bin/agbcc')
parser.add_argument('--deps',type=Path)
parser.add_argument('--out',type=Path,default=ROOT/'build/sdk_loop_cc_tests')
args=parser.parse_args()
if args.deps:sys.path.insert(0,str(args.deps.resolve()))
def executable(p):
 p=p.resolve()
 return p.with_suffix('.exe') if not p.is_file() and p.with_suffix('.exe').is_file() else p
from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile
out=args.out.resolve();out.mkdir(parents=True,exist_ok=True);mask=0xffffffff
vals=[0,1,2,3,0x7fffffff,0x80000000,0x80000001,0xffffffff,0xfffffffe]
def signed(n):return n if n<0x80000000 else n-0x100000000
def expected(name,a,b,initial):
 n=initial if name=='loop_word' else b if name=='loop_inner_entry' and a&1 else initial&255
 total=0
 for iteration in range(300):
  if name=='loop_inner_entry':
   if not(iteration==0 and a&1):total+=2
   if total>4:return total,n
  elif name=='loop_changed':
   n=(n+b)&mask;total+=1
   if total==3:return total,n
  else:
   total=(total+a)&mask
   if name=='loop_word' and total==(3*a)&mask:return total,n
  n=(n-1)&mask
  if signed(n)<=0:return total,n
 raise AssertionError('oracle did not terminate')
def cases(name):
 if name in ['loop_byte','loop_opaque','loop_volatile','loop_call','loop_opaque_exit']:
  return [(a,0,n) for n in range(256) for a in [0,1,mask]]
 if name=='loop_bound':return [(a,0,n) for n in [0,1,2] for a in [0,1,mask]]
 if name=='loop_word':return [(a,0,n) for n in vals for a in vals]
 if name=='loop_changed':return [(0,b,n) for n in [0,1,255] for b in vals]
 if name=='loop_inner_entry':return [(a,b,n) for n in [0,1,255] for a in [0,1] for b in vals]
 raise AssertionError(name)
base=0x1000000;data=0x2000000;stack=0x3000000;stop=base+0xf000;reports=[]
for profile,opts in [('reference',[]),('off',[]),('base',['-fthumb-cc-reuse']),('on',['-fthumb-cc-reuse','-fthumb-loop-cc-reuse']),('combined',['-fthumb-cc-reuse','-fthumb-loop-cc-reuse','-fthumb-label-cc-reuse','-fthumb-sign-cc-reuse']),('without_base',['-fthumb-loop-cc-reuse'])]:
 compiler=executable(args.reference_compiler if profile=='reference' else args.compiler)
 stem=out/profile
 for cmd in [['arm-none-eabi-cpp','-undef','-nostdinc',ROOT/'tools/tests/fixtures/sdk_loop_cc_reuse.c','-o',stem.with_suffix('.i')],[str(compiler),'-O2','-mthumb-interwork','-fprologue-bugfix','-ftst',*opts,stem.with_suffix('.i'),'-o',stem.with_suffix('.s')],['arm-none-eabi-as','-mcpu=arm7tdmi','-o',stem.with_suffix('.o'),stem.with_suffix('.s')],['arm-none-eabi-ld','-Ttext=0x1000000','-e','loop_byte','-o',stem.with_suffix('.elf'),stem.with_suffix('.o')]]:
  subprocess.run(cmd,cwd=ROOT,check=True)
 with (out/(profile+'.elf')).open('rb') as f:
  elf=ELFFile(f);code=elf.get_section_by_name('.text').data();syms={s.name:s['st_value']&~1 for s in elf.get_section_by_name('.symtab').iter_symbols() if s.name.startswith('loop_') and s.name!='loop_identity'}
 if profile=='reference':reference=code
 if profile in ['off','without_base']:assert code==reference
 assembly=(out/(profile+'.s')).read_text()
 assert re.search(r'^\s+bl\s+loop_identity\b',assembly,re.M),'call fixture was inlined'
 for name in syms:
  if name=='loop_negative_spin':continue
  body=assembly.split('\n'+name+':\n')[1].split('\n.Lfe')[0]
  count=len(re.findall(r'^\s+cmp\s',body,re.M));want=(0 if profile in ['on','combined'] else 1) if name=='loop_byte' else 2 if name in ['loop_word','loop_changed','loop_inner_entry'] else 1
  assert count==want,(profile,name,count,want)
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB);mu.mem_map(base,0x10000);mu.mem_write(base,code);mu.mem_map(data,0x1000);mu.mem_map(stack,0x1000)
 preserved=[UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11]
 count=0
 for name,address in syms.items():
  if name=='loop_negative_spin':continue
  for a,b,initial in cases(name):
   want,wantn=expected(name,a,b,initial)
   for flags in range(16):
    mu.reg_write(UC_ARM_REG_CPSR,(flags<<28)|0x30)
    for reg,value in [(UC_ARM_REG_R0,a),(UC_ARM_REG_R1,b),(UC_ARM_REG_R2,data),(UC_ARM_REG_R3,a^b),(UC_ARM_REG_R12,0x12345678),(UC_ARM_REG_SP,stack+4080),(UC_ARM_REG_LR,stop|1)]:mu.reg_write(reg,value)
    saved={reg:(0x44440000+i*4369^a^b)&mask for i,reg in enumerate(preserved)}
    for reg,value in saved.items():mu.reg_write(reg,value)
    mu.mem_write(data,struct.pack('<II',initial,0xa5a5a5a5));mu.emu_start(address|1,stop,count=20000)
    ok=mu.reg_read(UC_ARM_REG_PC)==stop and mu.reg_read(UC_ARM_REG_SP)==stack+4080 and all(mu.reg_read(k)==v for k,v in saved.items())
    result=mu.reg_read(UC_ARM_REG_R0);memory=struct.unpack('<II',bytes(mu.mem_read(data,8)))
    assert ok and result==want and memory==(initial,wantn),(profile,name,hex(a),hex(b),hex(initial),flags,ok,result,want,memory,wantn)
    count+=1
 mu.reg_write(UC_ARM_REG_R0,0);mu.reg_write(UC_ARM_REG_SP,stack+4080);mu.reg_write(UC_ARM_REG_LR,stop|1)
 mu.emu_start(syms['loop_negative_spin']|1,stop,count=1000)
 assert mu.reg_read(UC_ARM_REG_PC)!=stop and mu.reg_read(UC_ARM_REG_R0)==0
 report=dict(profile=profile,cases=count,bytes=len(code));reports.append(report);print(report,flush=True)
(out/'runtime-report.json').write_text(json.dumps(reports,indent=2)+'\n')
