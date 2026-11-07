# Experimental USA and Japan reconstruction

EU remains the default and the matching-decompilation target. USA and Japan
support currently reconstructs each supplied reference ROM using a small set of
verified, same-address C functions from the normal EU compiler output. All other
bytes come explicitly from the corresponding local reference dump. This is an
initial build and verification facility, not a complete regional source port.

## Local inputs and commands

Follow the normal EU setup first, including the EU `baserom.gba`. Keep your own
USA dump as `baserom_usa.gba` and Japan dump as `baserom_jp.gba` in your checkout.
ROMs and generated outputs are ignored; never add them to Git.

```sh
python3 tools/scripts/rom_regions.py baserom.gba --region eu
python3 tools/scripts/rom_regions.py baserom_usa.gba --region usa
python3 tools/scripts/rom_regions.py baserom_jp.gba --region jp
make compare
make REGION=usa compare
make REGION=jp compare
```

The regional commands require the normal EU build tools and Python dependencies,
including `pyelftools`. They validate both local references, run the unchanged
normal EU comparison, assemble the admitted C fragments, link explicit reference
gaps, and require exact fragment addresses/bytes and the entire target-ROM hash.
An input with a valid header but altered payload is rejected. A reconstruction
with no admitted C functions is also rejected.

Custom input locations can be provided without renaming the original dumps:

```sh
make REGION=usa REGIONAL_ROM="/path/to/Shining Soul II (USA).gba" compare
```

`REGIONAL_OUTPUT` and `REGIONAL_BUILD` optionally select output and scratch paths.
The default results are `shiningsoul2_usa.gba` / `shiningsoul2_jp.gba`, their ELF
files, and `build/regions/usa/report.json` / `build/regions/jp/report.json`.
Only `all` and `compare` are supported with a regional selector; other targets
require `REGION=eu`. EU `nonmatching` continues to compile every EU draft.

## Supported reference identities

Each reference is revision 0 and exactly 16,777,216 bytes. The complete SHA-1 and
SHA-256 values are pinned in `tools/config/rom_regions.json`.

| Region | Game code | SHA-1 |
| --- | --- | --- |
| EU | AU2P | aa1288be9257337abdfe3034898cf6c7aa778fbc |
| USA | AU2E | 541469b319a72ef4bc262483745526ac3eddd925 |
| Japan | AU2J | 19856388caf5140f7527728bd09e20bcb8924eeb |

## Coverage and limitations

The initial verified USA and Japan builds each contain 16 compiler-backed C
intervals totaling 1,364 bytes, with 16,775,852 reference bytes. Consult each
generated report for the actual current counts, canonical EU symbols, addresses,
sizes and per-function hashes. The admitted intervals include complete function
literal pools. Top-level assembly and `INCLUDE_ASM` fallbacks receive no C credit.

A whole-ROM `OK` verifies reconstruction integrity. It does not establish full
regional C coverage, remaining effort, or an increase in the EU matching or name
percentages. Matching EU bytes at the same address also does not prove that the
corresponding function is executed by a regional gameplay path.

Regional RAM and game-code changes do not follow one global offset. This initial
builder therefore admits only complete, exact same-address functions. It retains
the normal compiler flags and never patches generated opcodes or invents region
globals. Broader source reuse requires verified per-symbol addresses, data layouts
and ABI contracts; interior-byte anchors alone are not callable entry points.

## Speedrun research

The supplied USA movie was recorded for VBA-rr. A fresh BizHawk/mGBA replay did
not reproduce its early gameplay progression. The movie enables VBA-rr's
prefetch timing option (`MOVIE_SETTING_LAGHACK`); this is not an instruction to
discard recorded lag frames. A separate native VBA-rr experiment reached the
opening forest sequence, but full-movie synchronization has not been verified.
Keep runtime observations separate from matching-source coverage, and require
original-ROM evidence before assigning regional hook addresses.
