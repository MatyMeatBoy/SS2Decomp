# Regional Progress Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Preserve EU main progress and publish two honest code/data bars per ROM region.

**Architecture:** A stdlib `regional_progress.py` validates versioned layout and
coverage receipts, combines them with the existing source inventory, and emits
SVG/JSON/Markdown through `progress.py`. Existing EU game metrics stay unchanged.

**Tech Stack:** Existing Python unittest and SVG/Markdown report pipeline.

**Spec:** `docs/superpowers/specs/2026-11-07-regional-progress-design.md`

## Global Constraints

- No ROMs, generated `docs/progress/*`, compiler changes or game-source changes.
- EU remains default; exactly two bars for each EU/USA/JP profile.
- Drafts, copied bytes, linked code and semantic names never inflate source credit.
- ROM-free CI, English public text, independent worker checkouts/claims.

## Review Focus

- A successful reference reconstruction must not become 100% source coverage.
- Missing or changed source/function status must not leave stale credit.
- Overlapping intervals and metadata identity mismatches must fail closed.
- Header/code/data boundaries and the main EU denominator must stay distinct.
- Tiny nonzero data coverage must remain distinguishable from zero in the SVG.

### Task 1: Regional report and production integration

**Files:** Create `tools/scripts/regional_progress.py`,
`tools/config/regional_progress.json`, `tools/tests/test_regional_progress.py`;
modify `tools/scripts/progress.py`, README and regional/metric guides.

**Interfaces:** `collect(root, modules, profiles=None, evidence=None)` returns
independent regional code/data counts. `write_outputs(root, out, modules)` emits
`regional_progress.json`, `.svg` and `.md` without external inputs.

- [x] Write synthetic regression tests for all five review-focus cases and SVG output.
- [x] Run them before implementation; require failures for missing functionality.
- [x] Implement validation, interval/source credit and rendering; seed receipts only from verified local builds.
- [x] Run focused tests and production report generation; inspect SVG and all counts.
- [x] Run full tooling tests, EU compare/full NONMATCHING and USA/JP comparisons.
- [ ] Obtain independent code/metric review, commit with hooks, open stable PR and integrate after exact-head CI.

### Task 2: Preserve the paused identification workflow

**Files:** `docs/agents/IDENTIFICATION_METHOD.md` and its link from
`docs/agents/PROGRESS_AND_NAMES.md`.

- [x] Record evidence workflow, interpretation pitfalls, queue provenance and restart guard.
- [x] Preserve private candidate/proof artifacts and review the documentation.
- [ ] Deliver with the report change; do not publish pending catalog rows.
