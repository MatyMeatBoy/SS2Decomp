# Single PR CI implementation plan

> **For agentic workers:** Use superpowers:executing-plans to implement the single task below.

**Goal:** Run the existing complete suite for PR activity and main pushes without duplicating it on worker pushes.

**Architecture:** Keep the build job, PR naming guard and progress publisher intact. Allow push-triggered runs only for the integration branch; retain the unfiltered pull_request trigger.

**Tech Stack:** GitHub Actions YAML and existing Python unittest coverage.

**Spec:** Worker pushes currently duplicate PR builds and run checks for empty claims. Every PR opening/update must retain the full suite, and main pushes must retain build plus progress publication. Work branches without a PR rely on the normal local hooks until review is requested.

## Constraints and review focus

- Keep job/check names, steps, permissions, PR head/base handling and main progress publication unchanged.
- Standalone naming/region reservation pushes and empty worker claims without an open PR must not trigger the suite; updates to open PRs still do.
- Preserve PR checks for forks and existing exact-head merge gates requiring at least one successful build.

## Task: restrict only the push trigger

- [x] Update the existing naming-workflow integration assertion for an exact main-only push allowlist; observe its failure against the old workflow.
- [x] Replace push branches-ignore with the integration branch allowlist. Document when branch-only work receives CI in QUICKSTART.
- [ ] Run the focused guard and full naming tests, normal hooks, independent review and actual PR CI.
- [ ] Verify the PR has one build run, merge only after success, then verify the new main push still runs build/progress.
