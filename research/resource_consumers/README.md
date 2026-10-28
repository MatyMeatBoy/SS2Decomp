# Resource consumers and proposed roles (SS2 EU)

This folder records bounded consumer evidence and ten display names independently
reviewed and accepted in `tools/config/function_names.json`. It changes no
canonical function symbol, header, claim or normal build.
Role identification is separate from matching C and from decoded-data coverage.

Source reference: [public PR29 merge](https://github.com/MatyMeatBoy/SS2Decomp/commit/0fed377ba72198198468238647333649254e93da).
The files referenced by `name-proposals.json` were read at that revision and
checked against local source text. Its hashes are public Git file bytes (LF).
The proposal file retains its original `proposed` records as review history;
its `applied` and `coordinator_review` fields record the acceptance. The catalog
contains the confirmed display names.

## Reproduce the bounded role checks

Supply your own EU dump. The script asserts its SHA1 and reads it without editing
or exporting ROM content. Optional dependencies and all results stay in build/:

```sh
python -m pip install --target build/resource_consumers/deps unicorn==2.1.4
python research/resource_consumers/verify_roles.py
```

`--rom`, `--deps` and `--out` accept explicit alternate paths. This executes the
original ROM instructions, not a new C implementation. Every call must reach its
return sentinel and restore SP. Outputs contain counts, IDs and addresses, not
images, palettes or asset bytes.

- 24 orientation tests exercise low32 cross-product sign, including signed
  extremes. This is not exact geometric orientation when arithmetic overflows.
- 36 side-sign tests compare two result words. Collinear zero versus nonzero
  returns different; this function alone is not segment intersection.
- 8 palette tests use synthetic colors/deltas. The signed8 delta sum truncates to
  unsigned16 before an upper cap31, so underflow becomes31 rather than0. Bit15
  clears. The script also checks all EWRAM outside the16-color payload.
- Four resolver checks and metadata assertions establish the addresses below.
  They do not test all resource categories, a complete decoder or an importer.

These 68 role cases, four resolver/metadata and six animation-boundary checks
provide bounded role and
width evidence. They confer no new C matching credit. Unicorn does not establish
hardware timing or every ARM7 unaligned-access behavior.

## Two text representations with different consumers

[Initializer1A70C and readers1A3D0/1A764](https://github.com/MatyMeatBoy/SS2Decomp/blob/0fed377ba72198198468238647333649254e93da/src/code_08017F7C.c)
initialize/read two distinct resources. Both readers stop at0xFD or byte>0xF1.

| Path | Index and consumer | Proven limit |
|---|---|---|
| Bitmap resource0x40000 at0x0892C028 |1A3D0 computes `(byte-1)&255`, queues64B from `font+index*128`, writes two tilemap entries and advances upload cursor64 | This reader reaches slots0..240 and255; byte0 means255. Slots241..254 are not reached by this reader. |
| Sprite metadata0x5004A at0x08956C00 |1A764 computes `(u16)(byte-1)` and calls65230 with style0;65230 passes it as frame position to7CF0 | Byte0 means65535, not255. Its use/validity as a frame position is unqualified; the verifier deliberately does not dereference it. |

The bitmap entry extends to the next category section at0x08934028:32768B,
256slots of128B. The second64B of each slot are zero in the checked EU input.
That capacity and padding do not establish a full character map or meaningful
content/use in every slot. The external [extractor at its audited revision](https://github.com/foone/ShiningSoul2Extractor/blob/8b230e6a9d1b56feda994fa8a2e9a9c996e20caf/extract_ss2.py)
exports153 glyphs; this is an extractor limit, not the resource's capacity.
Consult its [license and notices](https://github.com/foone/ShiningSoul2Extractor/blob/8b230e6a9d1b56feda994fa8a2e9a9c996e20caf/LICENSE)
before reusing code. No extractor implementation is copied here.

[65230's wrapper](https://github.com/MatyMeatBoy/SS2Decomp/blob/0fed377ba72198198468238647333649254e93da/src/code_0805FB7C.c)
uses descriptor+8 as metadata and+0 as pixel data. In the
[7CF0 consumer](https://github.com/MatyMeatBoy/SS2Decomp/blob/0fed377ba72198198468238647333649254e93da/asm/nonmatchings/code_08006D24/sub_08007CF0.s):

1. Metadata+2 is an inclusive bound for style; the checked resource holds1.
2. `metadata+word(metadata+4)` points to12-byte frame records (0x08956C0C).
3. `metadata+word(metadata+8)+12*style` selects a sequence record; style0 is
   0x0895800C. Its+8 relative offset reaches sequence data at0x08958018.
4. A halfword at `sequence+4*frame_position` selects a12-byte frame record.
   The record's+8 relative offset reaches parts data.

The comparison accepting style1 does not establish that a valid style1 record
exists. The observed text wrapper always supplies style0. For this resource, the
style0 sequence data starts12B after its sequence record; that fact must not be
relabelled as a proven second style. No style1 or byte0 frameFFFF execution is
validated here.

The existing [08CC4 sequence-advance consumer](https://github.com/MatyMeatBoy/SS2Decomp/blob/0fed377ba72198198468238647333649254e93da/src/code_08006D24.c)
uses the sequence record's halfword+4 as an exclusive position count. It resets
an input position at/above that count before reading duration at+2 of the4-byte
sequence entry. For style0 here, the count is255: the advance consumer bounds
positions to0..254. Six original-ROM cases verify last-position stop versus loop,
reset of255/65535, ordinary advancement and a duration boundary, with writes
confined to the two caller-supplied halfwords. This does not validate drawing
frame65535:1A764/65230 call the draw consumer directly, bypassing08CC4's reset.

Thus this route includes sequence/frame/parts indirection, not `glyph*128`.
The resolver gives its pixel companion0x6004A at0x08AEF294 and palette companion
0x8004A at0x08AF1294. These are structural addresses, not a claim that their
formats, animation semantics or script encoding are fully decoded.

## Proposal boundaries

`name-proposals.json` preserves canonical addresses and `status: proposed`.
These are the submitted records, not the current catalog status.
Geometry names retain wrap/collinearity limits. The palette name does not imply
conventional signed saturation. InitTextFontResources includes both bitmap cache
and sprite-glyph initialization. QueueTextGlyphTiles also writes tilemap entries.
InitSpriteResourceDescriptor can return0 after partial field writes; Init does
not imply transactional success. Resource counts are logical entries, not unique
assets or decoded bytes. No global data percentage or Unicode mapping is claimed.

## Resolver state and count-query limits

The [06EE0/07164 ASM](https://github.com/MatyMeatBoy/SS2Decomp/blob/0fed377ba72198198468238647333649254e93da/asm/nonmatchings/code_08006D24/sub_08006EE0.s)
does not define a pure `ID + archive` lookup for every category. Category0x14
reads the word at0x03003470 and selects one of five pointer tables for states0..4:
0x0838AFF0,0x084009A4,0x08428C38,0x083D8AEC,0x083B0B4C. Text callers use this
category, but the selector's semantic name is not established here; calling it
Language would exceed this evidence.

With a state above4, the branch reaches the return path without assigningr2.
The original instructions return the incomingr2 value in that path: an isolated
state5 test withr2=0x12345678 confirms it. This is an unsupported-state observation,
not a supported third parameter or a promise of return0. No game/source fix is
proposed. Valid-state low16 index bounds must be established separately.

Category22 returns the fixed address0x0847838C, independent of the low16 index,
while07164(22) returns0. A zero count query therefore does not by itself prove an
ID has no resolver result. Main/aux wrapper names describe the archive argument;
fixed/state-selected categories do not necessarily use that archive.

Eight additional context checks cover the five table choices, state5/r2, and the
category22 resolver/count distinction. They export no text bytes and add no
matching or decoded-data credit. The original68 role cases remain separate.
