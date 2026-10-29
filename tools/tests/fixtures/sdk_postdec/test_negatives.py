from pathlib import Path
import sys,subprocess,json
sys.path.insert(0,'tools/scripts');import decomp
source=(ROOT/'src/m4a_1_read.c').read_text()
needle='asm("bx %0" : : "r"(sdkReturn), "r"(sdkDest));'
assert source.count(needle)==1
bad=source.replace('register u32 sdkReturn asm("r12");','register u32 sdkReturn asm("r12");\nregister u32 badCallee asm("r4");').replace(needle,'badCallee=0;\n    '+needle)
spin=source.replace(needle,'for(;;){}\n    '+needle)
flags=decomp.module_flags('m4a_1_read')
def run(command):
 p=subprocess.run(list(map(str,command)),capture_output=True,text=True);assert not p.returncode,p.stdout+p.stderr
for name,text in [('bad_callee',bad),('spin',spin)]:
 (r/(name+'.c')).write_text(text)
 error=decomp.compile_c(str(r/(name+'.c')),str(r/(name+'.o')),str(cc),flags);assert not error,error
 run(['arm-none-eabi-ld','--no-undefined','-T',r/'canonical.ld','-o',r/(name+'.elf'),r/(name+'.o'),r/'external.o'])
text=(r/'test_reader.py').read_text();prefix=text[:text.index("counts={'jump_per_profile'")]
ns={'r':r};exec(prefix,ns)
passed=[]
for name in ['bad_callee','spin']:
 code=ns['image'](r/(name+'.elf'));assert code!=ns['image'](r/'original.elf')
 mu=ns['machine'](code);values=list(range(36));state=ns['states'][0]
 try:ns['jump'](mu,0x02001000,values,state,0,1)
 except AssertionError:passed.append(name)
 else:raise AssertionError('negative accepted '+name)
 assert mu.reg_read(ns['UC_ARM_REG_R0'])==0x02001090,(name,'r0 must remain expected')
 if name=='bad_callee':
  assert mu.reg_read(ns['UC_ARM_REG_PC'])==ns['STOP']
  assert mu.reg_read(ns['UC_ARM_REG_R4'])==0 and state[4]!=0
 else:assert mu.reg_read(ns['UC_ARM_REG_PC'])!=ns['STOP']
assert passed==['bad_callee','spin']
result=dict(c_source_mutations=passed,strict_rejected=True,correct_r0_for_both=True,fresh_emulators=True,callee_contract_enforced=True,return_pc_enforced=True)
(r/'negative-results.json').write_text(json.dumps(result,indent=2));print(result)
