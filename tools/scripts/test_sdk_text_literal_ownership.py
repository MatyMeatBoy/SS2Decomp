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
import os,subprocess,itertools,json
header='typedef unsigned int u32;\n#define A __attribute__((section(".text"),aligned(4),thumb_literal))\n'
targets={'function':'u32 target(void){return 0x12345678;}','writable':'u32 target __attribute__((section(".text"),aligned(4)))=0x12345678;','readonly':'const u32 target __attribute__((section(".text"),aligned(4)))=0x12345678;'}
cases=[]
for kind,target in targets.items():
 for index,order in enumerate(itertools.permutations(['section(".text")','aligned(4)','thumb_literal','alias("target")'])):
  attrs='__attribute__(('+','.join(order)+'))'
  for mode in ['initial','redeclaration']:
   if mode=='initial':source=header+'extern const volatile u32 literal '+attrs+';\nu32 getter(void){return literal;}\n'+target
   else:source=header+'extern const volatile u32 literal A;\nu32 getter(void){return literal;}\n'+target+'\nextern const volatile u32 literal '+attrs+';'
   cases.append((kind+'_'+mode+'_'+str(index),source))
 cases.append((kind+'_alias_before_attribute',header+'extern const volatile u32 literal __attribute__((alias("target")));\n'+target+'\nextern const volatile u32 literal A;\nu32 getter(void){return literal;}'))
 cases.append((kind+'_alias_after_object',header+'extern const volatile u32 literal A;\nu32 getter(void){return literal;}\nconst volatile u32 literal A=7;\n'+target+'\nextern const volatile u32 literal __attribute__((alias("target")));'))
 cases.append((kind+'_historical',header+'extern const volatile u32 literal A;\nu32 getter(void){return literal;}\n'+target+'\nextern const volatile u32 literal A __attribute__((alias("target")));'))
cases += [('local_static_folded',header+'u32 getter(void){static const u32 literal A=0x12345678;return literal;}'),('local_static_volatile',header+'u32 getter(void){static const volatile u32 literal A=0x12345678;return literal;}'),('local_extern',header+'u32 getter(void){extern const u32 literal A;return literal;} const u32 literal A=7;'),('weak_definition',header+'extern const volatile u32 literal A; u32 getter(void){return literal;} const volatile u32 literal A __attribute__((weak))=7;')]
assert len(cases)==157
results=[]
for name,source in cases:
 directory=r/'ownership';directory.mkdir(exist_ok=True);p=directory/(name+'.c');p.write_text(source)
 proc=subprocess.run(['arm-none-eabi-cpp','-undef','-nostdinc','-std=gnu17',str(p),'-o',str(p.with_suffix('.i'))],capture_output=True,text=True);assert not proc.returncode,proc.stderr
 args=['-O2','-mthumb-interwork','-fthumb-halfword-align','-fthumb-text-literals',*(['-fsub-compare-flags'] if options.combined else []),'-o',str(p.with_suffix('.s')),str(p.with_suffix('.i'))]
 proc=subprocess.run([str(cc),*args],capture_output=True,text=True);p.with_suffix('.log').write_text(proc.stdout+proc.stderr)
 assert proc.returncode,(name,'unsafe source accepted',proc.stdout,proc.stderr)
 row=dict(name=name,rejected_by_compiler=True)
 results.append(row)
print('ownership negative cases',len(results),'PASS');(r/'ownership-results.json').write_text(json.dumps(results,indent=2))
