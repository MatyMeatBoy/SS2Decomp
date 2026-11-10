# Regional code and data source progress

EU remains the main matching target. Its existing game-only main percentage is unchanged.

| Region | Matching C | Code bytes | Data from source | Data bytes |
| --- | ---: | ---: | ---: | ---: |
| Europe (main) | 93.79% | 711876 / 758984 | <0.01% | 256 / 16017660 |
| USA | 0.18% | 1364 / 757560 | 0.00% | 0 / 16019084 |
| Japan | 0.18% | 1364 / 764376 | 0.00% | 0 / 16012268 |

Code includes literal pools/alignment and excludes the header/startup prelude. Data includes opaque assets/padding. Raw ROM gaps/incbins, linked binaries, drafts and names earn no source credit. Data source coverage is not a measure of understanding.

The EU code denominator covers the full configured code span, including SDK/original ASM and linked code; only matching C enters its numerator. It therefore differs from the main game-only metric.

USA/Japan use frozen exact-build receipts and current active-C status, not the EU percentage. Their reference-ROM reconstruction checksum is an integrity check, not source coverage. A changed data-source hash removes its credit until revalidated.

See [regional build/evidence guide](../agents/REGIONS.md) and [metric definitions](../agents/PROGRESS_AND_NAMES.md).
