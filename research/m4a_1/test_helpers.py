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
    from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB, UC_HOOK_MEM_WRITE, UC_HOOK_CODE
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
                assert not 0x080B64D8 <= location < 0x080B70CC, (
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
                              [4, 0x02001000, 0x02001100, 0x03001000], writes, None))

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
                                  [4, 0x02001000, 0x02001100, 0x03001000], writes, None))

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
        if 'M4AExp_Note' in symbols:
            bindings = [symbols['M4AExp_UnlinkChannel'] | 1, 0x080B7A15,
                        symbols['M4AExp_MidiKeyToFreqDependency'] | 1]
            machine.mem_write(0x03001000, struct.pack('<III', *bindings))
        for location, data in writes:
            machine.mem_write(location, data)
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
        assert actual == expected, name + ' differs from original ASM'
        counts[name] = counts.get(name, 0) + 1
    (out / 'results.json').write_text(json.dumps({'cases': counts, 'oracle': 'original EU ROM ASM under Unicorn',
        'limitations': ['RAM and MMIO-register bytes only; no GBA hardware/timing proof',
                        'Special register ABIs are adapted explicitly to the C API; no binary-match claim']}, indent=2))
    print('PASS:', sum(counts.values()), 'original-ASM differential cases;', counts)


if __name__ == '__main__':
    main()
