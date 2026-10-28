# Experimental m4a_1 C reconstruction

This is real C reconstructed from the SS2 EU ASM, outside the normal build.
It currently implements the helpers and stream commands listed in `inventory.json`.
All semantic bodies now have C implementations, including SoundMain, its mixer,
MPlayMain and ply_note. The two-byte indirect-call veneer is represented by typed
C callback calls. Binary matching and normal-build integration remain pending.

The `M4AExp_` namespace prevents collisions with the original module. Addresses
inside tracks, players and channels remain serialized 32-bit GBA addresses. This
backend is compiled for ARM/GBA and directly accesses that address space. Native
host execution requires an address translator; casting these values to host
pointers is not supported. Public C entry points use ordinary C arguments and
return values. The original r2/r3/ip helpers and shared tails are adapted explicitly
by the tests, not claimed to have the same binary ABI.

## Reproduce the separate differential tests

Use a Python with pip, the repository's installed agbcc and ARM binutils, and your
own EU `baserom.gba`. No ROM, compiler, dependency or generated binary is committed.

```sh
python -m pip install --target build/m4a_exp/deps unicorn==2.1.4
python research/m4a_1/test_helpers.py
```

ARM binutils must be on PATH. On Windows a directory can be supplied explicitly:

```sh
python research/m4a_1/test_helpers.py --binutils-dir C:/msys64/ucrt64/bin
```

`--deps`, `--out` and `--cc` override dependency, output and compiler locations.
The defaults are checkout-relative; all generated objects, logs and test results
go under `build/m4a_exp/`. No global packages or shared tools are modified.

The harness compiles the experimental C with normal SS2 agbcc flags, links only
its necessary compiler runtime, and executes both that code and original ROM ASM
in Unicorn. It compares all EWRAM bytes, I/O register bytes, ordered I/O writes,
selected returned values and stack restoration. The implemented entry points
currently pass 855 cases, including guarded reads, stream advancement, linked
channels, parameter flags, pattern/repeat control, note release, channel priority/stealing and VSync DMA
write order. The counter255 repeat case preserves the wide comparison after the
stored byte wraps. Every tested call must reach its return sentinel.

This is not the normal suite, a whole-game test or proof of equivalence for all
inputs. Unicorn's mapped I/O bytes do not emulate GBA devices, bus timing, BIOS
read protection or every ARM7 unaligned-access detail. Invalid pointers, arbitrary
aliasing and real audio output remain outside the current fixture coverage.
Test setup writes synthetic streams only into an emulated copy of memory.

## Matching and provenance

Functional differential passes do not mean matching C. No original function,
progress denominator or normal build has been replaced. The normal invariants
remain `make -j1 compare` and `make -j1 nonmatching`; both passed at the baseline.
Experimental C cannot be credited as matching before ordinary module/ROM checks.
The separately researched modified `-ftst` compiler is diagnostic only and is not
used by this harness or installed into the project.

Bodies here were reconstructed directly from the SS2 ASM. External C ports were
research aids, not copied source; this avoids importing unclear donor licensing.
`inventory.json` records original source hashes and the base revision per entry.
The `CopyJumpTable` API takes its source address explicitly; its tested source is
the original 36-entry template. Explicit binding adapters are described below; applying them to the normal
build remains a separate integration task.

The real IWRAM copy is 1024 bytes although the configured SoundMainRAM interval
is 932 bytes. It includes trailing bytes from other routines. Preserve that
distinction when reconstructing the mixer; do not copy arbitrary compiled C bytes
to IWRAM and claim that the entry/return ABI or timing is preserved.

## Note service binding

