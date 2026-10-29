from pathlib import Path
import sys,subprocess,json,hashlib
sys.path.insert(0,'tools/scripts');import decomp
from elftools.elf.elffile import ELFFile
import source_index
source=(ROOT/'src/m4a_1_read.c').read_text()
known={'MPlayJumpTableCopy','sub_080B6990','sub_080B6992','sub_080B69AC','sub_080B69AE'}
aliases=source_index.aliases(source,known)
active={aliases.get(x['name'],x['name']) for x in source_index.functions(source)}
assert active==known and aliases.get('sdkValidateKeepR0')=='sub_080B6992',active
assert 'INCLUDE_ASM' not in source and '.size' not in source
flags=decomp.module_flags('m4a_1_read')
selected=Path(decomp.module_cc1('m4a_1_read')).absolute()
assert selected==ROOT/'tools/agbcc_sdk_postdec/bin/agbcc'
if not selected.is_file():selected=selected.with_suffix('.exe')
assert cc==selected
build=Path(__import__('os').path.relpath(r,ROOT)).as_posix()
result=decomp.run(['make','-j1','BUILD='+build,build+'/src/m4a_1_read.o'])
assert not result.returncode,result.stdout+result.stderr
import shutil
shutil.copyfile(r/'src/m4a_1_read.o',r/'reader.o')
# Verify compiled, preprocessed definitions as well as the versioned source.
preprocessed=(r/'src/m4a_1_read.i').read_text()
bindings=source_index.aliases(preprocessed,known)
assert {bindings.get(x['name'],x['name']) for x in source_index.functions(preprocessed)}==known
(r/'original.s').write_text('.include "asm/macros.inc"\n.syntax unified\n.text\n'+Path('tools/tests/fixtures/sdk_flags/m4a_1_read.s').read_text()+'\n.align 2,0\n')
def run(command):
 p=subprocess.run(list(map(str,command)),capture_output=True,text=True);assert not p.returncode,p.stdout+p.stderr
run(['arm-none-eabi-as','-mcpu=arm7tdmi','-I','.', '-o',r/'original.o',r/'original.s'])
(r/'external.s').write_text('.global gUnk_080BB7E8\n.set gUnk_080BB7E8,0x080BB7E8\n')
run(['arm-none-eabi-as','-mcpu=arm7tdmi','-o',r/'external.o',r/'external.s'])
(r/'canonical.ld').write_text('SECTIONS { . = 0x080B6978; .text : { *(.text) } /DISCARD/ : { *(.data) *(.bss) *(.ARM.attributes) *(.comment) } }')
images=[]
for name in ['original','reader']:
 run(['arm-none-eabi-ld','--no-undefined','-T',r/'canonical.ld','-o',r/(name+'.elf'),r/(name+'.o'),r/'external.o'])
 with(r/(name+'.elf')).open('rb')as f:
  elf=ELFFile(f);images.append(elf.get_section_by_name('.text').data())
with (r/'reader.elf').open('rb') as f:
 elf=ELFFile(f);symbols={x.name:x for x in elf.get_section_by_name('.symtab').iter_symbols()}
 for name,address in {'MPlayJumpTableCopy':0x080B6979,'sub_080B6990':0x080B6991,'sub_080B6992':0x080B6993,'sub_080B69AC':0x080B69AD,'sub_080B69AE':0x080B69AF}.items():
  assert symbols[name]['st_value']==address,(name,symbols[name]['st_value'])
 assert symbols['MPlayJumpTableCopy']['st_size']==22
 assert symbols['sub_080B6992']['st_size']==20
 literal=symbols['_080B69A8']
 assert literal['st_value']==0x080B69A8 and literal['st_size']==4 and literal['st_info']['type']=='STT_OBJECT'
 assert not any(x.num_relocations() for x in elf.iter_sections() if hasattr(x,'num_relocations'))
print('active C',sorted(active),'natural sizes 22/20, data object4, all entries and final relocations verified')
print('lengths',list(map(len,images)))
diff=[(hex(0x080B6978+i),a,b)for i,(a,b)in enumerate(zip(*images))if a!=b]
print('diff',diff[:30]);assert len(images[0])==len(images[1])==64 and not diff
(r/'strict-results.json').write_text(json.dumps(dict(private_only=True,full_container_bytes=64,target_bytes=24,other40_unchanged=True,exact=True,active_C=sorted(active),natural_sizes=[22,20],shared_data_bytes=4,final_relocations=0,oracle_sha256=hashlib.sha256(Path("tools/tests/fixtures/sdk_flags/m4a_1_read.s").read_bytes()).hexdigest()),indent=2))
