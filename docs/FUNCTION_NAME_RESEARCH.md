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
