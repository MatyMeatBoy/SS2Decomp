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


## Memory, interrupt and video APIs (29822dfa)

Matching C establishes the heap's EWRAM initialization, allocation from either
end, free/coalescing behavior and free-block span queries. `HeapFree` now has
reviewed catalog evidence instead of relying only on recognition of its existing
`_free` C alias. Free-block span queries include allocator block metadata; they
are not promises of immediately available payload capacity.

The queue around 012F8/01348/01394/013F8 is a **CPU memory-copy queue**, despite
the historical structure name `DmaEntry`. It executes `CpuFastSet` or `CpuSet`
BIOS calls rather than programming DMA hardware. It has 400 entries, silently
drops new enqueue requests when full, and uses a high control bit to select the
fast path for sizes aligned to 32 bytes. Naming this queue DMA would mislead a
port implementation. DMA0 and DMA3 interrupt callbacks are separately identified
by their handlers' acknowledgment masks 0x100/0x800 and their setter globals.

VBlank/HBlank/VCount handler identities follow acknowledgment masks 0x1/0x2/0x4,
confirmed by the project's register definitions. These values are masks, not
bit numbers. VBlank processing runs the shadow-register/copy-queue transfers only
when its frame-ready flag is set, and optionally calls the sound engine.
Enable/disable helpers sometimes force IME back to 1 instead of preserving its
previous state; their display names do not promise a general lock primitive.

Background-control helpers write/read hardware BGxCNT. Palette loading updates
a RAM shadow and queues a full palette copy once under its per-frame flag.
The register-shadow flush starts at 0x04000010 and covers scroll/affine, window,
mosaic and blend registers; it does not include DISPCNT or BGCNT. LZ77 loading
reads its size header, optionally allocates while yielding on signal 1, and calls
`LZ77UnCompWram`.

0086C/008C8 advance the same eight-byte feedback state and produce 16/32-bit
values from selected state bytes. They are identified as random generators
without assigning a standard algorithm or SDK origin.

Ambiguous cases deliberately remain unnamed: 010C8 writes the HBlank callback
global but returns the different VCount callback global; a conventional swap
setter contract would be incorrect. 00C1C clears only the first four shadow
bytes and sets indices 8/10/16/18 to 0x100, which map to PA/PC rather than PA/PD.
Calling this a complete identity-matrix reset would misstate the actual source.
00BB0 writes only a prefix of the eight-byte random state and ignores its formal
seed argument; it is not named as a conventional general seed API.

The scheduler count accessor 00464 is anchored by initialization/increment/
decrement sites, and 00440 explicitly tests state 4 plus an exact signal match.
No canonical symbols, game source, headers, assembly or ROM data were changed.


## Completion of the 941B4 callback review (29822dfa)

A subsequent full ASM read establishes 941B4 as BG0/BG1 scrolling with a
random-driven blend-state machine. It writes all four scroll halfwords, uses
separate sine phases for vertical offsets, and supplies blend coefficients from
four control states. RNG 0086C supplies dwell values; global flags participate in
state changes. This supports the narrow display name
`TaskScrollBg0Bg1WithRandomBlendState` without naming a weather effect or screen.
The earlier partial-review note above records why 94530 was initially proposed;
it is now confirmed as its task starter. Its source retry condition checks the
task pointer rather than the newly allocated stack, so no stronger allocation
failure behavior is claimed.

The allocate/start/destroy pairs for task controls 03000270/278/27C are now linked
to their independently reviewed callbacks. Allocation of a 0x28-byte control
block is distinguished from stack allocation in the starter; destroy functions
cancel a scheduled task when present, free the control block and clear the
global. The game scene behind these effects remains unidentified.


## Audio and flash wrappers (29822dfa)

The matching wrappers at 06D24..06E48 delegate directly to named m4a APIs.
Song-number wrappers first enforce the inclusive maximum 0x1AB; player/track
wrappers forward their typed arguments. Their catalog names describe those
observed operations, not a particular background-music or sound-effect channel.
The wrappers stay game-domain even though their separate callees belong to the
sound library. Empty wrapper 06E54, constant-song wrapper 06E58 and the meaning of
flag 030028AC in 06E64 remain without invented game-role names.

01AA4 identifies flash hardware, checks five supported IDs and installs the
flash timer interrupt slot when supported. 01B04 directly reads flash bytes;
01B14/01B54 gate sector programming/verification on the support flag. Programming
forces IME off/on instead of preserving previous state, and verification keeps
the SDK return status rather than converting it to a boolean. No save-record
layout, checksum scheme or game-save slot identity is inferred from these wrappers.
