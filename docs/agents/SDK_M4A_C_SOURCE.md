# Incremental matching C for m4a_1

The former assembly container is now `src/m4a_1.c`, compiled with
`old_agbcc -O2 -mthumb-interwork` except the dedicated TST units described
below. All entries keep their original order
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

`ply_fine` is C without inline assembly (46 instruction bytes plus
2 alignment bytes). It releases every active channel in the track, removes
its chain links through RealClearChain, then clears the track flags. Its
local register bindings preserve the original operand/register order.

The `m4a_1` and `m4a_1_engine` units use the isolated compiler installed by
`tools/install_agbcc_tst.sh`, with `-O2 -mthumb-interwork
-fprologue-bugfix -ftst`. The pinned upstream fork's TST optimization is
restricted to equality tests by the versioned generic patch. Game compiler
flags and the standard compiler installation are unchanged. The installer
verifies archive/patch hashes and retains GPL source/license. The generic
CPU-flag/ABI fixtures run in CI; see `tools/patches/README.sdk-tst.md`.

`TrackStop` is C without inline assembly (68 bytes), using the SDK
TST compiler for `m4a_1_engine`. It walks active-track channels, invokes
the existing r3 callback veneer for compatible-sound oscillator shutdown,
clears channel flags and owner links, then clears the track head. The r3
register binding expresses the callback ABI; all traversal, masking,
conditions, loads and stores are C.

`ply_endtie` uses C with minimal prologue/epilogue ABI assembly
(64 bytes): push r4/r5, restore r4/r5 and return through lr. The matching
C reads an optional MIDI key and searches for the first matching active,
non-stopped channel, setting its release flag. Every access, mask, branch
and traversal is C. The naked body has no hidden stack spills.

Two source-shape details preserve its exact instructions without changing
the compiler: a local `threshold = 0x80` delays constant folding and keeps
CMP #128 / BHS rather than CMP #127 / BHI; explicit C labels/gotos avoid
loop optimization moving the release block outside the traversal. The
only assembly is the explicitly documented register-save/return ABI glue.

The other 9 configured entries retain their original INCLUDE_ASM bodies.
This does not claim the complete mixer or interpreter is C. Moving the
3060-byte module from original_asm to c expands the C-decompilable
denominator by 3060 bytes / 36 functions, while only 720 bytes / 27 functions
become decompiled; the remaining 2340 bytes / 9 functions are pending.
This is a classification consequence of opening the module for incremental
C conversion, not a change to historical totals.

Verification: isolated bytes and relocations match; the integrated normal
build produces `shiningsoul2_eu.gba: OK` with SHA-1
`aa1288be9257337abdfe3034898cf6c7aa778fbc`.

`sub_080B6992` at 0x080B6992 is C with minimal ABI assembly (26 bytes).
Its C tests the stream pointer address ranges and clears the r3 value for
untrusted addresses. The only instruction assembly saves/restores the caller's
r0 and returns through lr; all shifts, comparisons and decisions are C.
The dedicated reader TU opts into the reviewed generic LSR equality-flags and
Thumb halfword function-alignment options. Its existing first reader remains
word aligned with explicit section alignment metadata. The symbolic data alias
`_080B69A8` names the sole C-generated literal shared by MPlayJumpTableCopy;
it emits no algorithm or literal byte blob. Both callers and fall-through
entries retain their original addresses. MPlayJumpTableCopy remains assembly.

`tools/scripts/test_sdk_reader_match.py` compiles the active C through the
normal Makefile and compares bytes and relocations for all five entries against
the versioned original ASM oracle, without needing the ROM. The oracle comes
from revision a533caf3ac7046d9308910581c2af7688b29ce9c. Full ROM comparison also
passes. Compiler source and portable semantic/ABI regression commands are in
`tools/patches/README.sdk-flags.md`.

`sub_080B69AE` at 0x080B69AE also uses C with minimal shared-entry ABI
assembly (8 instruction bytes plus its original 2 alignment bytes). C advances
the track command pointer and reads the current byte. Its single terminal
`b sub_080B6992` preserves the caller's lr while entering the shared validator;
a normal C call emits BL and changes that register. This is explicit ABI glue,
not pure C. There are no assembly decisions, loads, stores or arithmetic in
this helper. The strict reader-container test now requires both definitions
to be active C and still compares all five entries.

`sub_080B69D8` at 0x080B69D8 is C with two minimal terminal ABI transfers
(26 instruction bytes and the original 2 alignment bytes). C checks the
pattern nesting depth, stores the return stream address and increments the
depth. The C conditional selects a terminal branch to either the existing
sequence jump helper or ply_fine, preserving the original caller's lr. Only
those two direct unconditional tails are assembly. A local threshold of three
preserves CMP #3 / BHS instead of folding into CMP #2 / BHI. The no-ROM SDK
strict suite requires the active C definition and compares original bytes and
relocations from revision a533caf3ac7046d9308910581c2af7688b29ce9c.

The configured interval `sub_080B69F4` at 0x080B69F4 also contains the real
entry at 0x080B6A08. The original source represented the latter's executable
Repeat handler as raw words. Both entries now have C definitions, with minimal
ABI assembly only in Repeat; neither raw instruction words nor function-size overrides are
used in the implementation. PatternEnd is pure C: it pops a saved pattern stream
address, and the compiler emits its normal return. Repeat uses C for its count handling,
reader call, comparison and stream updates. Its ABI assembly saves lr, returns
through the saved address, or transfers to 0x080B69BA. That shared Goto entry
is two bytes after `sub_080B69B8`, skipping its PUSH lr because Repeat already
saved lr. This stack contract is essential. The wide repeat increment remains
in ip across the reader call even when its byte store truncates at 256.

The configured 68-byte interval covers 20 bytes of PatternEnd, 46 bytes of
Repeat and two original alignment bytes. It remains a single configured
interval for progress; adding a canonical symbol at the existing 6A08 entry
does not change a denominator. The jump table at 0x080BB7E8 contains entry
0x080B69F5 at index 3 and 0x080B6A09 at index 4. The roles agree with the
experimental model; this observation does not credit that model as matched.

`test_sdk_pattern_container.py` preserves the original assembly oracle,
including its raw words. It links oracle and normal C objects at 0x080B69D8
with canonical Thumb external symbols, resolving all relocations before
comparing the complete 96-byte pattern container. It requires all three C
entries at their original addresses, verifies the existing Goto implementation
against its original oracle, and rejects mutated comparison and stack-entry
candidates. The original oracle is from a533caf3ac7046d9308910581c2af7688b29ce9c.
This container check avoids forcing natural C function sizes to match the old
combined symbol. Full normal ROM comparison remains mandatory and passes.
