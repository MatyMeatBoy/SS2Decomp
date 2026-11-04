#!/usr/bin/env python3
from pathlib import Path
import sys,struct,json,itertools,random,argparse,subprocess,re
ROOT=Path(__file__).resolve().parents[2]
parser=argparse.ArgumentParser(description='Execute generic Thumb literal-pool layout fixtures; no ROM required.')
parser.add_argument('--compiler',type=Path,default=ROOT/'tools/agbcc_sdk_cc/bin/agbcc')
parser.add_argument('--reference-compiler',type=Path,default=ROOT/'tools/agbcc_tst/bin/agbcc')
parser.add_argument('--deps',type=Path)
parser.add_argument('--out',type=Path,default=ROOT/'build/sdk_late_pool_tests')
args=parser.parse_args()
if args.deps:sys.path.insert(0,str(args.deps.resolve()))
def executable(p):
 p=p.resolve()
 return p.with_suffix('.exe') if not p.is_file() and p.with_suffix('.exe').is_file() else p
from unicorn import Uc,UC_ARCH_ARM,UC_MODE_THUMB
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile
out=args.out.resolve();out.mkdir(parents=True,exist_ok=True);mask=0xffffffff
values=[0,1,2,3,0x7fffffff,0x80000000,0x80000001,0xfffffffe,mask]
rng=random.Random(5361020);pairs=list(itertools.product(values,repeat=2))+[(rng.getrandbits(32),rng.getrandbits(32)) for _ in range(64)]
constants=[(0x13579bdf+i*0x01020409)&mask for i in range(120)];sentinel=0xa5a5a5a5

def expected(name,a,b):
 if name=='pool_paths':
  v=((0x13579bdf+b) if a&1 else (0x2468ace0-b))&mask
  return ((v^0xa5c3e179) if a&2 else (v+0x10203040)&mask),v
 if name=='pool_pointer':
  v=([0x12345678,0x87654321,0x80000001,mask][a&3]+b)&mask
  return v^0x55aa13c7,v
 if name=='pool_wide':return (0x12345678fffffff8 if a&1 else 0xfedcba9887654321),sentinel
 if name=='pool_many':
  v=(constants[a]+b)&mask if a<len(constants) else (a-b)&mask
  return (v^0x55aa13c7 if a<len(constants) else v),v
 if name=='pool_far':
  v=0x78563412 if a&1 else (0x78563412+520*b)&mask
  return ((v+b)&mask if a&1 else (v+0x13579bdf)&mask),v
 raise AssertionError(name)
def cases(name):
 if name=='pool_many':return [(a,b) for a in range(125) for b in values]+pairs
 if name=='pool_far':return list(itertools.product([0,1,2,3,mask],values))
 return pairs
