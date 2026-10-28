# Function identification

Generated from configs, C/ASM sources and the evidence catalog; no ROM required.
Existing descriptive identifiers and confirmed catalog names count as identified. Proposals do not.

| Domain | All functions | Existing | Confirmed | Proposed | Unidentified | Identified |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| game | 1880 | 5 | 17 | 5 | 1853 | 1.17% |
| sdk | 155 | 129 | 6 | 0 | 20 | 87.10% |
| all | 2035 | 134 | 23 | 5 | 1873 | 7.71% |

SDK/game here describes catalog origin; module categories used by progress metrics remain unchanged.

Full inventory: [functions.json](functions.json). Source graph: [JSON](callgraph.json), [DOT](callgraph.dot).
Graph observations include source locations and distinguish compiling C drafts from matching C.

## Catalog entries

| Address | Canonical symbol | Display name | Status | Domain | Evidence |
| --- | --- | --- | --- | --- | --- |
| 0x080003F0 | `sub_080003F0` | TaskYieldOneTick | confirmed | game | asm/nonmatchings/sched/sub_080003F0.s: Loads r0=1 and branches to sub_080003F4. |
| 0x080003F4 | `sub_080003F4` | TaskSleepTicks | confirmed | game | asm/nonmatchings/sched/sub_080003F4.s: Stores tick count at task+0x14, saves context and switches to scheduler stack. |
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
| 0x080135C4 | `sub_080135C4` | LinkCreatePlayerEntity | confirmed | game | docs/LINK_CABLE.md: Creates player entity and assigns per-slot send and receive block pointers. |
| 0x08066720 | `sub_08066720` | LinkBroadcastMessageTask | confirmed | game | docs/LINK_CABLE.md: Announces tagged message, sends eight-byte chunks, waits for peer acknowledgments. |
| 0x0806690C | `sub_0806690C` | LinkReceivePeerMessageTask | confirmed | game | docs/LINK_CABLE.md: Per-peer receiver acknowledges announce/chunks and dispatches message tag. |
| 0x08094530 | `sub_08094530` | InitializeTaskStack03000270 | proposed | game | src/code_08092D60.c: Task variant using global03000270 and waits through080003F0; precise screen role unknown. |
| 0x080948E0 | `sub_080948E0` | AnimateSineOffsets | proposed | game | asm/nonmatchings/code_08092D60/sub_080948E0.s: Infinite loop uses sine table080B9704, offsets-0xAA/+0x80 and yield080003F0; precise display role unknown. |
| 0x080949A8 | `sub_080949A8` | InitializeTaskStack03000278 | proposed | game | src/code_08092D60.c: Initializes task global03000278, allocation0x400 and stack+0x3FC, callback080948E0 and state0x44. |
| 0x08094EE4 | `sub_08094EE4` | InitializeTaskStack0300027C | proposed | game | src/code_08092D60.c: Initializes task global0300027C, allocation0x400 and stack+0x3FC, callback08094DEC and state0x44. |
| 0x080955CC | `sub_080955CC` | ResetTransformState03000280 | proposed | game | src/code_08092D60.c: Observed halfwords at offsets6/4/10/8=0, byte12=0, halfwords2/0=0x100 in gUnk_03000280; transform interpretation remains provisional. |

## Raw data source inventory

413 incbins reference 16017404 bytes across 2 source files; 11/412 labels are descriptive; 0 explicit data directives.
Raw incbin ranges include padding and opaque bytes. Descriptive labels and explicit directives do not prove decoded or understood data; no decoding percentage is reported.

## Source graph limitations

- Source-derived graph, not a complete runtime or linked-binary call graph.
- C macros and conditional compilation are not expanded; draft and matching source observations are distinguished.
- Indirect calls, callback registration and arbitrary pointer casts cannot generally be resolved.
- Compiler inlining, optimization, thunks and tail calls may change the linked graph; library internals have no source edges here.
- Only configured function targets are edges; unresolved identifiers may be macros or external functions.
