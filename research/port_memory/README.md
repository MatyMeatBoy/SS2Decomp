# Memory contracts and relative VBlank audio order

This research records bounded behavior useful for a future port. It changes no
function, normal build, shared tool, header, claim or matching classification.
Primary source is [PR30's fixed revision](https://github.com/MatyMeatBoy/SS2Decomp/commit/156cba5168f32de3d9e92b426c925922a365d1d6).
`source-evidence.json` pins the relevant public files and their verified Git-byte
hashes. Existing QueueMemoryCopy/FlushMemoryCopyQueue names are already confirmed;
this folder proposes no further names or game fixes.

## Reproduce

Use your own EU dump. Generated artifacts/dependencies remain in build/:

```sh
python -m pip install --target build/port_memory/deps unicorn==2.1.4
python research/port_memory/verify_memory.py
python research/port_memory/verify_vblank_order.py --binutils-dir C:/msys64/ucrt64/bin
```

The memory script supports `--rom`, `--deps` and `--out`. The audio-order runner
supports `--deps`, `--out`, `--cc` and `--binutils-dir`; ARM tools may instead be on
PATH. Its default performs the existing helper-suite fresh compilation,855 API
cases and10 binder checks, then12 scenarios×32 frames in VSync→Main order.
`--skip-build` is diagnostic reuse only and reports `fresh_build=false`.

No ROM/assets or generated binaries belong in git. Reports contain synthetic
inputs, structural addresses, counters and hashes. Memory checks require actual
PC return to the sentinel and SP restoration. They execute original ROM code,
not reconstructed replacement functions, so they establish no new matching C.

## Deferred memory-copy queue

[01348/01394/013F8 and their VBlank callers](https://github.com/MatyMeatBoy/SS2Decomp/blob/156cba5168f32de3d9e92b426c925922a365d1d6/src/code_08000EC8.c)
use count0x03002358 and queue pointer0x0300235C. Original GBA entries occupy12B:
source32,destination32,control32. The struct's historical DmaEntry label does not
mean that these consumers program DMA registers: flush calls BIOS CpuSet/FastSet.

35 enqueue cases cover counts0/399/400/401/FFFFFFFF and sizes0/1/4/31/32/33/64.
Only count<400 appends; full/out-of-range counts leave records unchanged, without
an error return. Sizes aligned to32 receive the high control bit. Enqueue records
pointers and a control word; it does not snapshot or copy source data.

The fixture records four actual SWI boundaries, deliberately without emulating
BIOS or destination copies:

| Enqueued size | SWI | r2 at boundary |
|---|---|---|
|31 | CpuSet0B |0x04000007 |
|32 | CpuFastSet0C |8 |
|64 | CpuFastSet0C |16 |
|0 | CpuFastSet0C |0 |

Changing the synthetic source byte from0x11 to0x22 after enqueue yields0x22 at
all four SWI boundaries. Flush resets count but leaves stale records. Two cancel
cases reset count without changing EWRAM records or executing a copy. The size0
BIOS effect is **not** established by recording control0; no BIOS/hardware copy
semantics or timing are inferred from this hook.

A port must establish source lifetime through flush/cancel and preserve ordered
deferred consumers. Copying immediately at enqueue can change the observed data.
A wholly native transient queue could use native pointers if all allocation,
writers and consumers migrate consistently; a raw12B GBA entry is not that native
struct. This is a design boundary, not proof that current code works host64.

## Allocator representation and native layout

The same source defines a16B GBA MemBlock: first word has `prev:31` and `used:1`,
then next/prevFree/nextFree at offsets4/8/12. Payload+16 and u32 pointer operations
are hardcoded. The original arena and tag representation therefore cannot be
ported by widening pointers while leaving those offsets/bitfields unchanged.

29 original-ROM operations exercise selected front/tail allocations, valid frees,
coalescing, OOM and one wrap boundary. After every operation the fixture checks
physical link monotonicity/backlinks, used bit31, exact free-list membership and
bidirectional links; releasing everything coalesces back to one free region.
Request0x40000 returns0 without EWRAM mutation. RequestFFFFFFFF wraps its u32
roundup and is observed to allocate the minimum16B; this is an unsupported-input
observation, not a supported API promise or a proposed source fix. No invalid,
interior or double-free safety is claimed.

An optional native layout measurement needs only a host C compiler:

```sh
cc -std=c89 -Wall -Wextra research/port_memory/heap_layout_probe.c -o build/port_memory/heap_layout_probe
build/port_memory/heap_layout_probe
```

Measured with x86_64-w64-mingw32 GCC16.2.0: pointer8, native MemBlock32 with offsets
8/16/24 versus fixed GBA32 header16; native queue24 versus GBA queue12. Measure the
chosen host ABI rather than assuming this exact native layout everywhere. The
probe is not an allocator/queue port and demonstrates no native functional parity.

## Relative audio-call order from01180

Source01180 calls m4aSoundVSync before pending VBlank callback/register-shadow/
copy-queue work, then calls m4aSoundMain afterward when sound is enabled. The
original engine harness's Main→VSync order is a documented synthetic schedule.
This runner additionally compares VSync→Main, matching the relative audio-call
order seen in01180; it does not execute or emulate that entire IRQ interleave.

`verify_vblank_order.py` leaves `research/m4a_1/` untouched. It writes a driver in
build/ that changes only phase order and resolves paths back to the original
harness. It fails if expected source patterns change. The driver still invokes
the real fresh helper build and existing C binders; it never rewrites callback
slots from Python or forwards the candidate to original m4a_1 ROM/IWRAM.

12×32 frames pass:384 frames,768 Main/VSync comparisons and12 initial states.
Existing PCM/persistent-state/I/O comparisons and activation assertions remain,
including their documented callback canonicalization and20B service/1KiB stack
exclusions. Reports include fresh-build status, source/candidate hashes, original
engine-source hash and generated-driver hash. This validates another relative
API schedule only: not IRQ entry, register-shadow/copy-queue interleave, BIOS,
DMA/audio hardware, cycles, complete custom-override ABI or native64 compatibility.
The strict object audit remains0/35 equal; matching credit remains zero.

## Mixed valid-pointer workload for a future allocator adapter

```sh
python research/port_memory/verify_heap_trace.py
```

The default seed0x535332 runs500 interleaved front/tail/free steps, at most32 live
allocations, and selected sizes0..2048, then releases the remaining allocations.
It checks physical/free-list invariants, active used flags, payload bounds,
nonoverlapping live allocations and unchanged synthetic live payloads after each
step. The measured run makes11596 live-payload checks and ends with one coalesced
free region. Cleanup calls are reported separately from the500 workload steps.

`--rom`, `--deps`, `--out`, `--steps` and `--seed` make the workload reproducible.
The report retains requests/returned GBA addresses, payload hashes, Python version
and script hash. It can become a workload for a future arena/address adapter;
no native implementation is exercised or claimed equivalent here. Invalid frees,
all allocation sizes, thread safety and universal allocator correctness remain
outside this fixture. The trace contains synthetic data only and stays in build/.
