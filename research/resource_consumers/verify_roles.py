"""Read-only EU-ROM role checks using synthetic inputs; generated results stay in build/."""
import argparse
import hashlib
import itertools
import json
from pathlib import Path
import struct
import sys


def main():
    root = Path(__file__).resolve().parents[2]
    parser = argparse.ArgumentParser()
    parser.add_argument('--rom', default=str(root / 'baserom.gba'))
    parser.add_argument('--deps', default=str(root / 'build/resource_consumers/deps'))
    parser.add_argument('--out', default=str(root / 'build/resource_consumers/results.json'))
    args = parser.parse_args()
    sys.path.insert(0, args.deps)
    from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB
    from unicorn import arm_const as reg
    rom = Path(args.rom).read_bytes()
    assert hashlib.sha1(rom).hexdigest() == 'aa1288be9257337abdfe3034898cf6c7aa778fbc', 'EU input differs'

    def call(address, arguments, writes):
        machine = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
        for base, size in ((0x08000000, 0x1000000), (0x02000000, 0x40000), (0x03000000, 0x8000)):
            machine.mem_map(base, size)
        machine.mem_write(0x08000000, rom)
        for pointer, data in writes:
            machine.mem_write(pointer, data)
        for index, value in enumerate(arguments):
            machine.reg_write(getattr(reg, 'UC_ARM_REG_R' + str(index)), value & 0xFFFFFFFF)
        machine.reg_write(reg.UC_ARM_REG_SP, 0x03007C00)
        machine.reg_write(reg.UC_ARM_REG_LR, 0x08F00001)
        machine.emu_start(address | 1, 0x08F00000, count=20000)
        assert machine.reg_read(reg.UC_ARM_REG_PC) == 0x08F00000, 'instruction limit'
        assert machine.reg_read(reg.UC_ARM_REG_SP) == 0x03007C00, 'stack not restored'
        return machine.reg_read(reg.UC_ARM_REG_R0), bytes(machine.mem_read(0x02000000, 0x40000))

    def signed32(value):
        return (value + 0x80000000) % 0x100000000 - 0x80000000

    def orientation(a, b, c):
        cross = signed32((b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0]))
        return (1 if cross > 0 else -1 if cross < 0 else 0) & 0xFFFFFFFF

    counts = {'orientation_wrap32': 0, 'different_sign_words': 0, 'palette_offset': 0}
    points = [(0, 0), (1, 0), (0, 1), (0, -1), (0x7FFFFFFF, 1), (-0x80000000, -1)]
    for a, b, c in itertools.product(points[:2], points[1:3], points):
        actual, _ = call(0x080A9910, [0x02001000, 0x02001008, 0x02001010],
                         [(0x02001000, struct.pack('<6i', *a, *b, *c))])
        assert actual == orientation(a, b, c)
        counts['orientation_wrap32'] += 1
    for c, d in itertools.product(points, repeat=2):
        a, b = (0, 0), (1, 0)
        actual, _ = call(0x080A98E0, [0x02001000, 0x02001008, 0x02001010, 0x02001018],
                         [(0x02001000, struct.pack('<8i', *a, *b, *c, *d))])
        assert actual == int(orientation(a, b, c) != orientation(a, b, d))
        counts['different_sign_words'] += 1
    colors = [0, 1, 31, 32, 0x3E0, 0x400, 0x7C00, 0x7FFF, 0x8000, 0xFFFF,
              0x1234, 0x5678, 0x2222, 0x4444, 0x6666, 0x7777]
    for delta in (-128, -6, -1, 0, 1, 6, 127, 255):
        signed_delta = (delta + 128) % 256 - 128
        expected = [sum(min(((((color >> shift) & 31) + signed_delta) & 65535), 31) << shift
                        for shift in (0, 5, 10)) for color in colors]
        _, memory = call(0x08096EFC, [0x02001000, delta], [(0x02001000, struct.pack('<16H', *colors))])
        assert list(struct.unpack('<16H', memory[0x1000:0x1020])) == expected
        assert not any(memory[:0x1000] + memory[0x1020:]), 'write outside palette'
        counts['palette_offset'] += 1

    def word(address): return struct.unpack_from('<I', rom, address - 0x08000000)[0]
    def half(address): return struct.unpack_from('<H', rom, address - 0x08000000)[0]
    resources = {}
    for resource, expected in ((0x40000, 0x0892C028), (0x5004A, 0x08956C00),
                               (0x6004A, 0x08AEF294), (0x8004A, 0x08AF1294)):
        actual, memory = call(0x08006EE0, [resource, 0x08518938], [])
        assert actual == expected and not any(memory)
        resources[hex(resource)] = hex(actual)
    metadata = int(resources['0x5004a'], 16)
    frames = metadata + word(metadata + 4)
    sequences = metadata + word(metadata + 8)
    first_sequence = sequences + word(sequences + 8)
    assert half(metadata + 2) == 1
    assert frames == 0x08956C0C and sequences == 0x0895800C and first_sequence == 0x08958018
    bitmap = int(resources['0x40000'], 16)
    next_section = 0x08518938 + word(0x08518938 + 8 + 5 * 4)
    assert next_section - bitmap == 256 * 128
    assert all(not any(rom[bitmap - 0x08000000 + i * 128 + 64:bitmap - 0x08000000 + (i + 1) * 128])
               for i in range(256)), 'unqualified glyph padding'
    result = {'role_cases': counts, 'resolver_checks': 4, 'resource_addresses': resources,
        'bitmap_slots': 256, 'bitmap_stride': 128, 'bitmap_queued_bytes': 64,
        'sprite_metadata': {'style_bound_inclusive': 1, 'frame_records': hex(frames),
                            'sequence_records': hex(sequences), 'style0_sequence': hex(first_sequence)},
        'qualification': 'Original own EU ROM and synthetic role inputs only; no new C/decoded-data/matching credit',
        'limitations': ['not a Unicode map or proof that every slot/frame is used',
                        'no hardware/timing or all ARM7 unaligned-access validation',
                        'no complete decoder or importer; does not dereference sprite byte0 frameFFFF']}
    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps(result, indent=2))
    print('PASS:', sum(counts.values()), 'role cases and 4 resolver/metadata checks; no matching credit')


if __name__ == '__main__':
    main()
