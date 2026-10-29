# Isolated SoundMain compiler options

`tools/install_agbcc_sdk_sound.sh` builds a separate compiler; neither the game
compiler nor the previously accepted SDK compilers are modified. The source is
Dream-Atelier/agbcc revision `1b1c4a81d13918ca55c39c1ccf83689691b03a25`, archive
SHA256 `7afb90d0fd3495cc19925a8cc454261bcceaf30ec4c138f5bd61a3302ef2c4b1`.
The installer retains the source and GCC COPYING license and restores executable
modes from the archive. All additional options default to zero.

Apply the existing TST and LSR/alignment patches first, then these two independent
logical deltas, in this order:

| Patch | SHA256 |
| --- | --- |
| `agbcc-sdk-text-literals.patch` | `e1debb95c659c1bf027bc6f09f06e8aee6eeef23a0e13ae0100c6315f4abe389` |
| `agbcc-sdk-sub-after-literals.patch` | `c84661d52844e6fc7ea818935883c725ba69cc28592933fd4c57ee770d82bd82` |

The second file expresses the reviewed SUB rule against the literal-patched
source. Applying the original experimental zero-context SUB patch after another
delta can insert declarations at the wrong position; use only the files above.

`-fsub-compare-flags` removes CMP S,k immediately after SUB D,S,k only for distinct
low-register D and S and immediate k in 0..7. Both instructions compute identical
NZCV from the same unchanged source. No condition-code restriction is needed.
The actual zero-immediate ISA case is checked separately because C canonicalizes
subtraction by zero into a move. D==S is excluded.

`-fthumb-text-literals` permits the `thumb_literal` attribute on genuine strong,
file-scope readonly four-byte C scalar/pointer objects, aligned to four bytes in
`.text`, defined in the same translation unit. This permits a direct Thumb
PC-relative load. Compiler validation rejects aliases, local statics, weak
definitions, wrong types, alignment and ownership; only actual object emission
establishes ownership. GAS enforces the emitted forward word displacement in
0..1020. Backward or out-of-range accesses fail the build. GNU asm-name spelling
can defer one duplicate alias diagnostic to GAS; that build still fails closed.
The old experimental literal patch had ownership bugs and is not shipped here.

SoundMain needs both options: literals alone leave one extra CMP r4,#1 after
SUB r7,r4,#1. No game TU receives either new option. `m4a_1_sound.c` contains
132 bytes of C/ABI and the unchanged 932-byte original SoundMainRAM kernel.
Only entry saves, early return and terminal transfer are explicit ABI assembly;
the algorithm, volatile accesses and six typed objects are C. No symbol-size
override, instruction blob or post-compilation byte rewriting is used.

The portable scripts `test_sdk_sound_match.py` and `test_sdk_sound_runtime.py`
check the whole original 1064-byte container, canonical entries, genuine C data,
resolved relocations, source mutations, execution through the original RAM
kernel, callbacks/reentry, volatile VCOUNT, PC/SP and r4-r11. The SUB and literal
scripts test isolated and combined options, real opt-in behavior, NZCV/liveness,
range boundaries and compiler ownership rejection. Unicorn scripts accept
`--deps`; all scripts accept `--out` and require no ROM. CI runs these checks.

Private pre-activation evidence also checked three previously accepted SDK TUs:
objects were identical with both options off, and with both on without literal
attributes. Both full ROM links were exact. The activated normal build must
still pass `make compare`; NONMATCHING must compile/link normally.


The separate `sub_080B6DD0` interval uses the existing engine compiler and no new
option. Its 16 bytes comprise a two-byte register-indirect ABI transfer, two-byte
alignment and twelve bytes of genuine typed C objects shared by adjacent ASM.
It is classified as mixed ABI/data, not a wholly C algorithm. The portable
`test_sdk_shared_pool.py` compares all 676 bytes including 660 unchanged neighbor
bytes, checks the real two-byte symbol and three object symbols, and executes
both Thumb and ARM return targets with PC/LR/SP, all registers and NZCV checked.
C-data and wrong-register source mutations must differ; a fresh Unicorn instance
executes the latter so translated-code caching cannot mask the negative control.
