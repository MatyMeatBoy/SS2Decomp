"""Differential ARM tests; private dependency/output locations are explicit arguments."""
import argparse
from pathlib import Path
import os
import subprocess
import sys
import shutil
import struct
import json
import hashlib
import re


def main():
    root = Path(__file__).resolve().parents[2]
    parser = argparse.ArgumentParser()
    parser.add_argument('--deps', default=str(root / 'build/m4a_exp/deps'))
    parser.add_argument('--out', default=str(root / 'build/m4a_exp/tests'))
    parser.add_argument('--binutils-dir', help='optional directory containing arm-none-eabi tools')
    parser.add_argument('--cc', help='optional compiler path; default is this checkout\'s agbcc')
    args = parser.parse_args()
    sys.path.insert(0, args.deps)
    from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB, UC_HOOK_MEM_WRITE, UC_HOOK_CODE, UC_HOOK_MEM_READ
    from unicorn.arm_const import UC_ARM_REG_R0, UC_ARM_REG_LR, UC_ARM_REG_SP
    from unicorn import arm_const

    source = Path(__file__).with_name('m4a_1.c')
    if not source.exists():
        raise RuntimeError('experimental C is not implemented')
    out = Path(args.out).resolve()
    out.mkdir(parents=True, exist_ok=True)
    env = os.environ.copy()
    if args.binutils_dir:
        env['PATH'] = args.binutils_dir + os.pathsep + env['PATH']

    def run(command):
        command = [str(x) for x in command]
        command[0] = shutil.which(command[0], path=env['PATH']) or command[0]
        result = subprocess.run(command, env=env, capture_output=True, text=True)
        with (out / 'commands.log').open('a', encoding='utf8') as log:
            log.write(repr(command) + '\n' + result.stdout + result.stderr + '\n')
        result.check_returncode()
        return result.stdout

    run(['arm-none-eabi-cpp', '-nostdinc', '-undef', '-std=gnu17', source, '-o', out / 'core.i'])
    compiler = args.cc or root / ('tools/agbcc/bin/agbcc' + ('.exe' if os.name == 'nt' else ''))
    run([compiler, '-mthumb-interwork', '-O2', '-fhex-asm',
         '-fprologue-bugfix', '-o', out / 'core.s', out / 'core.i'])
    run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-I', root, '-o', out / 'core.o', out / 'core.s'])
    run(['arm-none-eabi-ld', '-Ttext=0x09000000', '-e', 'M4AExp_Clear64',
         '-o', out / 'core.elf', out / 'core.o', '-L', root / 'tools/agbcc/lib', '-lgcc'])
    run(['arm-none-eabi-objcopy', '-O', 'binary', out / 'core.elf', out / 'core.bin'])
    symbols = {}
    for line in run(['arm-none-eabi-nm', '-n', out / 'core.elf']).splitlines():
        parts = line.split()
        if len(parts) == 3:
            symbols[parts[2]] = int(parts[0], 16)
    rom = (root / 'baserom.gba').read_bytes()
    assert hashlib.sha1(rom).hexdigest() == 'aa1288be9257337abdfe3034898cf6c7aa778fbc'
    candidate = (out / 'core.bin').read_bytes()

    def forbid_original_calls(machine, entry):
        if entry >= 0x09000000:
            def reject_original_target(uc, location, size, user):
                assert not (0x080B64D8 <= location < 0x080B70CC or
                            0x03000E3C <= location < 0x0300123C), (
                    'experimental call executed original m4a_1 ASM at ' + hex(location))
            machine.hook_add(UC_HOOK_CODE, reject_original_target)

    def execute(address, value):
        machine = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
        machine.mem_map(0x08000000, 0x02000000)
        machine.mem_write(0x08000000, rom)
        machine.mem_write(0x09000000, candidate)
        machine.mem_map(0x02000000, 0x40000)
        machine.mem_map(0x03000000, 0x8000)
        machine.mem_write(0x02001000, bytes([value]) * 96)
        machine.reg_write(UC_ARM_REG_R0, 0x02001010)
        machine.reg_write(UC_ARM_REG_SP, 0x03007C00)
        machine.reg_write(UC_ARM_REG_LR, 0x090F0001)
        forbid_original_calls(machine, address)
        machine.emu_start(address | 1, 0x090F0000, count=10000)
        assert machine.reg_read(arm_const.UC_ARM_REG_PC) == 0x090F0000, 'clear64 instruction limit reached'
        assert machine.reg_read(UC_ARM_REG_SP) == 0x03007C00, 'clear64 stack was not restored'
        return bytes(machine.mem_read(0x02000000, 0x40000))

    for value in (1, 0x7F, 0xFF):
        original = execute(0x080B6910, value)
        actual = execute(symbols['M4AExp_Clear64'], value)
        assert original == actual, 'clear64 differs from original ASM'
        assert actual[0x1000:0x1060] == bytes([value]) * 16 + bytes(64) + bytes([value]) * 16

    def word(address, value):
        return address, struct.pack('<I', value)

    cases = []
    for source_address in (0x1000, 0x02001800, 0x08F00000):
        cases.append(('GuardRead', 0x080B6992, {2: source_address, 3: 0x98765432},
                      [source_address, 0x98765432], [], 3))
        cases.append(('ReadGuardedByte', 0x080B6990, {2: source_address},
                      [source_address], [(source_address, b'\xA5')], 3))
        cases.append(('ReadTrackByte', 0x080B69AC, {1: 0x02001100},
                      [0x02001100], [word(0x02001140, source_address), (source_address, b'\xA5')], 3))
        cases.append(('ReadTrackByteFromCursor', 0x080B69AE,
                      {1: 0x02001100, 2: source_address}, [0x02001100, source_address],
                      [(source_address, b'\xA5')], 3))
    for previous in (0, 0x02001600):
        for following in (0, 0x02001700):
            writes = [word(0x0200142C, 0x02001100), word(0x02001430, previous),
                      word(0x02001434, following), word(0x02001120, 0x02001400)]
            cases.append(('UnlinkChannel', 0x080B6928, {0: 0x02001400}, [0x02001400], writes, None))
    cases.append(('UnlinkChannel', 0x080B6928, {0: 0x02001400}, [0x02001400], [], None))
    handlers = [('Priority', 0x080B6A38), ('Tempo', 0x080B6A44),
                ('KeyShift', 0x080B6A58), ('Volume', 0x080B6A9C),
                ('Pan', 0x080B6AB0), ('Bend', 0x080B6AC4),
                ('BendRange', 0x080B6AD8), ('LfoDelay', 0x080B6AEC),
                ('ModType', 0x080B6AF8), ('Tune', 0x080B6B10),
                ('LfoSpeed', 0x080B70A4), ('ModDepth', 0x080B70B8)]
    for name, address in handlers:
        for value in (0, 1, 64, 127, 255):
            writes = [word(0x02001140, 0x02001801), (0x02001801, bytes([value])),
                      (0x02001100, b'\x80'), (0x02001118, b'\x01'),
                      (0x02001116, b'\x77'), (0x0200111A, b'\x88'),
                      (0x0200101E, b'\xFF\xFF')]
            cases.append((name, address, {0: 0x02001000, 1: 0x02001100},
                          [0x02001000, 0x02001100], writes, None))
    for mod_type in (0, 1, 2):
        writes = [(0x02001100, b'\x80'), (0x02001118, bytes([mod_type])),
                  (0x02001116, b'\x77'), (0x0200111A, b'\x88')]
        cases.append(('ClearModulation', 0x080B707C, {1: 0x02001100}, [0x02001100], writes, None))
    for key in (0, 64, 128, 255):
        writes = [word(0x02001140, 0x02001800), (0x02001800, bytes([key, 0xBA]))]
        cases.append(('ReadTrackByteUnguarded', 0x080B7098, {1: 0x02001100},
                      [0x02001100], writes, 3))
    for register in (0, 5, 0x7F):
        writes = [word(0x02001140, 0x02001800), (0x02001800, bytes([register, 0xA7]))]
        cases.append(('Port', 0x080B6B24, {0: 0x02001000, 1: 0x02001100},
                      [0x02001000, 0x02001100], writes, None))
    for level in (0, 1, 3):
        writes = [word(0x02001140, 0x02001800), (0x02001102, bytes([level])),
                  word(0x02001144, 0x02002200), word(0x0200114C, 0x02002400)]
        cases.append(('PatternEnd', 0x080B69F4, {0: 0x02001000, 1: 0x02001100},
                      [0x02001000, 0x02001100], writes, None))
    for source_address in (0x1000, 0x02001801):
        writes = [word(0x02001140, source_address), (source_address, b'\x12\x34\x56\x08')]
        cases.append(('Goto', 0x080B69B8, {0: 0x02001000, 1: 0x02001100},
                      [0x02001000, 0x02001100], writes, None))
    for count, counter in ((0, 0), (1, 0), (3, 0), (3, 2), (255, 254), (3, 255)):
        writes = [word(0x02001140, 0x02001800), (0x02001103, bytes([counter])),
                  (0x02001800, bytes([count, 0x12, 0x34, 0x56, 0x08]))]
        cases.append(('Repeat', 0x080B6A08, {0: 0x02001000, 1: 0x02001100},
                      [0x02001000, 0x02001100], writes, None))
    for level in (0, 1, 2, 3):
        writes = [word(0x02001140, 0x02001800), (0x02001102, bytes([level])),
                  (0x02001100, b'\x80'), (0x02001800, b'\x12\x34\x56\x08')]
        cases.append(('Pattern', 0x080B69D8, {0: 0x02001000, 1: 0x02001100},
                      [0x02001000, 0x02001100], writes, None))
    for status in (0, 8, 0x80, 0x43):
        writes = [(0x02001100, b'\x80'), word(0x02001120, 0x02001400),
                  (0x02001400, bytes([status])), word(0x0200142C, 0x02001100),
                  word(0x02001434, 0x02001500), word(0x0200152C, 0x02001100),
                  word(0x02001530, 0x02001400), (0x02001500, b'\x81')]
        cases.append(('Fine', 0x080B6948, {0: 0x02001000, 1: 0x02001100},
                      [0x02001000, 0x02001100], writes, None))
    for tone_base in (0x1000, 0x02001800, 0x08F00000):
        writes = [word(0x02001140, 0x02001900), (0x02001900, b'\x02'),
                  word(0x02001030, tone_base), (tone_base + 24, bytes(range(12)))]
        cases.append(('Voice', 0x080B6A6C, {0: 0x02001000, 1: 0x02001100},
                      [0x02001000, 0x02001100], writes, None))
    for ident in (0x68736D53, 0x68736D54, 0x68736D55, 0):
        for counter in (0, 1, 2, 255):
            writes = [word(0x03007FF0, 0x02002000), word(0x02002000, ident),
                      (0x02002004, bytes([counter])), (0x0200200B, b'\x03')]
            cases.append(('SoundVSync', 0x080B6B3C, {}, [], writes, None))
    for key in (60, 0x80):
        for status in (0x80, 0xC0, 0x04, 0x03):
            writes = [word(0x02001140, 0x02001800), (0x02001800, bytes([key])),
                      (0x02001105, b'\x3C'), word(0x02001120, 0x02001400),
                      (0x02001400, bytes([status])), (0x02001411, b'\x3C')]
            cases.append(('EndTie', 0x080B703C, {0: 0x02001000, 1: 0x02001100},
                          [0x02001000, 0x02001100], writes, None))
    for left, right in ((0, 0), (0xFFFFFFFF, 0xFFFFFFFF), (0x80000000, 2),
                        (0x12345678, 0x9ABCDEF0), (1, 0xFFFFFFFF)):
        cases.append(('MultiplyHigh32', 0x080B64D8, {0: left, 1: right}, [left, right], [], 0))
    cases.append(('CopyJumpTable', 0x080B6978, {0: 0x02003000},
                  [0x02003000, 0x080BB7E8], [(0x02003000, b'\xA5' * 160)], None))
    callback = re.search(r'^thumb (0x[0-9A-Fa-f]+) CgbOscOff$',
                         (root / 'tools/config/functions.cfg').read_text(), re.M)
    oscillator_off = int(callback.group(1), 16) | 1
    for flags in (0, 0x80):
        for status in (0, 0x80):
            for channel_type in (0, 1, 2, 3, 4, 7, 0x10, 0xFF):
                writes = [(0x02001100, bytes([flags])), word(0x02001120, 0x02001400),
                          (0x02001400, bytes([status, channel_type])),
                          word(0x0200142C, 0x02001100), word(0x02001434, 0x02001500),
                          (0x02001500, b'\x80\x02'), word(0x0200152C, 0x02001100),
                          word(0x03007FF0, 0x02002000), word(0x0200202C, oscillator_off)]
                cases.append(('TrackStop', 0x080B6DE0, {0: 0x02001000, 1: 0x02001100},
                              [0x02001000, 0x02001100], writes, None))

    # Note uses an explicit service binding in IWRAM; it is not the original ABI.
    for stream in (b'\x80', b'\x3C\x80', b'\x3C\x64\x80', b'\x3C\x64\x05\x80'):
        for outer_type in (0, 0x40, 0x80):
            for selected_type in (0, 1, 4, 0xC0):
                if outer_type == 0 and selected_type == 0xC0:
                    continue
                tone = 0x02004000 + 60 * 12 if outer_type else 0x02001124
                writes = [(0x02001100, b'\x8F'), (0x02001104, b'\x00\x3C\x64'),
                          (0x0200110C, b'\x40\x20'), (0x0200111D, b'\x04'),
                          word(0x02001140, 0x02003000), (0x02003000, stream),
                          word(0x03007FF0, 0x02002000), (0x02002006, b'\x02'),
                          word(0x0200201C, 0x02005000), word(0x02002030, 0x080B7ADD),
                          word(0x03007430 + 34 * 4, 0x080B6929),
                          (tone, bytes([selected_type, 40, 12, 0xC8])),
                          word(tone + 4, 0x02006000), word(tone + 8, 0x04030201),
                          word(0x02006004, 0x00123456)]
                if outer_type:
                    writes += [(0x02001124, bytes([outer_type])), word(0x02001128, 0x02004000),
                               word(0x0200112C, 0x02007000), (0x0200703C, b'\x3C')]
                cases.append(('Note', 0x080B6E24, {0: 4, 1: 0x02001000, 2: 0x02001100},
                              [4, 0x02001000, 0x02001100, 0x03006000], writes, None))

    for channel_type in (0, 1, 4):
        for status in (0, 0x80, 0x40, 0xC0):
            for old_priority in (3, 4, 5):
                for owner in (0x02001080, 0x02001100, 0x02001200):
                    channel = 0x02002050 if channel_type == 0 else 0x02005000 + (channel_type - 1) * 64
                    writes = [(0x02001100, b'\x80'), (0x02001104, b'\x00\x3C\x64'),
                              (0x02001108, b'\xFE\x7F'), (0x02001110, b'\x60\x50'),
                              (0x0200111B, b'\x03\x04\x04'), word(0x02001140, 0x02003000),
                              (0x02003000, b'\x80'), (0x02001124, bytes([channel_type, 40, 12, 0x18])),
                              word(0x02001128, 0x02006000), word(0x0200112C, 0x04030201),
                              word(0x02006004, 0x123456), word(0x03007FF0, 0x02002000),
                              (0x02002006, b'\x02'), word(0x0200201C, 0x02005000),
                              word(0x02002030, 0x080B7ADD), word(0x03007430 + 34 * 4, 0x080B6929),
                              (channel, bytes([status])), (channel + 0x13, bytes([old_priority])),
                              word(channel + 0x2C, owner), word(owner + 0x20, channel)]
                    if channel_type == 0:
                        writes += [(channel + 0x40, b'\x80'),
                                   (channel + 0x53, bytes([old_priority])),
                                   word(channel + 0x6C, owner)]
                    cases.append(('Note', 0x080B6E24, {0: 4, 1: 0x02001000, 2: 0x02001100},
                                  [4, 0x02001000, 0x02001100, 0x03006000], writes, None))

    for ident in (0, 0x68736D53, 0x68736D54):
        for tempo in (0, 149, 150, 300):
            for flags in (0, 0x80, 0xC0, 0x8F):
                writes = [word(0x02001034, ident), word(0x0200102C, 0x02001100),
                          (0x02001008, b'\x01'), (0x02001020, struct.pack('<HH', tempo, 0)),
                          (0x02001100, bytes([flags])), word(0x02001140, 0x02003000),
                          (0x02003000, b'\xBE\x40\xCF\x3C\x64\x81\xB1'),
                          (0x02001124, b'\x01\x3C\x0C\x18'),
                          word(0x02001128, 0x02006000), word(0x02006004, 0x123456),
                          word(0x03007FF0, 0x03002000), word(0x0300201C, 0x02005000),
                          word(0x03002030, 0x080B7ADD), word(0x03002034, 0x03007430),
                          word(0x03002038, 0x080B6E25),
                          (0x03007430, rom[0xBB7E8:0xBB878])]
                cases.append(('MPlayMain', 0x080B6B74, {0: 0x02001000},
                              [0x02001000, 0x03006000], writes, None))

    sequencer_base = list(writes)
    for phase in (0, 32, 63, 64, 127, 128, 192, 250):
        for speed in (22, 255):
            for modulation_type in (0, 1, 2):
                for delay in (0, 1):
                    writes = sequencer_base + [word(0x02001034, 0x68736D53),
                        (0x02001020, struct.pack('<HH', 150, 0)), (0x02001100, b'\x80\x05'),
                        (0x02001116, bytes([7, 127, modulation_type, speed, phase, 0, delay])),
                        word(0x02001120, 0x02001400), (0x02001400, b'\x80\x01'),
                        (0x02001408, b'\x3C'), (0x02001410, b'\x02\x3C\x64'),
                        word(0x0200142C, 0x02001100)]
                    cases.append(('MPlayMain', 0x080B6B74, {0: 0x02001000},
                                  [0x02001000, 0x03006000], writes, None))
    for interval in (0, 2):
        for counter in (0, 1, 2):
            for volume in (0, 16, 32):
                writes = sequencer_base + [(0x02001024, struct.pack('<HHH', interval, counter, volume)),
                    (0x02001100, b'\x80'), word(0x02001120, 0x02001400),
                    (0x02001400, b'\x80\x00'), word(0x0200142C, 0x02001100)]
                cases.append(('FadeOutDependency', 0x080B7994, {0: 0x02001000},
                              [0x02001000], writes, None))

    for flags in (0x80, 0x81, 0x83, 0x84, 0x88, 0x8C, 0x8F):
        for channel_type in (0, 1, 4):
            for status in (0, 0x80, 0x40):
                writes = sequencer_base + [word(0x02001034, 0x68736D53),
                    (0x02001020, struct.pack('<HH', 0, 0)), (0x02001100, bytes([flags, 1])),
                    (0x02001108, b'\xFE\x7F'), (0x02001110, b'\x60\x50'),
                    word(0x02001120, 0x02001400), (0x02001400, bytes([status, channel_type])),
                    (0x02001408, b'\x3C'), (0x02001410, b'\x02\x3C\x64'),
                    word(0x02001424, 0x02006000), word(0x0200142C, 0x02001100)]
                cases.append(('MPlayMain', 0x080B6B74, {0: 0x02001000},
                              [0x02001000, 0x03006000], writes, None))

    for reverb in (0, 64, 255):
        for dma_counter in (1, 2, 3):
            for status in (0, 0x80, 3, 2, 1, 0x40, 4, 0xC0):
                writes = [word(0x03007FF0, 0x02002000), word(0x02002000, 0x68736D53),
                    (0x02002004, bytes([dma_counter, reverb, 1, 15])), (0x0200200B, b'\x03'),
                    word(0x02002010, 16), word(0x02002018, 1), word(0x0200201C, 0x02008000),
                    word(0x02002028, 0x080B7C3D),
                    (0x02002050, bytes([status, 8, 127, 255, 30, 200, 80, 128, 60, 100])),
                    (0x0200205C, b'\x20\x02'), word(0x02002068, 40), word(0x02002074, 0x02006000),
                    word(0x02002078, 0x02006010), word(0x0200600C, 40),
                    (0x02006010, bytes(range(64))),
                    (0x02002350, bytes([0x80, 0x7F, 0xFF, 0x01]) * (0xC60 // 4)),
                    (0x03000E3C, rom[0xB656C:0xB696C])]
                cases.append(('SoundMain', 0x080B64E8, {}, [0x03006000], writes, None))

    mixer_base = list(writes)
    for fixed in (0, 8):
        for loop in (0, 0x40):
            for length in (1, 3, 4, 5, 15, 16, 17, 40):
                for increment in (0, 0x00400000, 0x00800000, 0x01400000):
                    writes = mixer_base + [(0x02002004, b'\x01\x00\x01\x0F'),
                        (0x02002050, bytes([0x80, fixed, 255, 255, 255, 200, 80, 128])),
                        (0x02006003, bytes([loop])), word(0x02006008, 0),
                        word(0x0200600C, length), word(0x02002070, increment),
                        (0x02006010, bytes([128, 255, 0, 1, 127, 64, 192, 32]) * 8)]
                    cases.append(('SoundMain', 0x080B64E8, {}, [0x03006000], writes, None))
    for count in (16, 20, 28, 32):
        for fixed in (0, 8):
            for channels in (0, 1, 3):
                writes = mixer_base + [(0x02002004, bytes([1, 0, channels, 15])), word(0x02002010, count),
                    (0x02006010, bytes([128, 255, 0, 1, 127, 64, 192, 32]) * 8),
                    (0x02006003, b'\x40'), word(0x02006008, 7), word(0x0200600C, 40)]
                for index in range(max(1, channels)):
                    channel = 0x02002050 + index * 64
                    writes += [(channel, bytes([0x11, fixed, 255, 255])), (channel + 9, b'\xFF'),
                        word(channel + 0x18, 40), word(channel + 0x1C, 0x00500000),
                        word(channel + 0x20, 0x01400000), word(channel + 0x24, 0x02006000),
                        word(channel + 0x28, 0x02006010)]
                cases.append(('SoundMain', 0x080B64E8, {}, [0x03006000], writes, None))

    for status in (0x80, 3, 2, 1, 0x40, 4):
        for envelope in (0, 1, 254, 255):
            for echo in (0, 1, 255):
                writes = mixer_base + [(0x02002004, b'\x01\x00\x01\x0F'),
                    (0x02002050, bytes([status, 8, 255, 255, 255, 0, 0, 0, 60, envelope])),
                    (0x0200205C, bytes([echo, 1])), word(0x0200600C, 40)]
                cases.append(('SoundMain', 0x080B64E8, {}, [0x03006000], writes, None))
    for initial_line, next_line, budget in ((159, 160, 1), (160, 161, 1), (227, 228, 1),
                                           (0, 1, 1), (0, 2, 1), (160, 160, 1)):
        writes = mixer_base + [(0x0200200C, bytes([budget])),
            (0x03006100, bytes([2, initial_line, next_line])), (0x04000006, bytes([initial_line]))]
        cases.append(('SoundMain', 0x080B64E8, {}, [0x03006000], writes, None))

    for first_status in (0, 0x80000000):
        writes = sequencer_base + [word(0x02001034, 0x68736D53),
            (0x02001020, struct.pack('<HH', 150, 0)), (0x02001100, b'\x80'),
            word(0x03003034, 0x68736D53), word(0x03003004, first_status),
            word(0x03003038, 0x080B6B75), word(0x0300303C, 0x02001000),
            word(0x0300302C, 0x02001200), (0x03003008, b'\x01')]
        cases.append(('MPlayMain', 0x080B6B74, {0: 0x03003000},
                      [0x03003000, 0x03006000], writes, None))

    def invoke(address, registers, writes, return_register):
        machine = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
        machine.mem_map(0, 0x4000)
        machine.mem_map(0x08000000, 0x02000000)
        machine.mem_write(0x08000000, rom)
        machine.mem_write(0x09000000, candidate)
        machine.mem_map(0x02000000, 0x40000)
        machine.mem_map(0x03000000, 0x8000)
        machine.mem_map(0x04000000, 0x1000)
        io_writes = []
        def record_write(uc, access, location, size, value, user):
            if 0x04000000 <= location < 0x04001000:
                io_writes.append((location, size, value))
        machine.hook_add(UC_HOOK_MEM_WRITE, record_write)
        forbid_original_calls(machine, address)
        machine.mem_write(0x03007430, rom[0xBB7E8:0xBB878])
        for location, data in writes:
            machine.mem_write(location, data)
        if address >= 0x09000000:
            def bind(name, *pointers):
                assert name in symbols, 'missing experimental binding: ' + name
                for index, pointer in enumerate(pointers):
                    machine.reg_write(getattr(arm_const, 'UC_ARM_REG_R' + str(index)), pointer)
                machine.reg_write(UC_ARM_REG_SP, 0x03007C00)
                machine.reg_write(UC_ARM_REG_LR, 0x090F0001)
                machine.emu_start(symbols[name] | 1, 0x090F0000, count=10000)
                assert machine.reg_read(arm_const.UC_ARM_REG_PC) == 0x090F0000
                assert machine.reg_read(UC_ARM_REG_SP) == 0x03007C00
            bind('M4AExp_BindKnownJumpTable', 0x03007430)
            bind('M4AExp_InitDefaultServices', 0x03006000, 0x03007430)
            sound = struct.unpack('<I', machine.mem_read(0x03007FF0, 4))[0]
            if sound:
                bind('M4AExp_BindKnownSoundCallbacks', sound)
                head = struct.unpack('<I', machine.mem_read(sound + 0x24, 4))[0]
                if head:
                    bind('M4AExp_BindKnownPlayerCallback', head)
            if address == symbols.get('M4AExp_MPlayMain'):
                bind('M4AExp_BindKnownPlayerCallback', registers[0])
        line_values = bytes(machine.mem_read(0x03006100, 4))
        if line_values[0]:
            line_reads = [0]
            def vcount_read(uc, access, location, size, value, user):
                if location == 0x04000006:
                    index = min(line_reads[0], line_values[0] - 1)
                    uc.mem_write(location, bytes([line_values[index + 1]]))
                    line_reads[0] += 1
            machine.hook_add(UC_HOOK_MEM_READ, vcount_read)
        for index, value in registers.items():
            machine.reg_write(getattr(arm_const, 'UC_ARM_REG_R' + str(index)), value)
        machine.reg_write(UC_ARM_REG_SP, 0x03007C00)
        machine.reg_write(UC_ARM_REG_LR, 0x090F0001)
        try:
            machine.emu_start(address | 1, 0x090F0000, count=10000)
        except Exception:
            print('oracle failure', hex(address), 'PC', hex(machine.reg_read(arm_const.UC_ARM_REG_PC)), writes)
            raise
        assert machine.reg_read(arm_const.UC_ARM_REG_PC) == 0x090F0000, 'instruction limit reached'
        assert machine.reg_read(UC_ARM_REG_SP) == 0x03007C00, 'stack was not restored'
        value = None if return_register is None else machine.reg_read(
            getattr(arm_const, 'UC_ARM_REG_R' + str(return_register)))
        return bytes(machine.mem_read(0x02000000, 0x40000)), bytes(machine.mem_read(0x04000000, 0x1000)), value, io_writes

    counts = {'Clear64': 3}
    for name, original_address, registers, arguments, writes, return_register in cases:
        symbol = 'M4AExp_' + name
        assert symbol in symbols, 'missing experimental implementation: ' + symbol
        expected = invoke(original_address, registers, writes, return_register)
        actual = invoke(symbols[symbol], dict(enumerate(arguments)), writes,
                        None if return_register is None else 0)
        if actual != expected:
            differences = [(hex(0x02000000 + index), left, right)
                           for index, (left, right) in enumerate(zip(expected[0], actual[0])) if left != right]
            print('different case', name, writes, 'EWRAM first differences', differences[:16])
        assert actual == expected, name + ' differs from original ASM'
        counts[name] = counts.get(name, 0) + 1
    # Adapter checks are separate from original-ASM differential cases.
    table = list(struct.unpack('<36I', rom[0xBB7E8:0xBB878]))
    table[8] = 0x080B7131  # arbitrary existing C override must remain unchanged
    entries = json.loads(source.with_name('inventory.json').read_text())['entries']
    translated = {int(row['address'], 16) | 1: symbols[row['experimental_api']] | 1
                  for row in entries if row.get('experimental_api') in symbols}
    expected_table = [translated.get(pointer, pointer) for pointer in table]
    for table_input in (table, expected_table):
        state = invoke(symbols['M4AExp_BindKnownJumpTable'], {0: 0x02009000},
                       [(0x02009000, struct.pack('<36I', *table_input))], None)[0]
        assert list(struct.unpack('<36I', state[0x9000:0x9090])) == expected_table
    for function, offset, original_pointer, symbol in (
            ('M4AExp_BindKnownSoundCallbacks', 0x20, 0x080B6B75, 'M4AExp_MPlayMain'),
            ('M4AExp_BindKnownSoundCallbacks', 0x38, 0x080B6E25, 'M4AExp_Note'),
            ('M4AExp_BindKnownPlayerCallback', 0x38, 0x080B6B75, 'M4AExp_MPlayMain')):
        for pointer in (original_pointer, 0x080B7131):
            state = invoke(symbols[function], {0: 0x02009000},
                           [word(0x02009000 + offset, pointer)], None)[0]
            expected_pointer = symbols[symbol] | 1 if pointer == original_pointer else pointer
            assert struct.unpack_from('<I', state, 0x9000 + offset)[0] == expected_pointer

    for fade in (0x080B7995, 0x080B7131):
        service_table = expected_table.copy()
        service_table[32] = fade
        state = invoke(symbols['M4AExp_InitDefaultServices'], {0: 0x02009200, 1: 0x02009000},
                       [(0x02009000, struct.pack('<36I', *service_table))], None)[0]
        expected_services = [service_table[34], service_table[33],
            symbols['M4AExp_MidiKeyToFreqDependency'] | 1,
            symbols['M4AExp_FadeOutDependency'] | 1 if fade == 0x080B7995 else fade, service_table[35]]
        assert list(struct.unpack('<5I', state[0x9200:0x9214])) == expected_services

    (out / 'results.json').write_text(json.dumps({'cases': counts, 'binding_adapter_checks': 10, 'oracle': 'original EU ROM ASM under Unicorn',
        'limitations': ['RAM and MMIO-register bytes only; no GBA hardware/timing proof',
                        'Special register ABIs are adapted explicitly to the C API; no binary-match claim']}, indent=2))
    print('PASS:', sum(counts.values()), 'original-ASM differential cases;', counts)


if __name__ == '__main__':
    main()
