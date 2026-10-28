"""Persistent synthetic multiframe engine comparison; no ROM assets are exported."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import struct
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[2]
SOUND, PLAYER, TRACK, TABLE, SERVICES = 0x02002000, 0x02001000, 0x02001100, 0x03007430, 0x03006000


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--deps', default=str(ROOT / 'build/m4a_exp/deps'))
    parser.add_argument('--out', default=str(ROOT / 'build/m4a_exp/tests'))
    parser.add_argument('--binutils-dir')
    parser.add_argument('--cc')
    parser.add_argument('--skip-build', action='store_true', help='reuse the last helper-suite candidate object')
    args = parser.parse_args()
    out = Path(args.out).resolve()
    if not args.skip_build:
        command = [sys.executable, str(Path(__file__).with_name('test_helpers.py')),
                   '--deps', args.deps, '--out', str(out)]
        for option, value in (('--binutils-dir', args.binutils_dir), ('--cc', args.cc)):
            if value:
                command += [option, value]
        subprocess.run(command, check=True)
    sys.path.insert(0, args.deps)
    from unicorn import Uc, UC_ARCH_ARM, UC_MODE_THUMB, UC_HOOK_CODE, UC_HOOK_MEM_WRITE
    from unicorn import arm_const as reg
    env = os.environ.copy()
    if args.binutils_dir:
        env['PATH'] = args.binutils_dir + os.pathsep + env['PATH']
    nm = shutil.which('arm-none-eabi-nm', path=env['PATH'])
    symbols = {}
    for line in subprocess.check_output([nm, '-n', str(out / 'core.elf')], text=True).splitlines():
        parts = line.split()
        if len(parts) == 3:
            symbols[parts[2]] = int(parts[0], 16)
    rom = (ROOT / 'baserom.gba').read_bytes()
    assert hashlib.sha1(rom).hexdigest() == 'aa1288be9257337abdfe3034898cf6c7aa778fbc'
    candidate = (out / 'core.bin').read_bytes()
    inventory = json.loads(Path(__file__).with_name('inventory.json').read_text())
    translations = {int(row['address'], 16) | 1: symbols[row['experimental_api']] | 1
                    for row in inventory['entries'] if row.get('experimental_api') in symbols}
    reverse = {value: key for key, value in translations.items()}

    class Engine:
        def __init__(self, experimental, settings):
            self.experimental = experimental
            self.machine = Uc(UC_ARCH_ARM, UC_MODE_THUMB)
            m = self.machine
            for address, size in ((0, 0x4000), (0x08000000, 0x02000000),
                                  (0x02000000, 0x40000), (0x03000000, 0x8000), (0x04000000, 0x1000)):
                m.mem_map(address, size)
            m.mem_write(0x08000000, rom)
            m.mem_write(0x09000000, candidate)
            m.mem_write(0x03000E3C, rom[0xB656C:0xB696C])
            m.mem_write(TABLE, rom[0xBB7E8:0xBB878])
            self.io = []
            self.visits = {}
            entries = {'SoundMain': 0x080B64E8, 'MPlayMain': 0x080B6B74, 'Note': 0x080B6E24,
                       'VSync': 0x080B6B3C, 'TrackStop': 0x080B6DE0, 'Goto': 0x080B69B8}
            if experimental:
                entries = {name: symbols['M4AExp_' + ('SoundVSync' if name == 'VSync' else name)]
                           for name in entries}
            by_address = {address: name for name, address in entries.items()}
            def count_entry(uc, location, size, user):
                if location in by_address:
                    name = by_address[location]
                    self.visits[name] = self.visits.get(name, 0) + 1
            m.hook_add(UC_HOOK_CODE, count_entry)
            def io_write(uc, access, location, size, value, user):
                if 0x04000000 <= location < 0x04001000:
                    self.io.append((location, size, value))
            m.hook_add(UC_HOOK_MEM_WRITE, io_write)
            if experimental:
                def prohibit(uc, location, size, user):
                    assert not (0x080B64D8 <= location < 0x080B70CC or
                                0x03000E3C <= location < 0x0300123C), hex(location)
                m.hook_add(UC_HOOK_CODE, prohibit)
            self.word(0x03007FF0, SOUND)
            self.word(SOUND, 0x68736D53)
            self.bytes(SOUND + 4, bytes([settings.get('period', 3), settings.get('reverb', 0), settings.get('channels', 2), 15]))
            self.byte(SOUND + 0x0B, settings.get('period', 3))
            self.word(SOUND + 0x10, settings.get('count', 16))
            self.word(SOUND + 0x18, 1)
            self.word(SOUND + 0x1C, 0x02008000)
            self.word(SOUND + 0x20, 0x080B6B75)
            self.word(SOUND + 0x24, PLAYER)
            self.word(SOUND + 0x28, 0x080B7C3D)
            self.word(SOUND + 0x2C, 0x080B7B85)
            self.word(SOUND + 0x30, 0x080B7ADD)
            self.word(SOUND + 0x34, TABLE)
            self.word(SOUND + 0x38, 0x080B6E25)
            for index in range(4):
                self.byte(0x02008000 + index * 64 + 0x1C, 0xFF)
            self.players = [PLAYER]
            self.player(PLAYER, TRACK, 2)
            self.stream(TRACK, 0x02003000, 60, 4, settings, loop=settings.get('song_loop', False))
            self.stream(TRACK + 80, 0x02003100, 67, 5, settings)
            # Fresh synthetic wave data and voice records; no game asset bytes.
            self.bytes(0x02004000, bytes([settings.get('type', 8), 60, 12, 0x18]))
            self.word(0x02004004, 0x02006000)
            self.bytes(0x02004008, bytes([255, 200, 80, 128]))
            self.byte(0x02006003, 0x40 if settings.get('wave_loop', True) else 0)
            self.word(0x02006004, 0x01000000)
            self.word(0x02006008, 4)
            self.word(0x0200600C, 12)
            self.bytes(0x02006010, bytes([128, 255, 0, 1, 127, 64, 192, 32]) * 8)
            if settings.get('chain'):
                child = 0x02001400
                self.players.append(child)
                self.player(child, 0x02001500, 1)
                self.word(PLAYER + 0x38, 0x080B6B75)
                self.word(PLAYER + 0x3C, child)
                self.stream(0x02001500, 0x02003200, 72, 8, settings)
            if settings.get('override'):
                self.word(TABLE + 28 * 4, 0x080B844D)
                self.word(TABLE + 8 * 4, 0x080B82F5)  # actual existing C ply_memacc
                for player in self.players:
                    self.word(player + 0x18, 0x02007000)
            if experimental:
                self.call('M4AExp_BindKnownJumpTable', TABLE)
                self.call('M4AExp_BindKnownSoundCallbacks', SOUND)
                for player in self.players:
                    self.call('M4AExp_BindKnownPlayerCallback', player)
                self.call('M4AExp_InitDefaultServices', SERVICES, TABLE)
            self.io.clear()

        def bytes(self, address, value): self.machine.mem_write(address, value)
        def byte(self, address, value): self.bytes(address, bytes([value]))
        def word(self, address, value): self.bytes(address, struct.pack('<I', value))
        def half(self, address, value): self.bytes(address, struct.pack('<H', value))

        def player(self, address, tracks, count):
            self.word(address + 0x34, 0x68736D53)
            self.word(address + 0x2C, tracks)
            self.word(address + 0x30, 0x02004000)
            self.byte(address + 8, count)
            self.half(address + 0x20, 150)

        def stream(self, track, address, key, priority, settings, loop=False):
            self.byte(track, 0xC0)
            self.word(track + 0x40, address)
            data = bytearray([0xBD, 0, 0xBE, 127, 0xBF, 64, 0xBA, priority])
            if settings.get('override'):
                data += bytes([0xB9, 0, 0, 7])
                data += bytes([0xB9, 6, 0, 8])
                false_pointer = len(data)
                data += bytes(4)
                data += bytes([0xB9, 1, 0, 1, 0xB9, 6, 0, 8])
                true_pointer = len(data)
                data += bytes(4)
                guard_address = address + len(data)
                data += bytes([0xB1])
                struct.pack_into('<I', data, false_pointer, guard_address)
                struct.pack_into('<I', data, true_pointer, address + len(data))
                data += bytes([0xCD, 2, 0, 0xCD, 4, 128])  # real xcmd type/attack
            if settings.get('lfo'):
                data += bytes([0xC2, 22, 0xC4, 64, 0xC5, 0, 0xC3, 2])
            loop_address = address + len(data)
            data += bytes([0xD3, key, 100, 0x84, key + 2, 90, 0x86])
            if loop:
                data += bytes([0xB2]) + struct.pack('<I', loop_address)
            else:
                data += bytes([0xB1])
            self.bytes(address, bytes(data))

        def call(self, name, *arguments):
            address = symbols[name] if isinstance(name, str) else name
            m = self.machine
            # Use identical synthetic caller registers per API call; persistent
            # engine state is RAM, not caller-register liveness.
            for index in range(13):
                m.reg_write(getattr(reg, 'UC_ARM_REG_R' + str(index)), 0)
            for index, value in enumerate(arguments):
                m.reg_write(getattr(reg, 'UC_ARM_REG_R' + str(index)), value)
            m.reg_write(reg.UC_ARM_REG_SP, 0x03007C00)
            m.reg_write(reg.UC_ARM_REG_LR, 0x090F0001)
            m.emu_start(address | 1, 0x090F0000, count=100000)
            assert m.reg_read(reg.UC_ARM_REG_PC) == 0x090F0000, 'instruction limit: ' + str(name)
            assert m.reg_read(reg.UC_ARM_REG_SP) == 0x03007C00, 'stack: ' + str(name)

        def snapshot(self):
            ram = bytearray(self.machine.mem_read(0x02000000, 0x40000))
            iwram = bytearray(self.machine.mem_read(0x03000000, 0x8000))
            # Canonicalize only declared binding fields, never arbitrary data.
            if self.experimental:
                for address in [SOUND + 0x20, SOUND + 0x38] + [p + 0x38 for p in self.players]:
                    value = struct.unpack_from('<I', ram, address - 0x02000000)[0]
                    struct.pack_into('<I', ram, address - 0x02000000, reverse.get(value, value))
                for index in range(36):
                    value = struct.unpack_from('<I', iwram, 0x7430 + index * 4)[0]
                    struct.pack_into('<I', iwram, 0x7430 + index * 4, reverse.get(value, value))
            # Explicit C-only service workspace and per-call stack are not an
            # original persistent-state contract. All other IWRAM bytes compare.
            iwram[0x6000:0x6014] = bytes(20)
            iwram[0x7800:0x7C00] = bytes(0x400)
            pcm = bytes(ram[SOUND - 0x02000000 + 0x350:SOUND - 0x02000000 + 0xFB0])
            return bytes(ram), bytes(iwram), bytes(self.machine.mem_read(0x04000000, 0x1000)), tuple(self.io), pcm

    scenarios = {
        'fixed_wave_and_song_loops': {'song_loop': True, 'reverb': 64},
        'interpolated_wave_loop_lfo': {'type': 0, 'lfo': True, 'song_loop': True},
        'sample_end_and_note_end': {'wave_loop': False},
        'priority_steal': {'channels': 1, 'song_loop': True},
        'fade_out': {'song_loop': True, 'fade': True},
        'chained_players': {'chain': True, 'channels': 1, 'lfo': True},
        'known_memacc_override': {'override': True, 'song_loop': True},
        'cgb_square': {'type': 1, 'lfo': True},
        'cgb_noise_priority': {'type': 4, 'chain': True},
        'cgb_wave': {'type': 3},
        'pcm_528_ring': {'count': 528, 'period': 3, 'reverb': 128, 'song_loop': True},
        'pcm_96_interp_ring': {'count': 96, 'period': 16, 'type': 0, 'song_loop': True, 'lfo': True},
    }
    reports = []
    for scenario, settings in scenarios.items():
        original = Engine(False, settings)
        experimental = Engine(True, settings)
        assert original.snapshot() == experimental.snapshot(), scenario + ': initial persistent state differs'
        frames = []
        nonzero_pcm = False
        lfo_values = []
        owner_at_start = None
        for frame in range(32):
            if frame == 8 and settings.get('fade'):
                for engine in (original, experimental):
                    engine.half(PLAYER + 0x24, 2)
                    engine.half(PLAYER + 0x26, 1)
                    engine.half(PLAYER + 0x28, 32)
            for phase in ('main', 'vsync'):
                original.call(0x080B64E8 if phase == 'main' else 0x080B6B3C)
                experimental.call('M4AExp_SoundMain' if phase == 'main' else 'M4AExp_SoundVSync',
                                  *([SERVICES] if phase == 'main' else []))
                before, after = original.snapshot(), experimental.snapshot()
                if before != after:
                    details = {'scenario': scenario, 'frame': frame, 'phase': phase,
                        'differences': {label: [(hex(base + i), a, b) for i, (a, b) in enumerate(zip(before[k], after[k])) if a != b][:24]
                            for k, label, base in ((0, 'EWRAM', 0x02000000), (1, 'IWRAM', 0x03000000), (2, 'IO', 0x04000000))},
                        'expected_io_tail': before[3][-16:], 'actual_io_tail': after[3][-16:]}
                    (out / 'engine_failure.json').write_text(json.dumps(details, indent=2))
                    raise AssertionError(json.dumps(details))
            nonzero_pcm |= any(before[4])
            lfo_values.append(before[0][TRACK - 0x02000000 + 0x16])
            if frame == 0:
                owner_at_start = struct.unpack_from('<I', before[0], SOUND - 0x02000000 + 0x7C)[0]
            frames.append({'frame': frame, 'pcm_sha256': hashlib.sha256(before[4]).hexdigest(),
                'persistent_ram_sha256': hashlib.sha256(before[0] + before[1]).hexdigest(),
                'io_writes_cumulative': len(before[3])})
        if settings.get('type', 8) in (0, 8):
            assert nonzero_pcm, scenario + ': fixture produced no PCM'
        assert original.visits == experimental.visits, (scenario, original.visits, experimental.visits)
        assert original.visits.get('SoundMain') == 32 and original.visits.get('VSync') == 32
        assert original.visits.get('Note', 0) >= 2, scenario + ': no note dispatch'
        assert original.visits.get('MPlayMain') == 32 * (2 if settings.get('chain') else 1)
        if settings.get('type', 8) in (1, 3, 4):
            assert any(address < 0x040000A0 for address, size, value in before[3]), 'no CGB register writes'
        if settings.get('lfo'):
            assert any(lfo_values), scenario + ': no LFO state change'
        if settings.get('song_loop') and not settings.get('fade'):
            assert original.visits.get('Note', 0) > 4, scenario + ': song loop not exercised'
        if settings.get('fade'):
            assert original.visits.get('TrackStop', 0) >= 2
            assert before[0][TRACK - 0x02000000] == 0
        if scenario == 'priority_steal':
            assert owner_at_start == TRACK + 80, 'higher-priority track did not steal channel'
        if settings.get('override'):
            assert before[0][0x7000] == 8, 'memacc conditional branch not exercised'
            assert original.visits.get('Goto', 0) >= 2
        if scenario == 'sample_end_and_note_end':
            assert before[0][TRACK - 0x02000000] == 0 and not any(before[4])
        reports.append({'scenario': scenario, 'frames': frames, 'nonzero_pcm': nonzero_pcm,
                        'major_entry_visits': original.visits, 'LFO_values': lfo_values})
        print('PASS engine:', scenario, '32 frames', 'IO writes', len(before[3]))
    (out / 'engine_results.json').write_text(json.dumps({'scenarios': reports, 'source_sha256': hashlib.sha256(Path(__file__).with_name('m4a_1.c').read_bytes()).hexdigest(),
        'candidate_sha256': hashlib.sha256(candidate).hexdigest(),
        'frames': len(scenarios) * 32, 'phase_snapshots': len(scenarios) * 64,
        'initial_state_comparisons': len(scenarios), 'fresh_build': not args.skip_build,
        'normalization': ['exact callback fields and jump-table pointers canonicalized',
                          '20-byte C service workspace and 1KiB reserved call stack excluded'],
        'limitations': ['synthetic PCM frames at 16, 96 and 528 bytes; no GBA timing/device/audio proof',
                        'existing m4a.c dependencies execute from ROM; m4a_1 ROM/IWRAM execution prohibited for candidate',
                        'unknown override ABIs not validated; no binary matching credit']}, indent=2))


if __name__ == '__main__':
    main()
