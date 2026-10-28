# Function identification

Generated from configs, C/ASM sources and the evidence catalog; no ROM required.
Existing descriptive identifiers and confirmed catalog names count as identified. Proposals do not.

| Domain | All functions | Existing | Confirmed | Proposed | Unidentified | Identified |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| game | 1880 | 5 | 37 | 1 | 1837 | 2.23% |
| sdk | 155 | 129 | 6 | 0 | 20 | 87.10% |
| all | 2035 | 134 | 43 | 1 | 1857 | 8.70% |

SDK/game here describes catalog origin; module categories used by progress metrics remain unchanged.

Full inventory: [functions.json](functions.json). Source graph: [JSON](callgraph.json), [DOT](callgraph.dot).
Graph observations include source locations and distinguish compiling C drafts from matching C.

## Catalog entries

| Address | Canonical symbol | Display name | Status | Domain | Evidence |
| --- | --- | --- | --- | --- | --- |
| 0x080003F0 | `sub_080003F0` | TaskWaitForSignal1 | confirmed | game | asm/nonmatchings/sched/sub_080003F0.s: Loads r0=1 and branches to TaskWaitForSignal; this is a signal identifier, not a tick duration.; src/code_08000EC8.c: Frame-processing sub_08001204 invokes sub_08000420(1); its VBlank wait is conditional on forcedBlank. This does not establish a fixed elapsed-time sleep. |
| 0x080003F4 | `sub_080003F4` | TaskWaitForSignal | confirmed | game | asm/nonmatchings/sched/sub_080003F4.s: Stores the supplied signal at task+0x14, saves context, sets state 4 and switches to scheduler stack. No decrement of a duration occurs.; asm/nonmatchings/sched/sub_08000420.s: Wake operation compares the supplied signal for exact equality with each task+0x14, clears it and sets state 1.; src/code_08028AAC.c: Waits for 0x11201100 and separately signals 0x514C8; demonstrates identifiers rather than tick counts. |
| 0x08000420 | `sub_08000420` | TaskWakeBySignal | confirmed | game | asm/nonmatchings/sched/sub_08000420.s: Traverses gUnk_03001240; for each task whose +0x14 equals r0, clears +0x14 and sets +4 to ready state 1. It does not decrement sleep counters. |
| 0x08000470 | `sub_08000470` | TaskIsScheduled | confirmed | game | asm/nonmatchings/sched/sub_08000470.s: Traverses gUnk_03001240 task list, returning one when the requested task pointer is found. |
| 0x0800048C | `sub_0800048C` | TaskGetCurrent | confirmed | game | asm/nonmatchings/sched/sub_0800048C.s: Returns the current task pointer from gUnk_0300123C. |
| 0x08001494 | `sub_08001494` | HeapAllocate | confirmed | game | src/code_08000EC8.c: Aligns allocation size, searches free blocks and splits the selected block. |
| 0x080016C8 | `sub_080016C8` | HeapLargestFreeBlockSpan | confirmed | game | src/code_080016C8.c: Returns maximum free block span while walking heap blocks. |
| 0x080016EC | `sub_080016EC` | HeapTotalFreeBlockSpan | confirmed | game | src/code_080016C8.c: Accumulates free block spans while walking heap blocks. |
| 0x0800170C | `sub_0800170C` | MultiSioInit | confirmed | sdk | docs/LINK_CABLE.md: Documented SDK initialization: reset registers, copy ISR, initialize buffers. |
| 0x08001804 | `sub_08001804` | MultiSioMain | confirmed | sdk | docs/LINK_CABLE.md: Documented SDK per-frame send24/receive4x24 processing and status flags. |
| 0x0800191C | `sub_0800191C` | MultiSioSendDataSet | confirmed | sdk | docs/LINK_CABLE.md: Documented SDK 24-byte send-buffer copy and checksum. |
| 0x08001990 | `sub_08001990` | MultiSioRecvDataCheck | confirmed | sdk | docs/LINK_CABLE.md: Documented SDK checksum verification and 4x24 receive copy. |
| 0x08001A50 | `sub_08001A50` | MultiSioStart | confirmed | sdk | docs/LINK_CABLE.md: Documented SDK start flag. |
| 0x08001A64 | `sub_08001A64` | MultiSioStop | confirmed | sdk | docs/LINK_CABLE.md: Documented SDK disable SIO and timer3. |
| 0x08001BE4 | `sub_08001BE4` | LinkSessionTask | confirmed | game | docs/LINK_CABLE.md: Per-frame session task passes send/receive blocks to MultiSioMain and stores its status. |
| 0x08001DF0 | `sub_08001DF0` | LinkWaitBarrier | confirmed | game | docs/LINK_CABLE.md: Tag-based NOS/OK barrier handshake. |
| 0x080020F4 | `sub_080020F4` | LinkGetLocalPlayerId | confirmed | game | docs/LINK_CABLE.md: Documented accessor for own player id. |
| 0x08002118 | `sub_08002118` | LinkGetSendBlock | confirmed | game | docs/LINK_CABLE.md: Documented per-player send block accessor. |
| 0x08002164 | `sub_08002164` | LinkCountConnectedPlayers | confirmed | game | docs/LINK_CABLE.md: Documented accessor for connected player count. |
| 0x08002238 | `sub_08002238` | LinkGetReceiveBlock | confirmed | game | docs/LINK_CABLE.md: Documented per-player receive block accessor. |
| 0x080022A4 | `sub_080022A4` | LinkLoopbackTask | confirmed | game | docs/LINK_CABLE.md: Copies local send block to receive block zero each frame and sets status 0x101. |
| 0x0800903C | `sub_0800903C` | SetBlendRegisterShadow | confirmed | game | src/code_08006D24.c: Packs target masks/effect into shadow+0x40, EVA/EVB into+0x42 and brightness into+0x44; B50 copies these to BLDCNT/BLDALPHA/BLDY at 0x50/0x52/0x54.; src/video.c: Shadow base is copied to hardware starting at 0x04000010.; include/gba/io_reg.h: BLDCNT/BLDALPHA/BLDY offsets are 0x50/0x52/0x54. |
| 0x080135C4 | `sub_080135C4` | LinkCreatePlayerEntity | confirmed | game | docs/LINK_CABLE.md: Creates player entity and assigns per-slot send and receive block pointers. |
| 0x08066720 | `sub_08066720` | LinkBroadcastMessageTask | confirmed | game | docs/LINK_CABLE.md: Announces tagged message, sends eight-byte chunks, waits for peer acknowledgments. |
| 0x0806690C | `sub_0806690C` | LinkReceivePeerMessageTask | confirmed | game | docs/LINK_CABLE.md: Per-peer receiver acknowledges announce/chunks and dispatches message tag. |
| 0x08090434 | `sub_08090434` | FixedMultiplyQ8 | confirmed | game | src/code_0808FB5C.c: Matching C computes signed 32-bit product arg1 * arg0 then arithmetic right shift 8. This confirms an 8-fractional-bit multiply; SDK origin is not established. |
| 0x0809044C | `sub_0809044C` | FixedMultiplyQ16 | confirmed | game | src/code_0808FB5C.c: Multiplies two signed 32-bit inputs in a 64-bit intermediate, then returns the low 32 bits of product shifted right 16; SDK origin is not established. |
| 0x08090470 | `sub_08090470` | FixedDivideQ16 | confirmed | game | src/code_0808FB5C.c: Promotes inputs to signed 64-bit, shifts numerator left 16, divides by denominator and returns signed 32-bit result; no explicit zero guard or SDK origin is established. |
| 0x08090494 | `sub_08090494` | FixedReciprocalQ8 | confirmed | game | src/code_0808FB5C.c: Matching C returns 0x10000/arg0: reciprocal in 8-fractional-bit representation. No explicit divide-by-zero guard; SDK origin is not established. |
| 0x080933A0 | `sub_080933A0` | StartBg1HBlankDmaScroll | confirmed | game | src/code_08092D60.c: Resets phase, sets amplitude 0x10 and active flag, installs DMA3/VBlank callbacks, enables interrupt 0x800 and programs DMA3 from 03000264 to BG1HOFS 04000014 with control 0xE3400001.; include/gba/io_reg.h: REG_OFFSET_BG1HOFS is0x14 and DMA3 source register starts at 0xD4. |
| 0x08093404 | `sub_08093404` | StopBg1HBlankDmaScroll | confirmed | game | src/code_08092D60.c: Clears active flag, disables DMA3 interrupt 0x800, waits for signal 1 then clears DMA3/VBlank callbacks. Callback 93498 observes inactive flag and disables DMA3.; src/code_08092D60.c: sub_08093498 masks DMA3 control when active flag 03000268 is zero. |
| 0x08093498 | `sub_08093498` | AdvanceBg1ScrollDmaPhase | confirmed | game | src/code_08092D60.c: Advances phase 03000267 by 2; if active flag 03000268 is zero, masks DMA3 control to disable transfer/IRQ timing. Installed as VBlank callback by 933A0. |
| 0x08094530 | `sub_08094530` | InitializeTaskStack03000270 | proposed | game | src/code_08092D60.c: Task variant using global03000270 and waits through080003F0; precise screen role unknown. |
| 0x080948E0 | `sub_080948E0` | TaskScrollBg0Bg1AndPulseBlend | confirmed | game | src/code_08092D60.c: Loop decrements the BG0 vertical scroll accumulator by 0xAA, increments BG1 vertical scroll by 0x80, writes their >>8 values to shadow+2/+6 and uses sine(phase)*5/256+10 as blend EVA; phase advances 3 and waits for signal 1.; src/video.c: Shadow offsets2/6 map to BG0VOFS/BG1VOFS through the register-shadow copy.; src/code_08006D24.c: sub_0800903C packs the supplied coefficients into blend register shadow. |
| 0x080949A8 | `sub_080949A8` | StartBgScrollBlendTask | confirmed | game | src/code_08092D60.c: Initializes stack allocation 0x400 at global task 03000278, callback 948E0, stack top+0x3FC and priority 0x44, then schedules the task.; src/code_08092D60.c: Callback948E0 directly scrolls BG0/BG1 and pulses blend coefficient. |
| 0x08094DEC | `sub_08094DEC` | TaskSineScrollBg0Bg1AndPulseBlend | confirmed | game | asm/nonmatchings/code_08092D60/sub_08094DEC.s: Original ASM loop writes sine/cosine horizontal offsets at shadow+0/+4, vertical drift+0x100/+0x80 at+2/+6, complementary sine-driven blend coefficients 8+s and8-s, then waits for signal 1. C remains a nonmatching draft; identity comes from ASM.; src/video.c: Shadow offsets 0..6 are copied to BG0/BG1 horizontal/vertical offset registers.; src/code_08006D24.c: Blend helper0903C packs the supplied coefficients. |
| 0x08094EE4 | `sub_08094EE4` | StartBgSineScrollBlendTask | confirmed | game | src/code_08092D60.c: Initializes stack allocation 0x400 at global task 0300027C, callback 94DEC, stack top+0x3FC and priority 0x44, then schedules it.; asm/nonmatchings/code_08092D60/sub_08094DEC.s: ASM callback implements BG0/BG1 sine scrolling and complementary alpha blend pulses. |
| 0x080953F8 | `sub_080953F8` | UpdateBg2AffineRegisterShadow | confirmed | game | src/code_08092D60.c: Builds PA/PB/PC/PD from sine/cosine and reciprocal scales, then low/high reference coordinates. Writes shadow halfwords 8..15 only when all three effect checks return zero. The Y reference formula uses0x78 exactly as source; no centered-screen simplification is assumed.; src/video.c: sub_08000B50 copies 0x24 halfwords from gUnk_03001250 to REG_ADDR_BG0HOFS (0x04000010).; include/gba/io_reg.h: BG2PA/PB/PC/PD at 0x20..0x26 and BG2X/Y at 0x28/0x2C map shadow halfwords 8..15 to BG2 affine registers. |
| 0x08095518 | `sub_08095518` | ConfigureBg2AffineDisplay | confirmed | game | src/code_08092D60.c: Sets display mode 2, enables BG2/OBJ, writes BG2CNT 0x7C82, calls sub_080921E4(5,0x1C), resets transform and sets position 0, offset 0xF8 and scale 0x200 before display resume.; src/main.c: sub_08000990 writes the display mode; sub_080009C0 enables display planes/window mask.; src/video.c: sub_08000AA8 case 2 writes BG2CNT. |
| 0x080955CC | `sub_080955CC` | ResetBg2AffineTransform | confirmed | game | src/code_08092D60.c: Resets transform fields x/y/dx/dy/angle to zero and scaleX/scaleY to 0x100. The affine consumer 953F8 confirms field roles.; src/code_08092D60.c: sub_080953F8 reads these scale, position, offset and angle fields to construct the BG2 affine register shadow. |
| 0x080955EC | `sub_080955EC` | SetBg2AffinePosition | confirmed | game | src/code_08092D60.c: Stores the two inputs in transform offsets 4/6, used as x/y by 953F8.; src/code_08092D60.c: Affine consumer confirms the field roles rather than inferring them solely from setters. |
| 0x080955F8 | `sub_080955F8` | SetBg2AffineOffset | confirmed | game | src/code_08092D60.c: Stores the two inputs in transform offsets 8/10, added to x/y by 953F8.; src/code_08092D60.c: Affine consumer confirms the field roles rather than inferring them solely from setters. |
| 0x08095604 | `sub_08095604` | SetBg2AffineScale | confirmed | game | src/code_08092D60.c: Stores the two halfword inputs at offsets 0/2, consumed as reciprocal scales by 953F8.; src/code_08092D60.c: Affine consumer confirms the field roles rather than inferring them solely from setters. |
| 0x08095610 | `sub_08095610` | SetBg2AffineAngle | confirmed | game | src/code_08092D60.c: Stores the byte at offset 12, used as sine/cosine lookup phase by 953F8.; src/code_08092D60.c: Affine consumer confirms the field roles rather than inferring them solely from setters. |

## Raw data source inventory

413 incbins reference 16017404 bytes across 2 source files; 11/412 labels are descriptive; 0 explicit data directives.
Raw incbin ranges include padding and opaque bytes. Descriptive labels and explicit directives do not prove decoded or understood data; no decoding percentage is reported.

## Source graph limitations

- Source-derived graph, not a complete runtime or linked-binary call graph.
- C macros and conditional compilation are not expanded; draft and matching source observations are distinguished.
- Indirect calls, callback registration and arbitrary pointer casts cannot generally be resolved.
- Compiler inlining, optimization, thunks and tail calls may change the linked graph; library internals have no source edges here.
- Only configured function targets are edges; unresolved identifiers may be macros or external functions.
