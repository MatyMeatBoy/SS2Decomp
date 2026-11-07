# Incremental regional ROM support

## Intent

The owner supplied EU, USA and Japan dumps and wants to use the USA speedrun to advance decompilation and function identification. EU remains the default matching build. USA is the first runtime target; Japan is also identified for comparisons.

## Evidence and constraints

- All three supplied dumps are 16 MiB, revision 0: AU2P, AU2E and AU2J.
- Their hashes and game codes must be verified before generating any regional output.
- RAM addresses differ by symbol. EU ROM+0x238 contains 030012A0; USA contains 030013C0 and Japan 03001340. Scheduler globals have different deltas. A single global offset is invalid.
- Canonical EU symbols and worker claims remain unchanged. Tooling is developed on a dedicated branch. ROMs, generated assembly, objects and reports remain local.
- A ROM checksum match is a binary-integrity gate. It does not mean that all reference bytes are decompiled C. Regional compiled-byte coverage must be reported separately from EU progress.

## Approaches

A complete simultaneous rewrite of every region's address and asset configuration would postpone runtime research and introduce many unverified correspondences. A fixed address shift contradicts the supplied dumps. The coordinator therefore chooses incremental exact reconstruction: keep the target region's reference bytes and replace only intervals independently reproduced by the existing normal C compiler output.

## Initial architecture

1. A ROM profile registry records identity, size, revision and full hashes for the three supplied dumps. Validation rejects modified or mismatched input.
2. The existing EU build runs unchanged and must reproduce its reference ROM. Active C functions are recognized from compiler-produced assembly and the linked ELF; INCLUDE_ASM fallbacks are not admitted as C.
3. Initial regional reuse is deliberately limited to functions whose complete linked bytes match at the same address in both ROMs. This requires no speculative global relocation. Generated local assembler labels are namespaced without modifying string literals or instructions.
4. Rebuild a target ROM using compiler-generated assembly for those intervals and explicit reference-byte gaps for everything else. External symbols retain their verified EU linked values for these same-address fragments. The linked function bytes and entire result must equal the target dump exactly. Any extraction, linking or byte discrepancy fails closed.
5. `make REGION=usa compare` and `make REGION=jp compare` select this experimental path. `make compare` remains EU. Reports distinguish C-backed intervals from reference bytes and never feed regional coverage into EU progress.

## Regional research

ROM-free static reports may identify exact matches or interior anchors. Interior-anchor estimates are not validated function entries and must not become runtime hooks without further proof. General per-symbol relocation, region-specific C differences and asset configurations are subsequent work. The first reconstruction does not claim full USA/Japan source coverage.

## Validation and completion

Test profile rejection, assembly extraction, local-label isolation, literal preservation, interval overlap and gap rendering with synthetic fixtures. Run the full tooling suite and existing EU ROM/NONMATCHING gates. Rebuild both supplied regional dumps, verify each admitted C interval and the complete output hash, and have an independent worker review the branch. Separately replay the USA inputs with a fresh emulator profile and report observed synchronization limits.
