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

## Progress receipts

The README keeps EU main progress and adds two bars per region: matching C and
data reproduced from source. The standard
[code/data separation](https://decompilati.onl/docs/report-format) and
[independent versions](https://github.com/zeldaret/tp/blob/main/README.md) are the
presentation references. Reports are generated locally and by existing CI;
there is no new external account, service registration or upload.

`tools/config/regional_progress.json` records metadata and byte hashes, never ROM
contents. Code starts at offset0x23C. The independently observed code/data splits
are EU0xB9704, USA0xB9174 and Japan0xBAC14. Each is corroborated by a unique736-byte
anchor consisting of the complete96-byte final `memcpy` followed by the first
0x280-byte data block. These boundaries are layout facts, not a universal shift
for functions, RAM globals or assets. Data continues to the16MiB ROM end and
includes opaque assets and padding.

EU code coverage is collected from current C/ASM source partitions, with SDK
included in this additional view. USA/Japan each currently admit16 complete
normal-C functions totaling1364 bytes, rechecked at main8a7c8ef3. The whole-ROM
reconstruction still copies16775852 bytes and does not earn full source credit.
EU data currently admits the256-byte `__clz_tab` initializer from `src/libgcc2.c`
at0x08366BC0; `ld_script.ld` explicitly links its rodata between the two raw data
objects. No regional source-data reuse has yet been admitted for USA/Japan.

Generate and optionally verify all private references:

```sh
python3 tools/scripts/progress.py --out build/progress
python3 tools/scripts/regional_progress.py --verify-local --out build/regional-progress
```

To refresh coverage, first run EU `make compare`, full `make nonmatching`, and
both regional compare commands. Review the generated `build/regions/*/report.json`
against exact ROM hashes and complete compiled function intervals. Update only
the corresponding region's metadata receipts on a tooling branch, with the
verified revision and per-interval hashes. A source-data addition also needs a
matching source initializer/build interval, its normalized source-text hash,
output byte hash, and removal of any overlapping raw incbin. Re-run local receipt
verification, source-only reporting and regression tests. Independent review and
normal delivery gates still apply. Never copy generated reports or ROMs into Git.

`regional_progress.json` preserves excluded/stale receipt explanations. A changed
source hash earns no data credit until revalidated. The bars measure source
reconstruction, not semantic naming, decoded assets or estimated remaining time.

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
