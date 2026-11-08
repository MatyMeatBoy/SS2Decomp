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

`0838AFF0` is used as a language-specific resource pointer table, but its 154,460-byte declared storage block is not assumed to be a uniform pointer array. `084F0AC0` was initially opaque; the pointer table is reconstructed in the second checkpoint below, while its target records remain opaque. `08518938` is a resource-table base whose 9,597,468-byte declared block remains opaque. These roles guide subsequent investigation and contribute **zero converted bytes** in this checkpoint.

## Verification and regional limits

The actual emitted source was parsed and repacked little-endian, then compared against all three original EUR ranges and the newly assembled ELF. The **2,866 defined global symbol values, sizes and types remain unchanged**. Normal `make compare` reports `shiningsoul2_eu.gba: OK`; `make nonmatching` and the tree check pass. Range SHA256 values and pinned primary consumers are recorded in the checkpoint JSON. Generated `docs/progress/*` files are excluded.

EUR ROM SHA1: `aa1288be9257337abdfe3034898cf6c7aa778fbc`. This checkpoint reports no USA/Japan data conversion, cross-region address delta or global decoding percentage. Existing regional link research remains a separate static correspondence result.


## Second checkpoint: map-set-zero destination pointers

At base `fce395533dd0e8789e3e38d358091441942fc573`, the complete existing range `084F0AC0..084F0B10` is a table of twenty 32-bit data pointers. Matched `sub_08023274` case zero loads `gUnk_084F0AC0[index]` and installs the result at scene `+0x71C`; original `0802332C..08023334` independently confirms the word stride, pointer load and store.

The eighty bytes now use `.4byte gUnk_084EDCA8 + offset`. Every target stays inside that existing canonical container, at offsets `0x78 + index * 0x248`. No new record label, alignment or target-container type is introduced. The records and their contents remain `incbin`, and this checkpoint does not claim their complete graph is understood. Details and exact target values are in [mapset0_pointer_table_eu.json](data_work/mapset0_pointer_table_eu.json).

This removes one additional eighty-byte incbin range: **409 ranges and 16,016,644 incbin bytes remain**, with **760 bytes across four explicit source tables** cumulatively. These are source-storage counts, separate from code matching and from decoded assets. No global data-decoding percentage is inferred.

The emitted expressions were resolved using the preserved canonical symbol, repacked little-endian and compared with the original EUR ROM and newly assembled ELF. All **2,866 defined global symbol values, sizes and types remain unchanged**. `make compare` reports `shiningsoul2_eu.gba: OK`; full `make nonmatching` and the zero-error tree check pass. Changes are limited to this existing data range and its English documentation/manifest; generated progress, code, claims and opaque assets remain unchanged.


## Third checkpoint: inventory coordinate pairs

At base `804cce5a72a69325122bdb1b9a379e1a7104456c`, the existing ranges `084ECBB0..084ECBBC` and `084ECBBC..084ECBC8` contain three signed X/Y halfword pairs each. The first table is `(41,20), (22,15), (3,10)`; the second is `(-3,10), (-22,15), (-41,20)`. Original inventory-controller signed loads and the matched inventory drawing pass establish four-byte record stride and X/Y field offsets zero/two. Reviewed paths read these ROM tables and write resulting coordinates to RAM; this is not a universal index-safety or whole-program no-write claim.

Exactly three incbin spans totaling twenty-four bytes now use literal `.2byte` directives. The existing global `gUnk_084ECBB2` remains at first-table offset two, between its X and Y fields. All labels, bounds, values, symbol sizes/types and existing alignment remain intact; no structure ABI or helper is introduced. The machine-readable checkpoint is [inventory_coordinate_tables_eu.json](data_work/inventory_coordinate_tables_eu.json).

The actual emitted source was parsed and repacked little-endian, then compared with the original EUR ROM and rebuilt ELF. All **2,866 defined global symbol values, sizes and types remain unchanged**. Normal `make compare` reports `shiningsoul2_eu.gba: OK`; full `make nonmatching` and the zero-error tree check pass. The controller function and matching workers are untouched; no code-matching improvement is claimed.

This leaves **406 incbin ranges and 16,016,620 incbin bytes**, with **784 converted bytes across six explicit source tables** cumulatively. These are source-storage measurements, separate from decoded assets, matching code and semantic function names. EUR is the only converted region in this checkpoint.
