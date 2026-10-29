# Incremental matching C for m4a_1

The former assembly container is now `src/m4a_1.c`, compiled with
`old_agbcc -O2 -mthumb-interwork`. All entries keep their original order
and canonical symbols. The linker selects only the C container object;
there is no second assembly container in the link.

`RealClearChain` at 0x080B6928 is matching C (32 bytes). It removes a sound
channel from its owning track: updates either the previous channel or the
track head, repairs the next channel backlink, and clears the owner pointer.
The register variable bindings preserve the original r0/r1/r2/r3 contract.
They contain no assembly instructions; the algorithm is ordinary C using
the existing SoundChannel and MusicPlayerTrack layouts.
Original evidence: `asm/nonmatchings/m4a_1/RealClearChain.s` at revision
`a533caf3ac7046d9308910581c2af7688b29ce9c`.

`clear_modM` at 0x080B707C is also matching C (26 instruction bytes plus
2 alignment bytes). It clears modulation state and marks pitch or volume
for update according to modT, keeping the original r1 track argument.

`ld_r3_tp_adr_i` at 0x080B7098 is matching C (10 instruction bytes
plus 2 alignment bytes). It reads a track stream byte and advances cmdPtr,
using the original r1 track, r2 cursor and r3 result ABI. File-scope register
variables express this ABI without assembly instructions. Because those
register reservations affect ordinary C register allocation, the helper and
the last two original ASM entries live in the separate contiguous
`m4a_1_abi` translation unit starting at 0x080B7098. The split changes no
function inventory entries or byte totals. The two remaining ASM files move
to that module directory without content changes.

`sub_080B69B8` at 0x080B69B8 is matching C (32 bytes), implementing
the sequence goto command. It assembles an unaligned little-endian target
pointer and validates its low byte through the existing sub_080B6990 entry
before assigning cmdPtr. Its r0 accumulator must survive that helper call;
file-scope register bindings describe the helper contract. This scratch r0
is not an ordinary returned C value (the original epilogue uses r0 for lr).
The 32-byte `m4a_1_jump` unit isolates those reservations, and
`m4a_1_rest` resumes ordinary C allocation at 0x080B69D8. All moved ASM
bodies are byte-for-byte unchanged; the contiguous modules still
cover exactly the original 3060-byte / 36-function interval.

`sub_080B6A38` at 0x080B6A38 uses C with minimal assembly ABI
return glue (10 instruction bytes plus 2 alignment bytes), not pure C.
The command fetch and priority assignment are C; its naked entry preserves
the original return address in r12, and the only assembly statement is
`bx ip`, required to return through that nonstandard register. No algorithm,
loads, stores, arithmetic or condition is written in assembly in this body.
The register-ABI `m4a_1_commands` unit starts here; the ordinary C modulation
helper is isolated in `m4a_1_mod` at 0x080B707C. The contiguous units
still cover the same original interval, with no additional inventory
functions. Remaining original ASM bodies were only moved, unmodified.

`sub_080B6A58` at 0x080B6A58 also uses C with the same minimal
`bx ip` ABI return (18 instruction bytes plus 2 alignment bytes). It reads
keyShift and marks pitch flags 0x0C; every fetch, operation and store is C.

`sub_080B6A9C` also uses C with minimal `bx ip` ABI return glue: volume (18 instruction bytes; 20 inventory bytes).

`sub_080B6AB0` also uses C with minimal `bx ip` ABI return glue: pan (20 instruction bytes; 20 inventory bytes).

`sub_080B6AC4` also uses C with minimal `bx ip` ABI return glue: bend (20 instruction bytes; 20 inventory bytes).

`sub_080B6AD8` also uses C with minimal `bx ip` ABI return glue: bend_range (18 instruction bytes; 20 inventory bytes).

`sub_080B6AEC` also uses C with minimal `bx ip` ABI return glue: lfo_delay (10 instruction bytes; 12 inventory bytes).

`sub_080B6B10` also uses C with minimal `bx ip` ABI return glue: tune (20 instruction bytes; 20 inventory bytes).

`sub_080B6A44` also uses C with minimal `bx ip` ABI return glue: tempo (20 instruction bytes; 20 inventory bytes).

`sub_080B6AF8` also uses C with minimal `bx ip` ABI return glue: modulation_type (24 instruction bytes; 24 inventory bytes).

`sub_080B6A6C` also uses C with minimal `bx ip` ABI return glue: voice (46 instruction bytes; 48 inventory bytes).

`sub_080B6B24` uses C with minimal `bx ip` ABI return glue (24
bytes). It obtains a hardware register offset and a validated stream byte,
then performs a volatile byte write to SOUND1CNT_L plus that offset. It
has its own `m4a_1_port` unit at 0x080B6B24; `m4a_1_engine` resumes the
remaining original ASM at 0x080B6B3C. This isolates its volatile r0 address
register. No ASM algorithm or raw opcode replaces the C write.

`ply_lfos` uses C with minimal `bx ip` ABI return glue (18
instruction bytes plus 2 alignment bytes). It assigns lfoSpeed and clears
modulation when the new speed is zero. The algorithm and condition are C;
the C identifier alias only reconciles the public ordinary prototype with
the original register entry ABI.

`ply_mod` uses C with minimal `bx ip` ABI return glue (18
instruction bytes plus 2 alignment bytes). It assigns modulation depth and
clears modulation when the depth is zero; condition and accesses are C.

`sub_080B6990` is a 2-byte C byte reader with preserved fall-through
ABI. Its naked attribute intentionally emits no return: control enters the
separately configured address validator immediately below it, as in the
original. The reader has no inline assembly; the validator remains ASM and
pending. `m4a_1_read` isolates these register reservations at 0x080B6978, including the unchanged jump-table copy that shares its
validator literal pool.

`sub_080B69AC` is a 2-byte C command-pointer reader with preserved
fall-through ABI. Its naked body loads cmdPtr in r2, then enters the
separately configured advance/validation tail immediately below it. There
is no inline ASM in the C reader; the tail remains ASM and pending.

The other 16 configured entries retain their original INCLUDE_ASM bodies.
This does not claim the complete mixer or interpreter is C. Moving the
3060-byte module from original_asm to c expands the C-decompilable
denominator by 3060 bytes / 36 functions, while only 408 bytes / 20 functions
become decompiled; the remaining 2652 bytes / 16 functions are pending.
This is a classification consequence of opening the module for incremental
C conversion, not a change to historical totals.

Verification: isolated bytes and relocations match; the integrated normal
build produces `shiningsoul2_eu.gba: OK` with SHA-1
`aa1288be9257337abdfe3034898cf6c7aa778fbc`.
