# Incremental Regional ROM Support Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Provide verified experimental USA/Japan reconstruction using genuinely compiled shared C intervals, alongside the unchanged EU build and USA runtime research.

**Architecture:** Strict ROM profiles identify inputs. The existing normal EU compiler output supplies same-address, byte-identical C fragments; target-specific reference bytes fill all other intervals. Exact fragment and whole-ROM checks gate the result and its separate coverage report.

**Tech Stack:** Python standard library, pyelftools, existing agbcc and ARM binutils, GNU make.

**Spec:** docs/superpowers/specs/2026-11-07-rom-regions-design.md

## Global Constraints

- EU is the default; canonical symbols, game C and worker claims are untouched.
- No ROM, generated assembly, object or generated progress files are committed.
- No global RAM/address shift and no unverified runtime entry hooks.
- A complete ROM checksum match never implies complete C coverage.
- Use original production compiler flags; no custom compiler or opcode substitution.

## Review Focus

- A valid header with modified payload must fail full-hash validation.
- Compiler local labels can collide across fragments; string literals must remain unchanged.
- Missing compiler function definitions and overlapping symbol aliases must not receive C credit.
- Stale EU objects or incorrect symbol/link addresses must fail exact checks.
- Reference-only bytes must remain explicit in reports, including a zero-fragment result.

### Task 1: ROM profiles

**Files:** Create tools/config/rom_regions.json, tools/scripts/rom_regions.py, tools/tests/test_rom_regions.py.

**Interfaces:** `load_profiles()` and `verify_rom(path, region, profiles=None)` return verified identity metadata or raise `RegionError`.

- [x] Write synthetic identity/rejection tests and observe RED.
- [x] Implement strict identities and input inspection.
- [x] Run focused tests and verify all three local supplied dumps.

### Task 2: Compiler fragment reconstruction

**Files:** Create tools/scripts/region_build.py and tools/tests/test_region_build.py.

**Interfaces:** Extract compiler functions, namespace only assembler local identifiers, select disjoint same-address intervals, render reference gaps and link/verify the target ROM. Consume Task 1 identity metadata.

- [x] Test extraction, literal safety, overlaps and reference-gap accounting; observe RED.
- [x] Implement normal-EU build preflight and linked-symbol/assembly discovery.
- [x] Implement regional assembly/linking with exact admitted-fragment and full-ROM comparison.
- [x] Verify synthetic tests and real USA/Japan reconstructions with separate coverage reports.

### Task 3: Build integration and review

**Files:** Modify Makefile; create tools/config/region.mk and docs/agents/REGIONS.md.

- [x] Dispatch REGION=usa/jp explicitly; preserve the existing EU branch and reject unknown regions.
- [x] Document experimental coverage and regional research limits.
- [x] Run full tooling tests, EU compare/NONMATCHING/tree/diff and both regional comparisons.
- [ ] Obtain independent review, fix material findings, publish and integrate the verified tooling PR.
- [x] Record USA replay observations separately from source coverage; continue EU workers.