base=0x1000000;data=0x2000000;stack=0x3000000;stop=base+0xf000;reports=[]
for profile,opts in [('reference',[]),('off',[]),('on',['-fthumb-late-pool']),('combined',['-fthumb-late-pool','-fthumb-cc-reuse','-fthumb-label-cc-reuse','-fthumb-sign-cc-reuse','-fthumb-loop-cc-reuse']),('without_tst',['-fthumb-late-pool'])]:
 compiler=executable(args.reference_compiler if profile=='reference' else args.compiler)
 stem=out/profile;tst=[] if profile=='without_tst' else ['-ftst']
 for cmd in [['arm-none-eabi-cpp','-undef','-nostdinc',ROOT/'tools/tests/fixtures/sdk_late_pool.c','-o',stem.with_suffix('.i')],[str(compiler),'-O2','-mthumb-interwork','-fprologue-bugfix',*tst,*opts,stem.with_suffix('.i'),'-o',stem.with_suffix('.s')],['arm-none-eabi-as','-mcpu=arm7tdmi','-o',stem.with_suffix('.o'),stem.with_suffix('.s')],['arm-none-eabi-ld','-Ttext=0x1000000','-e','pool_paths','-o',stem.with_suffix('.elf'),stem.with_suffix('.o')]]:
  subprocess.run(cmd,cwd=ROOT,check=True)
 assembly=stem.with_suffix('.s').read_text()
 if profile in ['on','combined','without_tst']:
  body=assembly.split('\npool_paths:\n',1)[1].split('\n.Lfe',1)[0]
  assert body.index('\t.word')>body.rindex('\tbx\t'),'positive fixture pool must follow its return'
 with (out/(profile+'.elf')).open('rb') as f:
  elf=ELFFile(f);code=elf.get_section_by_name('.text').data();sections=[(s['sh_addr'],s.data()) for s in elf.iter_sections() if s['sh_flags']&2 and s['sh_size']>0 and s['sh_type']!='SHT_NOBITS'];syms={s.name:s['st_value']&~1 for s in elf.get_section_by_name('.symtab').iter_symbols() if s.name.startswith('pool_') and s['st_info']['type']=='STT_FUNC'}
 if profile=='reference':reference=code
 if profile=='off':assert code==reference,'default output changed'
 if profile=='on':assert code!=reference,'pool fixture did not exercise a layout change'
 mu=Uc(UC_ARCH_ARM,UC_MODE_THUMB);mu.mem_map(base,0x10000);mu.mem_map(data,0x1000);mu.mem_map(stack,0x1000)
 for address,content in sections:
  assert base<=address and address+len(content)<stop,(profile,hex(address),len(content))
  mu.mem_write(address,content)
 preserved=[UC_ARM_REG_R4,UC_ARM_REG_R5,UC_ARM_REG_R6,UC_ARM_REG_R7,UC_ARM_REG_R8,UC_ARM_REG_R9,UC_ARM_REG_R10,UC_ARM_REG_R11];count=0
 for name,address in syms.items():
  if name=='pool_negative_spin':continue
  for a,b in cases(name):
   want,memory=expected(name,a,b)
   for flags in range(16):
    mu.reg_write(UC_ARM_REG_CPSR,(flags<<28)|0x30)
    for reg,value in [(UC_ARM_REG_R0,a),(UC_ARM_REG_R1,b),(UC_ARM_REG_R2,data),(UC_ARM_REG_R3,a^b),(UC_ARM_REG_R12,0x12345678),(UC_ARM_REG_SP,stack+4080),(UC_ARM_REG_LR,stop|1)]:mu.reg_write(reg,value)
    saved={reg:(0x44440000+i*4369^a^b)&mask for i,reg in enumerate(preserved)}
    for reg,value in saved.items():mu.reg_write(reg,value)
    mu.mem_write(data,struct.pack('<II',sentinel,0x5a5a5a5a));mu.emu_start(address|1,stop,count=20000)
    ok=mu.reg_read(UC_ARM_REG_PC)==stop and mu.reg_read(UC_ARM_REG_SP)==stack+4080 and all(mu.reg_read(k)==v for k,v in saved.items())
    result=mu.reg_read(UC_ARM_REG_R0)
    if name=='pool_wide':result|=mu.reg_read(UC_ARM_REG_R1)<<32
    actual_memory=struct.unpack('<II',bytes(mu.mem_read(data,8)))
    assert ok and result==want and actual_memory==(memory,0x5a5a5a5a),(profile,name,hex(a),hex(b),flags,ok,hex(result),hex(want),actual_memory,hex(memory))
    count+=1
 mu.reg_write(UC_ARM_REG_R0,0);mu.reg_write(UC_ARM_REG_SP,stack+4080);mu.reg_write(UC_ARM_REG_LR,stop|1);mu.emu_start(syms['pool_negative_spin']|1,stop,count=1000)
 assert mu.reg_read(UC_ARM_REG_PC)!=stop and mu.reg_read(UC_ARM_REG_R0)==0
 report=dict(profile=profile,cases=count,bytes=len(code),negative_control_rejected=True);reports.append(report);print(report,flush=True)
(out/'runtime-report.json').write_text(json.dumps(reports,indent=2)+'\n')
