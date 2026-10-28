"""Deterministic valid-pointer allocator workload against the original own EU ROM."""
import argparse
import hashlib
import json
from pathlib import Path
import platform
import random
import struct
import sys


def main():
    root = Path(__file__).resolve().parents[2]
    parser = argparse.ArgumentParser()
    parser.add_argument('--rom', default=str(root / 'baserom.gba'))
    parser.add_argument('--deps', default=str(root / 'build/port_memory/deps'))
    parser.add_argument('--out', default=str(root / 'build/port_memory/heap-trace.json'))
    parser.add_argument('--steps', type=int, default=500)
    parser.add_argument('--seed', type=lambda text: int(text, 0), default=0x535332)
    args = parser.parse_args()
    if args.steps < 1:
        parser.error('--steps must be positive')
    sys.path.insert(0, args.deps)
    from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB
    from unicorn import arm_const as reg
    rom = Path(args.rom).read_bytes()
    assert hashlib.sha1(rom).hexdigest() == 'aa1288be9257337abdfe3034898cf6c7aa778fbc'
    machine = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
    for base, size in ((0x08000000, 0x1000000), (0x02000000, 0x40000), (0x03000000, 0x8000)):
        machine.mem_map(base, size)
    machine.mem_write(0x08000000, rom)

    def word(address):
        return struct.unpack('<I', machine.mem_read(address, 4))[0]

    def invariant():
        node, previous = 0x02000000, None
        free, seen = set(), set()
        while True:
            assert node not in seen and 0x02000000 <= node <= 0x0203FFF0
            seen.add(node)
            tag, next_node = word(node), word(node + 4)
            if previous is not None:
                assert tag & 0x7FFFFFFF == previous
            if not tag & 0x80000000:
                free.add(node)
            if node == 0x0203FFF0:
                assert next_node == 0
                break
            assert next_node > node
            previous, node = node, next_node
        head = 0x03002370
        node, previous = word(head + 12), head
        listed = set()
        while node != head:
            assert node in free and node not in listed
            listed.add(node)
            assert word(node + 8) == previous
            previous, node = node, word(node + 12)
        assert listed == free and word(head + 8) == previous
        return len(seen), len(free)

    def call(address, argument=0):
        for index in range(4):
            machine.reg_write(getattr(reg, 'UC_ARM_REG_R' + str(index)), argument if index == 0 else 0)
        machine.reg_write(reg.UC_ARM_REG_SP, 0x03007C00)
        machine.reg_write(reg.UC_ARM_REG_LR, 0x08F00001)
        machine.emu_start(address | 1, 0x08F00000, count=20000)
        assert machine.reg_read(reg.UC_ARM_REG_PC) == 0x08F00000
        assert machine.reg_read(reg.UC_ARM_REG_SP) == 0x03007C00
        invariant()
        return machine.reg_read(reg.UC_ARM_REG_R0)

    call(0x08001404)
    assert invariant() == (3, 1)
    rng, live, trace, payload_checks = random.Random(args.seed), {}, [], 0
    for step in range(args.steps):
        if live and (len(live) >= 32 or rng.random() < 0.43):
            pointer = rng.choice(list(live))
            call(0x08001538, pointer)
            del live[pointer]
            trace.append({'op': 'free', 'pointer': hex(pointer)})
        else:
            size = rng.choice((0, 1, 15, 16, 17, 31, 32, 33, 63, 64, 255, 256, 1023, 2048))
            tail = rng.random() < 0.4
            pointer = call(0x08001638 if tail else 0x08001494, size)
            assert pointer and pointer not in live
            length = max((size + 3) & ~3, 16)
            pattern = bytes([step % 251 + 1]) * length
            for old_pointer, old_pattern in live.items():
                assert pointer + length <= old_pointer or old_pointer + len(old_pattern) <= pointer
            machine.mem_write(pointer, pattern)
            live[pointer] = pattern
            trace.append({'op': 'tail' if tail else 'front', 'size': size, 'pointer': hex(pointer),
                          'payload_sha256': hashlib.sha256(pattern).hexdigest()})
        for pointer, pattern in live.items():
            assert word(pointer - 16) & 0x80000000
            assert pointer + len(pattern) <= word(pointer - 12)
            assert bytes(machine.mem_read(pointer, len(pattern))) == pattern
            payload_checks += 1
        invariant()
    final_frees = len(live)
    for pointer in list(live):
        call(0x08001538, pointer)
    assert invariant() == (3, 1)
    output = Path(args.out)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps({'seed': hex(args.seed), 'python': platform.python_version(),
        'steps': args.steps, 'final_frees': final_frees, 'payload_checks': payload_checks, 'trace': trace,
        'source_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        'qualification': 'Original allocator and valid returned pointers only; synthetic payloads; not native-host parity',
        'limits': ['no invalid/double/interior-free proof', 'no native port or new matching credit']}, indent=2))
    print('PASS:', args.steps, 'mixed steps;', payload_checks, 'live-payload checks; final coalescing')


if __name__ == '__main__':
    main()
