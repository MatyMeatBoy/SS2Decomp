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
from pathlib import Path
import subprocess,os,json
from elftools.elf.elffile import ELFFile
attribute='__attribute__((section(".text"),aligned(4),thumb_literal))'
def simple(prefix='',padding=0):
 return 'typedef unsigned int u32;\nextern const u32 literal '+attribute+';\n'+prefix+'\nu32 getter(void){return literal;}\nasm(".space %d,0");\nconst u32 literal '%padding+attribute+'=0x12345678;\n'
base=simple()
cases=[('zero',base,True,0),('half',simple('u32 prefix(u32 x){return x;}'),True,4),('max',simple(padding=1020),True,1020),('max_half',simple('u32 prefix(u32 x){return x;}',1018),True,1020),('overflow',simple(padding=1024),False,None),('overflow_half',simple('u32 prefix(u32 x){return x;}',1022),False,None),('external',base[:base.index('asm(')],False,None),('writable',base.replace('const u32 literal','u32 literal'),False,None),('wrong_section',base.replace('.text','.rodata'),False,None),('wrong_size',base.replace('unsigned int','unsigned short'),False,None),('type_attribute','typedef unsigned int u32; typedef u32 bad __attribute__((thumb_literal));',False,None),('function_attribute','unsigned getter(void) __attribute__((thumb_literal)); unsigned getter(void){return 1;}',False,None)]
cases.append(('backwards','typedef unsigned int u32; const volatile u32 literal '+attribute+'=0x12345678; u32 getter(void){return literal;}',False,None))
cases.append(('unaligned','typedef unsigned int low_u32 __attribute__((aligned(2))); extern const low_u32 literal __attribute__((section(".text"),thumb_literal)); low_u32 getter(void){return literal;} const low_u32 literal __attribute__((section(".text"),thumb_literal))=1;',False,None))
cases.append(('enum_word','typedef unsigned int u32; enum E{VALUE=0x12345678}; extern const enum E literal '+attribute+'; u32 getter(void){return literal;} const enum E literal '+attribute+'=VALUE;',True,0))
cases.append(('array_word','typedef unsigned int u32; extern const unsigned char literal[4] '+attribute+'; u32 getter(void){return literal[0];} const unsigned char literal[4] '+attribute+'={1,2,3,4};',False,None))
cases.append(('struct_word','typedef unsigned int u32; struct word{u32 value;}; extern const struct word literal '+attribute+'; u32 getter(void){return literal.value;} const struct word literal '+attribute+'={1};',False,None))
cases.append(('attribute_arguments',base.replace('thumb_literal','thumb_literal(1)'),False,None))
cases.append(('attribute_order',base.replace('section(".text"),aligned(4),thumb_literal','thumb_literal,aligned(4),section(".text")'),True,0))
results=[]
for name,source,expected,displacement in cases:
 p=r/(name+'.c');p.write_text(source);stem=p.with_suffix('')
 cmds=[['arm-none-eabi-cpp','-undef','-nostdinc','-std=gnu17',p,'-o',stem.with_suffix('.i')],[cc,'-O2','-mthumb-interwork','-fprologue-bugfix','-fthumb-halfword-align','-fthumb-text-literals',*(['-fsub-compare-flags'] if options.combined else []),'-o',stem.with_suffix('.s'),stem.with_suffix('.i')],['arm-none-eabi-as','-mcpu=arm7tdmi','-o',stem.with_suffix('.o'),stem.with_suffix('.s')]]
 ok=True;phase=None;log=''
 for phase,cmd in zip(['cpp','compiler','assembler'],cmds):
  proc=subprocess.run(list(map(str,cmd)),capture_output=True,text=True);log+=repr(cmd)+'\n'+proc.stdout+proc.stderr
  if proc.returncode:ok=False;break
 (r/(name+'.log')).write_text(log);assert ok==expected,(name,expected,phase,log)
 row=dict(name=name,passed=True,compiled=ok,last_phase=phase)
 if ok:
  with stem.with_suffix('.o').open('rb')as f:
   elf=ELFFile(f);syms={s.name:s for s in elf.get_section_by_name('.symtab').iter_symbols()};text=elf.get_section_by_name('.text').data();start=syms['getter']['st_value']&~1;data=syms['literal']['st_value'];opcode=int.from_bytes(text[start:start+2],'little');assert opcode&0xf800==0x4800,(name,hex(opcode));pc=(start+4)&~3;target=pc+(opcode&255)*4
   assert target==data and data%4==0 and data-pc==displacement,(name,start,data,pc,target)
   assert syms['literal']['st_info']['type']=='STT_OBJECT'and syms['literal']['st_size']==4
   if 'half'in name:assert start%4==2
   row.update(entry_offset=start,literal_offset=data,pc_base=pc,displacement=data-pc)
 results.append(row);print(row,flush=True)
# Feature use with the option disabled must fail rather than silently degrade.
proc=subprocess.run([str(cc),'-O2','-mthumb-interwork','-o',str(r/'disabled.s'),str(r/'zero.i')],capture_output=True,text=True);assert proc.returncode and 'requires -fthumb-text-literals' in proc.stderr;results.append(dict(name='disabled',passed=True,compiled=False,last_phase='compiler'))
(r/'geometry-results.json').write_text(json.dumps(results,indent=2))
