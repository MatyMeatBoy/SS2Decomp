# Function-name research notes

Names are display metadata only. References below use the source revision stored
in each catalog evidence row. Confirmed means the narrow observed role has direct
evidence; it does not establish an undocumented SDK origin or a public API contract.

## Scheduler signal correction (29822dfa)

The initial catalog called `sub_080003F4` `TaskSleepTicks`. That interpretation was
incorrect: it saves its argument unchanged at current task+0x14, sets state 4,
saves the context and switches back to the scheduler. `sub_08000420` traverses the
task chain and wakes tasks by **exact equality** with that field, clearing the
field and setting state 1. There is no duration countdown in these operations.
The corrected display names are `TaskWaitForSignal` and `TaskWakeBySignal`.

`sub_080003F0` supplies signal 1, so its conservative name is `TaskWaitForSignal1`.
The frame-processing routine `sub_08001204` calls `TaskWakeBySignal(1)`, and the
scheduler calls that frame-processing routine between passes. However, the
VBlank wait in `sub_08001204` is conditional on forced blank, and signal 1 is an
identifier rather than an elapsed tick count. No exact one-tick timing guarantee
is inferred. Other callers wait for values such as 100, 0x1F40 and 0x11201100 and
separately signal those values. Port code should preserve event ordering instead
of translating the argument into milliseconds or a sleep duration.

## Fixed arithmetic (29822dfa)

`sub_08090434` computes a signed 32-bit product followed by arithmetic shift 8;
`sub_08090494` returns 0x10000 divided by its input. Their narrow names are
`FixedMultiplyQ8` and `FixedReciprocalQ8`. These formulas support the affine
consumer in `sub_080953F8`. They do not by themselves identify a particular SDK.
The catalog therefore retains the game domain. There is no explicit zero guard
in the reciprocal helper, and the multiply does not promise a 64-bit intermediate.

Studied for this correction: 003F0, 003F4, 00420, 01204, 00274, wait/signal callers in
`code_08028AAC.c`, and 90434/90494 with affine consumer 953F8. No C, ASM or canonical
symbols were modified.


## Affine, scrolling and blend roles (29822dfa)

The role of `gUnk_03001250` is independently anchored by `sub_08000B50`: it copies
36 halfwords to hardware starting at BG0HOFS (0x04000010). The register offsets
in `include/gba/io_reg.h` therefore map shadow indices 8..15 to BG2 PA/PB/PC/PD
and the low/high BG2 reference X/Y halves. `sub_080953F8` computes those values
from the control block's scale, angle, position and additive offset fields, then
writes them only when three effect checks return zero. Its name describes the
register-shadow update; it does not claim that the calculation always runs.
The Y reference expression uses 0x78 exactly as source, even though the matrix
term uses 0x50. A port must not replace that expression with an assumed centered
screen transform without a separate behavior change and validation.

This consumer establishes the field roles used by setters 955EC/955F8/95604/95610
and reset 955CC. Setup 95518 directly selects display mode 2 and BG2CNT 0x7C82,
then sets the transform defaults. Resource identities and the exact game screen
are not inferred. Related scene initializers 943F8/94590/94A00 were read but not
given screen-specific names. The more complex 941B4 callback was inspected only
partially, so the 94530 task-stack interpretation remains a proposal.

948E0 writes **vertical** scroll offsets for BG0/BG1, despite C locals named x/y.
It drifts those offsets at different fixed rates while pulsing a blend coefficient
with sine. The role of blend helper 0903C is established by its shadow+0x40/+0x42/
+0x44 writes, which the same hardware copy maps to BLDCNT/BLDALPHA/BLDY. The
original ASM of 94DEC additionally confirms sine/cosine horizontal offsets and
complementary blend coefficients. Its C remains a nonmatching draft; the name
comes from the ASM, not an equivalence claim. These callbacks establish the
narrow roles of their task starters 949A8/94EE4 without guessing a scene name.

933A0 programs DMA3 to write the BG1 horizontal scroll register at HBlank and
installs its DMA3/VBlank callbacks. 93498 advances phase and disables DMA when
inactive. 93404 requests shutdown, waits on signal 1, then removes the callbacks.
The callback implementation at 9342C remains a draft and was not promoted based
on the C draft alone.

Additional matching helpers 9044C/90470 implement Q16 multiplication/division
with 64-bit intermediates. They retain game-domain classification because their
formulas and consumers do not establish SDK provenance.
