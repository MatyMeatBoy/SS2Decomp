# Coordinating function identification

Reserve canonical EU function addresses before researching names. These research
reservations are separate from decompilation shard/region claims and never grant
permission to edit game C, ASM, headers or canonical symbols. A reservation is a
coordination label, not semantic evidence or authentication. Repository write
permissions remain the trust boundary.

## Contributor sequence

Use your own checkout. Review the current identification report and source first;
the report can lag a recent source change. Then reserve the complete research
batch before doing overlapping work:

In the commands below, replace `FUNCTION_A FUNCTION_B` with the actual canonical
symbols/hex addresses selected from the current **unidentified** report. They are
placeholders, not literal registered functions; already-identified examples
would correctly require an intentional `--review` instead.

```sh
python3 tools/scripts/name_claim.py status
python3 tools/scripts/name_claim.py take YOUR_OWNER FUNCTION_A FUNCTION_B
```

The default main branch is `claude/rom-decompilation-research-obsal6`;
`take --main BRANCH` selects another remote-main branch explicitly. The tool reads
fresh remote-main `functions.cfg`, the confirmed catalog and the committed
identification report. It accepts registered canonical symbols or hex addresses,
normalizes them by address, and rejects duplicate/unknown functions. Already
confirmed names, descriptive canonical symbols and descriptive C-definition
aliases in that report require an explicit `--review` reservation. Proposed
catalog rows do not by themselves establish a confirmed identity. A later main
change may still identify the function: stop duplicate research and reconcile
with its author/coordinator instead of overwriting it.

Each reservation lives at `refs/heads/coord/names/080XXXXX` and records owner,
canonical symbol, base commit, branch, review intent, creation time and a unique
reservation ID. A batch uses one atomic Git push with empty expected-head leases;
either every address is reserved or none is. Different free addresses coexist.
If the server does not support atomic pushes, the command fails without a
sequential fallback. On any race/error, reread status before retrying. The tool
uses a private index and Git plumbing: it does not checkout, stage, reset, commit
on your branch, or change HEAD/index/work files, even in a dirty checkout. It
does fetch Git objects and creates metadata commits; ordinary Git identity
configuration is required.

Keep the printed reservation heads and the exact canonical address list with
your evidence. Submit evidence and that list in a PR/handoff; one catalog
integrator reconciles `tools/config/function_names.json`. Workers do not perform
mass renaming or rewrite canonical symbols. Existing names and hypotheses remain
distinct; follow [the evidence and metrics guide](PROGRESS_AND_NAMES.md).

Keep reservations until the PR lands, or preserve the unmerged branch, exact
head and private work before deliberately abandoning it. Stop any owned research
jobs before release, then:

```sh
python3 tools/scripts/name_claim.py release YOUR_OWNER FUNCTION_A FUNCTION_B
python3 tools/scripts/name_claim.py status
```

Release validates each live metadata record and owner, then removes only the
requested batch in one atomic push with exact observed-head leases. A changed
record rejects the whole batch; a unique reservation ID prevents a stale release
from deleting a later same-owner reservation. It never deletes candidate/PR
branches or private files. There is no automatic expiry or timestamp-based
reclaim. Do not release someone else's reservation. Owner strings are labels,
so an independent coordinator must verify ownership/preservation rather than
treating a matching label as credentials.

## Coordinator integration sequence

Review source/ASM evidence and the address list, obtain fresh main, then compare
the actual PR head against that base **before integrating**:

```sh
git fetch origin claude/rom-decompilation-research-obsal6
python3 tools/scripts/name_claim.py check --base origin/claude/rom-decompilation-research-obsal6 --head ACTUAL_PR_HEAD_SHA
```

`check` is offline and uses committed trees, not the caller's working catalog.
All needed ancestry must already be fetched. It derives the PR delta from its
merge-base with the supplied current main, then compares every added, updated
or deleted catalog row with current main. A divergent independent edit at the
same address fails; an identical already-landed row is reported explicitly as
`already_integrated`, with no new naming credit. Uncontended updates/removals are
allowed. Unknown/duplicate addresses, stale canonical bindings and conflicting
catalog policy metadata fail rather than silently overwriting current work.
Other uncontended current-main rows are retained during actual reconciliation;
the guard does not perform a merge or rewrite JSON for you. If a conflict fails,
resolve it explicitly with source evidence and rerun against the new exact heads.

This guard checks catalog conflicts/structure, not semantic truth or complete
source-alias coverage. Revalidate evidence, regenerate reports under `build/`,
run normal repository gates and review exact CI heads before merging. There is
no atomic transaction spanning a moving main branch and research refs; a passed
reservation/check can become stale. Rerun the check after main moves and before
integration. Do not infer merge safety from Git's automatic JSON merge alone.

The existing `build` job's PR-only first validation step fetches the base branch
afresh with full ancestry and passes the actual PR
head SHA, not the synthetic checkout merge commit, to this guard. Ref/SHA inputs
are environment variables and quoted arguments. Metadata-branch pushes are
excluded from normal build CI, just like region-plan metadata.
Thus a reconciliation conflict fails `build` itself; a separate ignored or
optional status cannot leave the usual integration gate green.

The seven pre-workflow Emmkay naming PRs are legacy intake: lack of a historical
reservation does not reject them retroactively. Their catalog deltas and evidence
still require reconciliation/review. A naming reservation never substitutes for
an exclusive decompilation claim or permits restarting a stopped research chat.
