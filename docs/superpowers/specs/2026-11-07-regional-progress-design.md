# Regional code and data progress

Keep the existing EU main badges and function map. Add a compact SVG with two
byte-weighted progress bars for each ROM: Europe (main), USA and Japan. Show the
same counts in machine-readable JSON and a linked Markdown report. CI must
generate all three without ROMs or extra dependencies.

The owner delegated implementation choices and explicitly requested this work;
the coordinator selects the existing Python/SVG report pipeline. The three
matching workers continue independent function work. Name research remains held,
with its methodology saved in `docs/agents/IDENTIFICATION_METHOD.md`.

## Metric contracts

- Code: matching C bytes / configured ROM code interval. This additional view
  includes SDK code in its denominator and reports linked/original ASM separately;
  it does not replace the existing EU game-only main percentage.
- EU coverage comes from the existing live source partitions. USA/Japan count
  only complete normal-C intervals admitted by exact regional reconstruction,
  recorded with immutable ROM identities and byte hashes, and still active C in
  the current EU source inventory. Drafts, ASM, linked binaries and raw gaps earn
  no matching-C credit.
- Data: bytes reproduced from recorded source declarations / configured ROM data
  interval. Raw incbins, labels, copied padding and the successful whole-ROM checksum
  earn no source-data credit. This is not decoded/understood-data percentage.
  ROM data spans include opaque assets and padding, explicitly documented.
- Code intervals exclude the 0x23C-byte header/startup prelude and include ordinary
  literal pools/alignment, consistently with the existing function inventory.
  Data starts at the end of the code span and continues through the 16MiB ROM.
- Boundaries are independently verified with the unique complete 96-byte memcpy
  plus following 0x280-byte data-block anchor, hash
  `78013e8d34d010fd2ec994368dcf53d418e11e1e51a2c1a909fc4e89939afaf1`.
  Their different offsets are not a global relocation rule.
- EU source-data seed is the 256-byte `__clz_tab` initializer in `src/libgcc2.c`,
  explicitly linked at 0x08366BC0 and verified against the ROM. USA/Japan have no
  admitted source-data intervals. Their existing C reconstruction admits 16
  functions / 1364 bytes each, freshly rechecked on main 8a7c8ef3.
- Reject invalid/overlapping/out-of-bounds metadata; exclude stale source-hash
  receipts and inactive C functions with a visible reason. Do not copy EU progress
  into another region or count a reference-ROM reconstruction as decompilation.

## Implementation and validation

Add a focused stdlib reporting module and a ROM-free metadata ledger. Extend
`progress.py` additively; preserve historical JSON keys and report files. Render
six accessible, labeled SVG bars with exact byte counts in tooltips, displaying
tiny positive values as `<0.01%` rather than zero. Link the panel and metric
definitions from README and the regional guide. Never commit generated reports.

Tests cover denominator separation, inactive/draft/linked receipts, raw-incbin
overlap, stale source hashes, overlap/bounds/hash validation, tiny percentages,
SVG/XML labels and production pipeline integration. Then run the full tooling
suite, normal EU compare, full NONMATCHING and both regional comparisons. Keep
source, data and regional evidence independently auditable.

## Prior art

[Twilight Princess](https://github.com/zeldaret/tp/blob/main/README.md) publishes
separate versions while keeping a shared codebase. The maintained
[decomp report format](https://decompilati.onl/docs/report-format) separates code,
data and functions and supports independent version histories. These are design
references; no external service registration or upload is required here.
[The Minish Cap](https://github.com/zeldaret/tmc/blob/master/README.md) is an
additional GBA reference for keeping multiple verified ROM identities explicit.
