from sdk_postdec_common import setup, ROOT
r,cc,options=setup('target')
namespace={'r':r,'cc':cc,'ROOT':ROOT}
for name in ['check_reader.py','test_reader.py','test_negatives.py']:
    exec(compile((r/name).read_text(),str(r/name),'exec'),namespace)