`M4AExp_Note(length_index, player, track, services)` takes an additional explicit
GBA32 pointer to three callback words: ClearChain, TrkVolPitSet and MidiKeyToFreq.
The integrator must resolve the current dynamic jump-table bindings, including
RAM overrides. This service API is not a claim of the original three-register ABI.
The fixture binds ClearChain to experimental UnlinkChannel, TrkVolPitSet to the
existing normal C routine, and frequency conversion to an adaptation of this
repository's already matching `src/m4a.c` formula. The latter uses experimental
MultiplyHigh32 and is dependency reuse, not additional newly reconstructed code.
The CGB frequency callback and TrackStop oscillator callback retain their dynamic
sound-structure bindings and execute existing normal C in the fixture.

An execution hook rejects any candidate call entering the original m4a_1 interval;
passing by secretly invoking its ASM helpers is therefore a test failure. The
service words live in IWRAM separate from the compared EWRAM payload. Global
jump-table override integration remains pending. Note tests include optional
stream bytes, nested-voice rejection, split/rhythm voices, CGB/PCM channel types,
active/released/free channels, lower/equal/higher priority and owner ordering.

`M4AExp_MPlayMain(player, services)` reuses the first three service words, followed
by FadeOutBody and Clear64byte callbacks. Chained player callbacks receive the
services pointer as an extra argument; ordinary one-argument callbacks ignore it
under the ARM ABI. The sound's command table and note callback must be explicitly
rebound to the experimental namespace. Tests bind tables in IWRAM, outside the
EWRAM payload comparison; they do not claim whole-IWRAM equivalence. FadeOutBody
is adapted from the existing project C with experimental TrackStop, and its
18 standalone oracle cases are dependency validation, not new module coverage.
The 209 MPlayMain cases exercise guards, tempo ticks, waits, volume/note/fine
dispatch, track initialization, LFO phase/speed/type/delay and channel updates.
Two chained-player cases exercise child execution before paused/active parent processing.
Arbitrary override combinations remain unqualified.

## Mixer qualification

SoundMain passes 302 fixtures through the original, unchanged 1024-byte IWRAM
copy as oracle. The candidate executes C and an execution hook rejects both the
original ROM module and its copied IWRAM interval. Tests include raw and
interpolated samples, positive/negative extremes, sample ends, loops and loop
overshoot, multiple channels, modular byte mixing, reverb, DMA-buffer selection,
ADSR/pseudo-echo states and controlled VCOUNT read sequences. The VCOUNT fixture
tests the deadline decision, not device timing. The services fixture is outside
the original IWRAM code-copy interval.

`M4AExp_SoundMainRAM(sound, output, count, line_limit)` is an ordinary C function.
It does not preserve the original shared caller stack, ARM/Thumb transitions,
relocation/copy entry or cycle budget. It is exercised through SoundMain, so its
302 fixtures are the same cases, not additional tests. PCM buffer cases use valid
aligned output sizes of at least 16 bytes; arbitrary aliasing, malformed wave
lengths, zero-sized loops and extreme overflow states remain unqualified.

The optional object audit uses the repository's strict byte/relocation normalizer:

```sh
python research/m4a_1/audit_objects.py
```

It requires the repository Python dependencies (including pyelftools), the normal
`build/asm/m4a_1.o`, and the harness's candidate object. The current conservative
comparison is **0 of 35 configured ELF ranges equal**. Such ranges can include
shared entries, pools or multiple semantic routines, so this is not a separate
verdict for each semantic routine. Prefixed helper symbols are not conflated;
the unconfigured repeat entry and veneer without a C API are not independently
compared. Zero integrated matching credit is claimed. Its JSON stays in build/.

## Explicit callback adapters

`M4AExp_BindKnownJumpTable(table)` replaces only exact known SS2 EU handler
addresses in an already initialized 36-word table. Existing normal C callbacks
and unknown RAM overrides remain unchanged. It is idempotent.
`M4AExp_BindKnownSoundCallbacks(sound)` similarly migrates the known player-head
and note callbacks. `M4AExp_BindKnownPlayerCallback(player)` migrates one known
next-player callback; the caller visits each relevant player explicitly.
These helpers are experimental migration code, not reconstructed original code.

