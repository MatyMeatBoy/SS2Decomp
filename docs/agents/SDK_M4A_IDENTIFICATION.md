# Reviewed m4a_1 identities

The coordinator reviewed these 20 display identities against the original ASM,
its callers, and the SDK structures and handler declarations in
`include/gba/m4a_internal.h`. The research baseline is
`f022679443ba914f2a3e89ad8193bffcbadc8d00`.
The individual ASM paths and behavior are recorded in
`tools/config/function_names.json`.

This changes identification only. Canonical symbols, configured function ranges,
linkage, original ASM, matching-C bytes and library-linked bytes stay intact.
Original handwritten ASM is a separate inventory category; naming it does not
convert it to decompiled C. A compiling C port does not prove a byte match.

| Address | Canonical symbol | Confirmed display identity |
| --- | --- | --- |
| 0x080B6990 | `sub_080B6990` | `SoundReadGuardedByte` |
| 0x080B6992 | `sub_080B6992` | `SoundGuardSourceRead` |
| 0x080B69AC | `sub_080B69AC` | `SoundReadTrackByteGuarded` |
| 0x080B69AE | `sub_080B69AE` | `SoundReadTrackByteFromCursorGuarded` |
| 0x080B69B8 | `sub_080B69B8` | `ply_goto` |
| 0x080B69D8 | `sub_080B69D8` | `ply_patt` |
| 0x080B69F4 | `sub_080B69F4` | `ply_pend` |
| 0x080B6A38 | `sub_080B6A38` | `ply_prio` |
| 0x080B6A44 | `sub_080B6A44` | `ply_tempo` |
| 0x080B6A58 | `sub_080B6A58` | `ply_keysh` |
| 0x080B6A6C | `sub_080B6A6C` | `ply_voice` |
| 0x080B6A9C | `sub_080B6A9C` | `ply_vol` |
| 0x080B6AB0 | `sub_080B6AB0` | `ply_pan` |
| 0x080B6AC4 | `sub_080B6AC4` | `ply_bend` |
| 0x080B6AD8 | `sub_080B6AD8` | `ply_bendr` |
| 0x080B6AEC | `sub_080B6AEC` | `ply_lfodl` |
| 0x080B6AF8 | `sub_080B6AF8` | `ply_modt` |
| 0x080B6B10 | `sub_080B6B10` | `ply_tune` |
| 0x080B6B24 | `sub_080B6B24` | `ply_port` |
| 0x080B6DD0 | `sub_080B6DD0` | `SoundCallR3Veneer` |

## Shared entries and nonstandard ABI

- 080B6990 loads a byte from r2 into r3, then falls through into 080B6992.
  The latter guards the SOURCE address r2, not the loaded value or a target
  pointer in r3, and preserves r0. These are shared entries with a nonstandard
  register interface, not independently recovered ordinary C functions.
- 080B69AC loads track.cmdPtr (r1+0x40), then falls through into 080B69AE.
  69AE increments cmdPtr, reads one byte and tail-branches to the source guard.
  `ply_port` also enters 69AE directly with an already advanced cursor.
- `ply_goto` guards only the least-significant byte of the four-byte address;
  its other three bytes are direct reads. `ply_voice` reads its index directly,
  and invokes the source guard for three words with the same base r2. A port
  must preserve the actual stream behavior instead of assuming all reads use
  one generic guarded reader.
- The configured 68-byte container starting at 080B69F4 begins with `ply_pend`,
  whose semantic body is 20 bytes ending at 080B6A08. It also contains the
  unconfigured `ply_rept` entry (46 bytes, 080B6A08..080B6A36), followed by
  two bytes alignment. The repeat entry is reached by jump-table slot4:
  Thumb pointer `0x080B6A09`. No new configured function or extra code credit is
  invented for it, and the existing range is not split by this name review.
- 080B6DD0 is a two-byte `bx r3` veneer followed by alignment and a literal
  pool. It is used by MPlayMain, TrackStop and ply_note. Its generic display
  name is `SoundCallR3Veneer`, rather than a name tied to one caller.

## Dispatch table phases

`gUnk_080BB7E8` is a 144-byte (36-entry) initial jump-table template.
MPlayJumpTableCopy copies 0x24 entries. MPlayMain selects handlers using
`opcode-0xB1` for the relevant command range, through the shared r3 veneer.
MPlayExtender in `src/m4a.c` overwrites entries during initialization,
including slots8 and28 (ply_memacc and ply_xcmd). Static ROM-table targets
and effective initialized targets must remain separate in future call graphs.
These observations do not change the global data-understanding percentage or
claim complete runtime callback coverage.

## ROM inventory versus IWRAM copy

`m4aSoundInit` in `src/m4a.c:80` copies the declared 0x400-byte
SoundMainRAM_Buffer from the ROM address of SoundMainRAM. `sym_ram.ld`
places that buffer at 0x03000E3C. The copied ranges are therefore
ROM [0x080B656C, 0x080B696C) and RAM [0x03000E3C, 0x0300123C).
SoundMain contains the Thumb entry pointer 0x03000E3D.

The configured SoundMainRAM interval is only 932 bytes, ending at 0x080B6910.
The copy also includes the next 92 bytes: SoundMainBTM (24), RealClearChain
(32), and the first 36 bytes of ply_fine. This does not prove that all those
extra bytes are executed from RAM. A future port must preserve the observed
copy length and distinguish copied ranges, executable entries, padding and
literal pools. Never shrink a runtime copy to a configured function interval,
or count the ROM source and its RAM copy as two recovered functions.

## C donor limit

Research found historical C for `ply_fine` that matches its 46 bytes and
relocations only with a donor's patched agbcc and `-ftst`. The local SS2
compilers produce 48 bytes for that probe. This is useful implementation
research, not an accepted toolchain change or an integrated whole-ROM C match.
The donor is [Dream-Atelier/kl-eod-decomp at 6617baf0](https://github.com/Dream-Atelier/kl-eod-decomp/blob/6617baf0e2024da1c1d08f6fccde017a32df1cdb/src/m4a_1.c),
using [its pinned agbcc revision](https://github.com/Dream-Atelier/agbcc/commit/1b1c4a81d13918ca55c39c1ccf83689691b03a25).
Its historical symbol VoiceLookupAndApply and callee VoiceGetParams require
behavioral review: this probe finishes a track and unlinks its channels. Neither
the donor's names nor its comments establish the SS2 compiler's provenance.
Continue checking helpers and complete module context under the configured SS2
compiler before promoting any candidate.

## Experimental C implementation and composed tests

[research/m4a_1](../../research/m4a_1/README.md) now contains C models for all
semantic regions, explicit known-EU callback bindings, individual ARM differential
fixtures and persistent sequencer/mixer scenarios. Use these as behavioral
references and retain their documented input/ABI/hardware limits. They are outside
the normal ROM build. Their current isolated strict audit is 0/35 equal; no
matching bytes are credited and the original ASM remains the production input.
In particular, do not replace the 1024-byte executable IWRAM copy with arbitrary
compiled C bytes or treat ordinary C helper returns as the original r2/r3 ABI.
