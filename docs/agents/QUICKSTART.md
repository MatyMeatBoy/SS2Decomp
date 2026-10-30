# Contributor quick start

Everyone is welcome: humans, Claude, Codex and other coding assistants. Start in
**your own folder**, use an independent checkout for each worker, and claim work
before editing a function. Public documentation, progress tables, commit messages
and PR titles/descriptions are written in **English**.

## Windows: download the toolkit into your own folder

1. Create an individual folder, for example `D:\SS2-Collab\YOUR_NAME`. Download
   [SS2Decomp-toolkit-Windows.zip](../../SS2Decomp-toolkit-Windows.zip) into that
   folder and extract it there. The archive contains the folder
   `SS2Decomp-toolkit-Windows` with `bootstrap.sh`, compilers and matching tools.
   **No ROM is included.** Do not start in somebody else's checkout.
2. Install [MSYS2](https://www.msys2.org/), open **MSYS2 UCRT64**, run `pacman -Syu`,
   and follow any request to reopen the terminal and finish the update.
3. In UCRT64, start from the toolkit you downloaded. Use a **new, nonexistent**
   destination inside your own folder:

   ```sh
   cd /d/SS2-Collab/YOUR_NAME/SS2Decomp-toolkit-Windows
   bash bootstrap.sh /d/SS2-Collab/YOUR_NAME/repo
   ```

   The bootstrap installs required MSYS2 packages, verifies hashes, restores its
   fixed source snapshot and configures the upstream Git remote. For packages
   already installed, use `bash bootstrap.sh --no-install DESTINATION`.
4. Verify the restored snapshot **before** updating it, then get current main:

   ```sh
   cd /d/SS2-Collab/YOUR_NAME/repo
   source toolkit-env.sh
   python3 .toolkit/verify_repo.py .
   git pull --ff-only
   ```

   The snapshot bundled with the toolkit is a starting point, not the latest
   progress. The manifest checks that original snapshot; it is not a check of a
   later edited or updated checkout.
5. Copy your own EU ROM into `repo/baserom.gba`. Its SHA1 must be
   `aa1288be9257337abdfe3034898cf6c7aa778fbc`. Never upload a ROM, a generated ROM,
   or an archive containing one. Then run:

   ```sh
   make -j2 compare
   make -j1 nonmatching
   python3 tools/scripts/check_tree.py
   ```

   `make compare` must print `shiningsoul2_eu.gba: OK`. Installation without a ROM
   is supported, but these build checks require your local ROM. Start the initial
   bootstrap without `--build`; add your ROM and build afterwards.

In each new terminal, enter your checkout and run `source toolkit-env.sh`.
The toolkit's `README-ES.txt` also contains the original Spanish setup notes.
On Linux, WSL or macOS, follow the native setup in [CONTRIBUTING.md](../../CONTRIBUTING.md)
in an independent clone; the packaged Windows executables are not native tools.

## Join the shared work queue

Configure your own Git name/email. For the PR commands below, install and
sign in to [GitHub CLI](https://cli.github.com/) with an account allowed to push
to this repository. Use a distinct worker name, for example `alex-claude-1`.

**No upstream write access yet?** Open a [coordination issue](https://github.com/MatyMeatBoy/SS2Decomp/issues/new)
with your GitHub name, platform and proposed worker count. Ask for a shard
assignment before editing. The coordinator can assign work and arrange a fork PR.
Running `claim.py take` against your own fork does **not** reserve upstream work.

With upstream write access, run from your prepared checkout:

```sh
python3 tools/scripts/claim.py status
python3 tools/scripts/claim.py take YOUR_WORKER_NAME
python3 tools/scripts/shard.py show NNN
python3 tools/scripts/claim.py who sub_XXXXXXXX
```

Replace `NNN` with the shard printed by `take`. Prefer free shards with useful
existing yellow drafts or preserved progress; check current main before recovering
old work. A reservation is ownership, not evidence that a function is nearly done.
Touch only your assigned functions and keep them in address order.

Each additional worker needs its own prepared clone or worktree and its own
exclusive claim. Never run competing builds, edits or commit hooks in one checkout.
Keep a short progress/handoff note. If you stop, preserve your candidates and
release the shard. The coordinator may reclaim a shard after five minutes of
verified inactivity, preserving its unmerged head first; a live build, permuter
or active PR review counts as work. Do not remove another contributor's claim.
Recheck ownership before resuming after an interruption.

## Deliver small, verified pull requests

Read [AGENTS.md](../../AGENTS.md), [the per-function workflow](../../CONTRIBUTING.md)
and [match verification](MATCH_VERIFICATION.md). Start with existing drafts,
then small ASM functions. An isolated MATCH or a good score is not the final gate:

```sh
make -j1 compare
make -j1 nonmatching
python3 tools/scripts/check_tree.py
git add src/YOUR_MODULE.c asm/nonmatchings/YOUR_MODULE/sub_XXXXXXXX.s
git commit -m "decompile sub_XXXXXXXX"
python3 tools/scripts/claim.py pr
```

Stage only the files for your claimed functions. Keep hooks enabled. Describe the
function, source/ASM evidence and validation in English; explicitly distinguish a
new matching function from a compiling NONMATCHING draft. If you reused another
project, credit its URL/revision and preserve its license/provenance.

Keep the published PR head stable during review. Continue private candidates or
separate local commits while the coordinator checks it; publish the next batch
after the previous PR is merged. Once your shard is delivered and finished:

```sh
python3 tools/scripts/claim.py release
```

Never commit `baserom.gba`, `*.gba`, build output, `expected/`, generated
`docs/progress/*`, private logs or installed tool directories. Header declarations
are append-only; use local assembler-label aliases to give globals the needed
C types. Tooling and documentation changes belong in separate branches/PRs.

## How progress is reported

| Report | What it measures |
|---|---|
| Matching C | Bytes reproduced by matching C, with its own denominator |
| Matched + linked | Historical total including linked library code |
| Identified functions | Evidence-backed names, separate from matching progress |
| C drafts | Compiling candidate C; not proof of equivalence or matching |
| Yellow work milestones | Recorded completed work areas; not matching bytes or remaining time |

CI updates the public badges, tables and map. Generate local reports under
`build/progress`; do not commit generated progress files. See
[metric definitions](PROGRESS_AND_NAMES.md) for exact denominators.
