#!/usr/bin/env python3
from pathlib import Path
import argparse
import subprocess, sys, json, itertools, random, struct, re
ROOT = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(description='Execute generic SDK condition-code fixtures; no ROM required.')
parser.add_argument('--compiler', type=Path, default=ROOT / 'tools/agbcc_sdk_cc/bin/agbcc')
parser.add_argument('--reference-compiler', type=Path, default=ROOT / 'tools/agbcc_tst/bin/agbcc')
parser.add_argument('--deps', type=Path)
parser.add_argument('--out', type=Path, default=ROOT / 'build/sdk_cc_reuse_tests')
args = parser.parse_args()
if args.deps:
    sys.path.insert(0, str(args.deps.resolve()))

def executable(path):
    path = path.resolve()
    return path.with_suffix('.exe') if not path.is_file() and path.with_suffix('.exe').is_file() else path
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB
from unicorn.arm_const import *
from elftools.elf.elffile import ELFFile
root = args.out.resolve()
root.mkdir(parents=True, exist_ok=True)
cc = executable(args.compiler)
base = 16777216
stop = base + 61440
data = 33554432
stack = 50331648
vals = [0, 1, 2, 3, 2147483647, 2147483648, 4294967295, 1431655765, 2863311530]
rng = random.Random(4408146)
pairs = list(itertools.product(vals, repeat=2)) + [(rng.getrandbits(32), rng.getrandbits(32)) for _ in range(64)]

def expected(n, a, b, initial):
    r = a & b
    if n == 'cc_and_call_taken':
        return 17 if r == 0 else 23 if r & 0x80000000 else 29
    if n == 'cc_and_opaque_taken':
        return 11 if r != 0 else 17
    if n == 'cc_and_postinc':
        return 11 if r == 0 else 17
    if n == 'cc_add_ge':
        return 17 if (a+b)&2147483648 else 11
    if n == 'cc_add_ordered_future':
        r=(a+b)&4294967295
        return 11 if r&2147483648 else 13 if r else 17
    if n in ['cc_add_sign', 'cc_add_opaque', 'cc_add_opaque_taken']:
        return 11 if (a+b)&2147483648 else 17
    if n == 'cc_add_gt':
        r=(a+b)&4294967295
        return 11 if 0<r<2147483648 else 17
    if n == 'cc_cmp_signed':
        # Convert unsigned test inputs to the fixture's signed interpretation.
        signed=lambda v:v if v<2147483648 else v-4294967296
        return 11 if signed(a)<signed(b) else 13 if a==b else 17
    if n == 'cc_cmp_fallthrough':
        return 13 if a == b else 17
    if n == 'cc_cmp_join':
        return 11 if not(initial&1) and a<b else 13 if a==b else 17
    if n == 'cc_cmp_shared':
        return 11 if a < b else 17 if a > b else 11 if initial & 1 else 13
    if n == 'cc_cmp_changed':
        return 11 if a < b else 13 if a + 1 & 4294967295 == b else 17
    if n == 'cc_and_opaque':
        return 11 if r == 0 else 17
    if n in ['cc_and_eq', 'cc_and_two_stores', 'cc_and_volatile']:
        return 11 if r == 0 else 17
    if n == 'cc_and_ne':
        return 11 if r != 0 else 17
    if n == 'cc_and_signed':
        return 23 if 0 < r < 2147483648 else 29
    if n == 'cc_and_mixed':
        return 3 if r == 0 else 5 if r & 2147483648 else 7
    if n.startswith('cc_cmp_'):
        return 11 if a < b else 13 if a == b else 17
    if n == 'cc_and_clobber':
        return 23 if r & 2147483648 else 29
    raise AssertionError(n)
