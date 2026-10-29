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

The other 34 configured entries retain their original INCLUDE_ASM bodies.
This does not claim the complete mixer or interpreter is C. Moving the
3060-byte module from original_asm to c expands the C-decompilable
denominator by 3060 bytes / 36 functions, while only 60 bytes / 2 functions
become decompiled; the remaining 3000 bytes / 34 functions are pending.
This is a classification consequence of opening the module for incremental
C conversion, not a change to historical totals.

Verification: isolated bytes and relocations match; the integrated normal
build produces `shiningsoul2_eu.gba: OK` with SHA-1
`aa1288be9257337abdfe3034898cf6c7aa778fbc`.
