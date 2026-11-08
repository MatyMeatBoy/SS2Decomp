# EUR data reconstruction checkpoint

This work runs in an independent coordinator checkout, separate from matching code and naming-worker research. The initial conversion area consists only of the three ranges below. Canonical symbols, byte order, addresses and the rest of each source file are preserved. Base revision: `9bf864c550cf6db933686cb3860d719f6aa31ad7`.

## Source-storage inventory

At the base revision, `tools/scripts/data_inventory.py` finds **413 incbin ranges, 16,017,404 bytes**, in `data/rodata.s` and `data/rodata_libgcc_end.s`. This is raw source storage, including opaque resources and padding; it is not a count or percentage of decoded assets. The ranges are not continuous: `08366BC0..08366CC0` is outside these incbin ranges and is not classified as data here.

The three converted tables remove exactly **680 bytes** from incbin storage, leaving **410 ranges and 16,016,724 incbin bytes**. Inventory and observed resource uses alone are not conversions. The machine-readable checkpoint is [typed_tables_eu.json](data_work/typed_tables_eu.json).

## Explicit source tables

| Canonical symbol | Source representation | Bytes | Evidence |
| --- | --- | ---: | --- |
| `gUnk_080B9704` | 320 signed halfwords; sine lookup, amplitude 256, period 256 plus 64 entries | 640 | Signed phase/vector consumers; exact complete values and repeated extension. |
| `gUnk_0849E730` | Eight signed direction-phase selectors | 16 | Original exit-approach indexing and tuple `(4,7,8,9,12,15,0,1)`. |
| `gUnk_084EBD5C` | Six word-sized decimal divisors | 24 | Number-token expansion consumes `100000,10000,1000,100,10,1`. |

These use `.2byte`/`.4byte` literal directives in their existing assembly files. The sine values are recorded integers; the build does not depend on floating-point regeneration. No label is renamed and no new alignment, structure boundary or helper is introduced.

## Observed but still opaque

`0838AFF0` is used as a language-specific resource pointer table, but its 154,460-byte declared storage block is not assumed to be a uniform pointer array. `084F0AC0` is used by map-set-0 destination selection; its pointer/record graph remains pending. `08518938` is a resource-table base whose 9,597,468-byte declared block remains opaque. These roles guide subsequent investigation and contribute **zero converted bytes** in this checkpoint.

## Verification and regional limits

The actual emitted source was parsed and repacked little-endian, then compared against all three original EUR ranges and the newly assembled ELF. The **2,866 defined global symbol values, sizes and types remain unchanged**. Normal `make compare` reports `shiningsoul2_eu.gba: OK`; `make nonmatching` and the tree check pass. Range SHA256 values and pinned primary consumers are recorded in the checkpoint JSON. Generated `docs/progress/*` files are excluded.

EUR ROM SHA1: `aa1288be9257337abdfe3034898cf6c7aa778fbc`. This checkpoint reports no USA/Japan data conversion, cross-region address delta or global decoding percentage. Existing regional link research remains a separate static correspondence result.
