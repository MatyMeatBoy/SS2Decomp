# Experimental m4a_1 C reconstruction

This is real C reconstructed from the SS2 EU ASM, outside the normal build.
It currently implements the helpers and stream commands listed in `inventory.json`.
SoundMain, its mixer and MPlayMain are still pending.
There are no empty implementations for those routines.

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
currently pass 326 cases, including guarded reads, stream advancement, linked
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
the original 36-entry template. Binding those serialized callback values to the
experimental C handlers is a separate integration task, not silently complete.

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
