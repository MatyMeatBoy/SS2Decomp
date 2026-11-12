# Regional code and data source progress

EU remains the main matching target. Its existing game-only main percentage is unchanged.

| Region | Matching code | Code bytes | Data from source | Data bytes |
| --- | ---: | ---: | ---: | ---: |
| Europe (main) | 100.00% | 758984 / 758984 | <0.01% | 256 / 16017660 |
| USA | 0.18% | 1364 / 757560 | 0.00% | 0 / 16019084 |
| Japan | 0.18% | 1364 / 764376 | 0.00% | 0 / 16012268 |

Code includes literal pools/alignment and excludes the header/startup prelude. Data includes opaque assets/padding. EU code counts matching C, the original hand-written assembly kept as assembly, and linked toolchain libraries. Raw ROM gaps/incbins, drafts and names earn no source credit. Data source coverage is not a measure of understanding.

The EU code denominator covers the full configured code span, including SDK, original hand-written assembly and linked code. Matching C, that original assembly (kept as assembly, as in the original) and the linked toolchain libraries enter its numerator; only functions without matching C stay out. The byte counts differ from the main game-only metric because of the wider span.

USA/Japan use frozen exact-build receipts and current active-C status, not the EU percentage. Their reference-ROM reconstruction checksum is an integrity check, not source coverage. A changed data-source hash removes its credit until revalidated.

See [regional build/evidence guide](../agents/REGIONS.md) and [metric definitions](../agents/PROGRESS_AND_NAMES.md).
