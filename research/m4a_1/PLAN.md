# m4a_1 reconstruction implementation plan

Goal: reconstruct the complete module as reviewable C while preserving the normal
ROM build and reporting functional, binary and hardware evidence separately.

Architecture: prefixed C entry points with explicit GBA32 address operations.
Unicorn runs original ASM as the differential oracle. No opcode blobs, original
function forwarding or empty substitutes stand in for reconstructed bodies.

Spec: user-assigned scope in OWNER.md and the contracts in README.md.
Implementation is inline, with no additional workers in this checkout.

- [x] Baseline normal ROM compare and NONMATCHING build, serial jobs1.
- [x] Helpers and parameter/pattern commands: add failing differential cases,
  reconstruct the ASM behavior, pass cases including width/guard boundaries.
- [ ] TrackStop and ply_note: test channel allocation, priority, stealing,
  CGB callback effects, key/velocity parsing and all chain updates before bodies.
- [ ] MPlayMain: test ident/tempo, waits/running status, dispatch, modulation,
  chained players and volume/pitch updates; connect an explicit C callback table.
- [ ] SoundMain and mixer: test reverb, ADSR, saturation/wrap/carries, fixed and
  interpolated samples, loop/end behavior and scanline limit as separate regions.
- [ ] Record byte+relocation comparisons where C and original interfaces permit;
  any alternative compiler remains diagnostic, never a build-policy change.
- [ ] Complete module review and normal compare/NM; hardware/audio/IWRAM timing
  remain separately qualified even if all functional fixtures pass.

Each useful batch is committed with its test recipe and inventory. Test outputs,
ROM-derived data, downloaded compilers and dependencies stay in ignored build
directories. Matching is pending until the actual normal ROM proof exists.