report = []
for profile, compiler, extra in [('reference', executable(args.reference_compiler), []), ('off', cc, []), ('on', cc, ['-fthumb-cc-reuse']), ('standalone', cc, ['-fthumb-cc-reuse']), ('label', cc, ['-fthumb-cc-reuse', '-fthumb-label-cc-reuse', '-fthumb-sign-cc-reuse']), ('label_standalone', cc, ['-fthumb-cc-reuse', '-fthumb-label-cc-reuse', '-fthumb-sign-cc-reuse']), ('label_without_base', cc, ['-fthumb-label-cc-reuse']), ('sign', cc, ['-fthumb-cc-reuse', '-fthumb-sign-cc-reuse']), ('sign_without_base', cc, ['-fthumb-sign-cc-reuse'])]:
    stem = root / profile
    subprocess.run(['arm-none-eabi-cpp', '-undef', '-nostdinc', ROOT / 'tools/tests/fixtures/sdk_cc_reuse_conditions.c', '-o', stem.with_suffix('.i')], check=True)
    tst_flags = [] if profile in ['standalone', 'label_standalone'] else ['-ftst']
    subprocess.run([str(compiler), '-O2', '-mthumb-interwork', '-fprologue-bugfix', *tst_flags, *extra, stem.with_suffix('.i'), '-o', stem.with_suffix('.s')], check=True)
    subprocess.run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-o', stem.with_suffix('.o'), stem.with_suffix('.s')], check=True)
    subprocess.run(['arm-none-eabi-ld', '-Ttext=0x1000000', '-e', 'cc_and_eq', '-o', stem.with_suffix('.elf'), stem.with_suffix('.o')], check=True)
    assembly = stem.with_suffix('.s').read_text()
    assert re.search(r'^\s+bl\s+sdk_cc_identity\b', assembly, re.M), 'call control was inlined'
    identity = assembly.split('\nsdk_cc_identity:\n', 1)[1].split('\n.Lfe', 1)[0]
    assert identity.strip() == 'bx\tlr', 'identity control must preserve incoming flags'

    def compare_count(name):
        body = assembly.split('\n' + name + ':\n', 1)[1]
        body = re.split('\\n\\.Lfe[0-9]+:', body, 1)[0]
        return len(re.findall('^\\s+cmp\\s', body, re.M))
    counts = {n: compare_count(n) for n in ['cc_cmp_chain', 'cc_cmp_store_chain', 'cc_cmp_signed', 'cc_cmp_opaque_label', 'cc_cmp_join', 'cc_and_eq', 'cc_and_ne', 'cc_and_signed', 'cc_and_mixed', 'cc_and_two_stores', 'cc_cmp_shared', 'cc_and_volatile', 'cc_and_opaque', 'cc_cmp_changed', 'cc_and_opaque_taken', 'cc_and_postinc']}
    if profile in ['on', 'standalone', 'label', 'label_standalone', 'sign']:
        assert counts['cc_and_eq'] == counts['cc_and_ne'] == counts['cc_and_two_stores'] == 0, counts
        assert counts['cc_cmp_shared'] == 1, counts
        assert counts['cc_and_signed'] >= 1 and counts['cc_and_mixed'] >= 1, counts
        assert counts['cc_and_volatile'] >= 1 and counts['cc_and_opaque'] >= 1, counts
        assert counts['cc_and_opaque_taken'] >= 1 and counts['cc_and_postinc'] >= 1, counts
        assert counts['cc_cmp_changed'] == 2, counts
    else:
        assert counts['cc_and_eq'] == counts['cc_and_ne'] == counts['cc_and_two_stores'] == 1, counts
        assert counts['cc_cmp_shared'] == 2, counts
    if profile in ['label', 'label_standalone']:
        assert counts['cc_cmp_chain'] == counts['cc_cmp_store_chain'] == counts['cc_cmp_signed'] == 1, counts
    else:
        assert counts['cc_cmp_chain'] == counts['cc_cmp_store_chain'] == counts['cc_cmp_signed'] == 2, counts
    assert counts['cc_cmp_opaque_label'] == 3, counts
    assert counts['cc_cmp_join'] >= 2, counts
    assert compare_count('cc_cmp_fallthrough') == 3
    assert compare_count('cc_add_sign') == (0 if profile in ['label','label_standalone','sign'] else 1)
    assert compare_count('cc_add_gt') == 1
    assert compare_count('cc_add_ge') == (0 if profile in ['label','label_standalone','sign'] else 1)
    assert compare_count('cc_add_opaque') == compare_count('cc_add_opaque_taken') == 2
    assert compare_count('cc_add_ordered_future') >= 1
    if profile in ['label', 'label_standalone', 'sign']:
        for name, suffix in [('cc_add_sign', 'mi'), ('cc_add_ge', 'pl')]:
            body = assembly.split('\n' + name + ':\n', 1)[1].split('\n.Lfe', 1)[0]
            assert re.search(r'^\s+b' + suffix + r'\s', body, re.M), (profile, name, body)

    with stem.with_suffix('.elf').open('rb') as f:
        elf = ELFFile(f)
        code = elf.get_section_by_name('.text').data()
        syms = {s.name: (s['st_value'] & ~1) - base for s in elf.get_section_by_name('.symtab').iter_symbols() if s.name.startswith('cc_')}
    if profile == 'reference':
        reference = code
    if profile in ['off', 'label_without_base', 'sign_without_base']:
        assert code == reference, 'disabled option changed bytes'
    mu = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
    mu.mem_map(base, 65536)
    mu.mem_write(base, code)
    mu.mem_map(data, 4096)
    mu.mem_map(stack, 4096)
    callee = [UC_ARM_REG_R4, UC_ARM_REG_R5, UC_ARM_REG_R6, UC_ARM_REG_R7, UC_ARM_REG_R8, UC_ARM_REG_R9, UC_ARM_REG_R10, UC_ARM_REG_R11]

    def execute(n, a, b, flags, initial=0):
        mu.reg_write(UC_ARM_REG_CPSR, flags << 28 | 48)
        for reg, v in [(UC_ARM_REG_R0, a), (UC_ARM_REG_R1, b), (UC_ARM_REG_R2, data), (UC_ARM_REG_R3, a ^ b), (UC_ARM_REG_R12, 305419896)]:
            mu.reg_write(reg, v)
        saved = {reg: 1145307136 + i * 4369 ^ a ^ b for i, reg in enumerate(callee)}
        for reg, v in saved.items():
            mu.reg_write(reg, v & 4294967295)
        mu.reg_write(UC_ARM_REG_SP, stack + 4080)
        mu.reg_write(UC_ARM_REG_LR, stop | 1)
        mu.mem_write(data, struct.pack('<II', initial, 2779096485))
        mu.emu_start(base + syms[n] | 1, stop, count=1000)
        ok = mu.reg_read(UC_ARM_REG_PC) == stop and mu.reg_read(UC_ARM_REG_SP) == stack + 4080 and all((mu.reg_read(k) == v & 4294967295 for k, v in saved.items()))
        return (ok, mu.reg_read(UC_ARM_REG_R0), bytes(mu.mem_read(data, 8)))
    tested = 0
    for name in syms:
        if name == 'cc_negative_spin':
            continue
        for a, b in pairs:
            for flags in range(16):
                for initial in [0, 1] if name in ['cc_cmp_shared', 'cc_cmp_join'] else [0]:
                    ok, result, memory = execute(name, a, b, flags, initial)
                    want = expected(name, a, b, initial)
                    assert ok and result == want, (profile, name, hex(a), hex(b), flags, result, want, ok)
                    stored = ((a+b)&4294967295) if name.startswith('cc_add_') else want if name == 'cc_cmp_shared' else a if name.startswith('cc_cmp_') else a & b
                    assert struct.unpack('<I', memory[:4])[0] == stored
                    if name == 'cc_and_two_stores':
                        assert struct.unpack('<I', memory[4:])[0] == stored
                    if name == 'cc_and_postinc':
                        assert struct.unpack('<I', memory[4:])[0] == want
                    if name == 'cc_and_clobber':
                        assert struct.unpack('<I', memory[4:])[0] == stored + 1 & 4294967295
                    tested += 1
    assert not execute('cc_negative_spin', 0, 0, 0)[0]
    report.append(dict(profile=profile, cases=tested, bytes=len(code), negative_control_rejected=True, compare_counts=counts))
    print(report[-1], flush=True)
(root / 'runtime-report.json').write_text(json.dumps(report, indent=2) + '\n')
