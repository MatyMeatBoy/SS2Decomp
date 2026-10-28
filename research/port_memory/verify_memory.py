"""Original-ROM synthetic memory contracts; no BIOS emulation or native port claim."""
from pathlib import Path
import argparse
import hashlib
import struct
import json
import sys
ROOT = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--rom', default=str(ROOT / 'baserom.gba'))
parser.add_argument('--deps', default=str(ROOT / 'build/port_memory/deps'))
parser.add_argument('--out', default=str(ROOT / 'build/port_memory/memory-results.json'))
args = parser.parse_args()
sys.path.insert(0, args.deps)
from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB, UC_HOOK_INTR
from unicorn import arm_const as r
rom = Path(args.rom).read_bytes()
assert hashlib.sha1(rom).hexdigest() == 'aa1288be9257337abdfe3034898cf6c7aa778fbc', 'EU input differs'
reg = r

def fresh():
    m = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
    for base, size in [(134217728, 16777216), (33554432, 262144), (50331648, 32768)]:
        m.mem_map(base, size)
    m.mem_write(134217728, rom)
    m.mem_write(50340700, struct.pack('<I', 33558528))
    return m

def word(m, a, v):
    m.mem_write(a, struct.pack('<I', v))

def readword(m, a):
    return struct.unpack('<I', m.mem_read(a, 4))[0]

def call(m, address, args=()):
    for i in range(4):
        m.reg_write(getattr(r, 'UC_ARM_REG_R' + str(i)), args[i] if i < len(args) else 0)
    m.reg_write(r.UC_ARM_REG_SP, 50363392)
    m.reg_write(r.UC_ARM_REG_LR, 149946369)
    m.emu_start(address | 1, 149946368, count=20000)
    assert m.reg_read(r.UC_ARM_REG_PC) == 149946368 and m.reg_read(r.UC_ARM_REG_SP) == 50363392
queue = []
for count in [0, 399, 400, 401, 4294967295]:
    for size in [0, 1, 4, 31, 32, 33, 64]:
        m = fresh()
        word(m, 50340696, count)
        before = bytes(m.mem_read(33554432, 262144))
        call(m, 134222664, [33587200, 100708352, size])
        after = bytes(m.mem_read(33554432, 262144))
        expected = bytearray(before)
        if count < 400:
            struct.pack_into('<III', expected, 4096 + count * 12, 33587200, 100708352, size | 2147483648 if size % 32 == 0 else size)
        assert after == expected
        assert readword(m, 50340696) == (count + 1 if count < 400 else count)
        queue.append({'count_before': count, 'size': size, 'enqueued': count < 400})
m = fresh()
events = []

def interrupt(uc, number, user):
    pc = uc.reg_read(r.UC_ARM_REG_PC)
    instruction = struct.unpack('<H', uc.mem_read(pc - 2, 2))[0]
    assert instruction >> 8 == 223
    src = uc.reg_read(r.UC_ARM_REG_R0)
    dest = uc.reg_read(r.UC_ARM_REG_R1)
    control = uc.reg_read(r.UC_ARM_REG_R2)
    events.append({'swi': hex(instruction & 255), 'src': hex(src), 'dest': hex(dest), 'control': hex(control), 'source_byte_at_boundary': uc.mem_read(src, 1)[0]})
m.hook_add(UC_HOOK_INTR, interrupt)
word(m, 50340696, 0)
m.mem_write(33587200, b'\x11')
for size in [31, 32, 64, 0]:
    call(m, 134222664, [33587200, 33591296, size])
m.mem_write(33587200, b'"')
call(m, 134222740)
assert [(e['swi'], e['control']) for e in events] == [('0xb', '0x4000007'), ('0xc', '0x8'), ('0xc', '0x10'), ('0xc', '0x0')]
assert all((e['source_byte_at_boundary'] == 34 for e in events))
assert readword(m, 50340696) == 0
assert readword(m, 33558528) == 33587200
assert not any(m.mem_read(33591296, 64))
cancel_cases = 0
for count in [0, 4]:
    clear = fresh()
    word(clear, 50340696, count)
    clear.mem_write(33558528, bytes([165]) * 48)
    before = bytes(clear.mem_read(33554432, 262144))
    call(clear, 134222840)
    assert readword(clear, 50340696) == 0 and bytes(clear.mem_read(33554432, 262144)) == before
    cancel_cases += 1