The harness now executes these C adapters to prepare candidate fixtures; Python
no longer rewrites callback slots itself. Ten adapter checks validate expected
bindings, preservation of unknown overrides and table idempotence, separately
from the 855 original-ASM cases. Service pointers and callback binding state are
fixture setup in IWRAM, not a claim that original hardware ABI remains intact.
An override with a special original register ABI needs its own C adapter; leaving
its address unchanged alone does not establish compatibility.

`M4AExp_InitDefaultServices(services, bound_table)` writes five service words:
clear-chain from slot34, track volume/pitch from slot33, the existing frequency
formula adapted to C MultiplyHigh32, fade from slot32 (the original default is
adapted to C TrackStop), and clear64 from slot35. An unknown fade override is
preserved. The caller may explicitly replace individual service words afterward.
A typical GBA-side experimental setup is:

```c
M4AExp_CopyJumpTable(table, 0x080BB7E8U);
/* Apply the game's normal command overrides before binding. */
M4AExp_BindKnownJumpTable(table);
M4AExp_BindKnownSoundCallbacks(sound);
M4AExp_BindKnownPlayerCallback(player); /* for every relevant player */
M4AExp_InitDefaultServices(services, table);
/* Calls now use the explicit ordinary-C services argument. */
M4AExp_MPlayMain(player, services);
```

This is an experimental setup recipe, not a normal-build change or a native-host
port. The fixed EU code addresses identify bindings for the pinned base revision.

## Persistent multiframe engine scenarios

Run the composed engine harness with a fresh build:

```sh
python research/m4a_1/test_engine.py --binutils-dir C:/msys64/ucrt64/bin
```

The default first rebuilds the candidate and runs the 855 individual oracle cases
and 10 adapter checks. `--deps`, `--out`, `--binutils-dir` and `--cc` propagate to
that build. `--skip-build` is a local diagnostic shortcut which explicitly reuses
the previous candidate; the report records whether the build was fresh.

Twelve scenarios run 32 frames each (384 frames, 768 Main/VSync phase snapshots
and 12 initial-state comparisons). Original SoundMain calls original MPlayMain,
Note and the unchanged IWRAM mixer; candidate SoundMain calls the C versions via
C-bound callbacks and services. The paired machines retain memory across frames.
Both then call their respective SoundVSync. Existing normal C dependencies such
as CgbSound are shared, with candidate entry to original m4a_1 ROM/IWRAM forbidden.

Coverage includes fixed/interpolated PCM, wave/song loops and sample/note ends,
one-channel priority stealing, LFO, fade, two chained players, actual existing C
memacc true/false conditional jumps through the bound Goto slot, existing xcmd
handlers, CGB square/wave/noise, 528-byte frames with a complete 1584-byte ring,
and 96-byte interpolated frames with DMA period16. Activation assertions require
nonzero PCM, dispatched notes, changing LFO state, repeated loop notes, the
higher-priority owner, fade TrackStop calls and cleared track flags, memacc side
effects, and actual CGB register writes. Major entry visit counts also agree.

Each phase compares the complete EWRAM payload including PCM, IWRAM state, I/O
register bytes and cumulative ordered I/O writes. Only declared callback fields
and jump-table pointers are canonicalized between namespaces. The explicit
20-byte C service workspace and reserved 1KiB call-stack area are excluded from
IWRAM comparison; all other IWRAM bytes compare, including the sound-info pointer.
These exclusions are not a claim of stack-layout or binary-ABI equivalence.

`build/m4a_exp/tests/engine_results.json` records frame PCM/state hashes, visit
counts, I/O counts and source/candidate hashes. A divergence stops at its first
scenario/frame/phase and writes `engine_failure.json` with bounded differences.
Only synthetic waves and streams enter the fixture; no game PCM/assets are
exported. This is persistent software composition evidence, not actual audio,
DMA hardware, ARM7 timing, arbitrary custom-override ABI or whole-game proof.
The strict object result remains 0/35 equal and matching credit remains zero.