result = {'enqueue_cases': len(queue), 'enqueue': queue, 'flush_boundary_events': events, 'count_resets_to0': True, 'cancel_cases': cancel_cases, 'entry_bytes_remain_after_flush': True, 'limitations': ['SWI boundary recording only, not BIOS/CpuSet copy effect or hardware', 'Transient GBA queue uses12B entries; no host64 pointer compatibility inferred', 'size0 BIOS effect unqualified; only actual SWI control0 observed', 'Original own EU ROM, synthetic queue/source data only; no game source edits']}
m = fresh()
events = []

def invariant():
    node = 33554432
    previous = None
    free = set()
    seen = set()
    while True:
        assert node not in seen and 33554432 <= node <= 33816560
        seen.add(node)
        tag = readword(m, node)
        next_node = readword(m, node + 4)
        if previous is not None:
            assert tag & 2147483647 == previous
        if not tag & 2147483648:
            free.add(node)
        if node == 33816560:
            assert next_node == 0
            break
        assert next_node > node
        previous = node
        node = next_node
    head = 50340720
    node = readword(m, head + 12)
    previous = head
    listed = set()
    while node != head:
        assert node in free and node not in listed
        listed.add(node)
        assert readword(m, node + 8) == previous
        previous = node
        node = readword(m, node + 12)
    assert listed == free and readword(m, head + 8) == previous
    return (len(seen), len(free))

def invoke(address, args=(), label=''):
    call(m, address, args)
    result = m.reg_read(reg.UC_ARM_REG_R0)
    nodes, free = invariant()
    events.append({'operation': label, 'arguments': list(args), 'return': hex(result), 'physical_nodes': nodes, 'free_nodes': free})
    return result
call(m, 134222852)
assert invariant() == (3, 1)
pointers = []
for size in [0, 1, 15, 16, 17, 31, 32, 256, 512]:
    p = invoke(134222996, [size], 'front_alloc')
    assert p and p % 4 == 0
    rounded = max(size + 3 & 4294967292, 16)
    assert readword(m, p - 12) - (p - 16) == rounded + 16
    pointers.append(p)
for p in pointers[::2] + pointers[1::2]:
    invoke(134223160, [p], 'free')
assert invariant() == (3, 1)
pointers = []
for size in [1, 17, 256, 32]:
    pointers.append(invoke(134223416, [size], 'tail_alloc'))
for p in reversed(pointers):
    invoke(134223160, [p], 'free')
assert invariant() == (3, 1)
before = bytes(m.mem_read(33554432, 262144))
assert invoke(134222996, [262144], 'too_large') == 0
assert bytes(m.mem_read(33554432, 262144)) == before
p = invoke(134222996, [4294967295], 'u32_rounding_wrap')
assert p == 33554464
assert readword(m, p - 12) == 33554480
invoke(134223160, [p], 'free_wrapped_request')
assert invariant() == (3, 1)
heap_result = {'operations': events, 'checked_invariants': ['physical links monotonic and low31 backlinks', 'used flag bit31', 'free-list exact membership and bidirectional links', 'coalescing after valid releases', 'PC/SP on every original call'], 'limitations': ['valid returned pointers only; no invalid/double/interior-free guarantee', 'UINT_MAX rounding wrap observed, not proposed supported API', 'no native64 allocator implementation or matching proof']}
output = Path(args.out)
output.parent.mkdir(parents=True, exist_ok=True)
output.write_text(json.dumps({'queue': result, 'heap': heap_result, 'source_revision': '156cba5168f32de3d9e92b426c925922a365d1d6', 'qualification': 'Original own EU ROM and synthetic inputs only; no game source fixes or hardware/BIOS/host64 claim'}, indent=2))
print('PASS:35 enqueue,2 cancel,4 ordered SWI boundaries and29 allocator operations')
