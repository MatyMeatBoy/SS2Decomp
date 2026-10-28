# Progress, function names and source call graph

`python3 tools/scripts/progress.py --out build/progress` generates all reports
without a ROM, compiler, external service or additional Python dependency.
CI validates this command on pushes and pull requests. After a successful main
build, the existing progress job publishes the same reports under `docs/progress/`.
Never commit generated reports from a worker branch.

## Metrics and denominators

The historical `game`, `lib`, `all`, `asm` objects and their existing fields remain
available in `progress.json`. In particular, `all.percent` is **matching C plus
linked library bytes / historical non-original-ASM bytes**. It is retained for
comparison with previous reports; it is not a pure C decompilation percentage.
`percent_with_drafts` additionally includes compiling C drafts whose equivalence
has not been established. A draft is not matching or proven equivalent C.

Each of `game`, `lib`, `all` now also has these function and byte partitions:

| Suffix of `funcs_*` / `bytes_*` | Definition |
| --- | --- |
| `decompiled` | `modules.cfg` kind `c`, no active `INCLUDE_ASM` fallback |
| `linked` | kind `linked`: agbcc `libgcc.a` / `libc.a`, not decompiled C |
| `drafts` | C module with a `#ifdef NONMATCHING` compiling draft and ASM fallback |
| `pending` | C module still using `INCLUDE_ASM`, without a draft |
| `original_asm` | kind `asm`, original assembly retained in this project |
| `decompilable` | all functions in kind `c` modules |
| `all` | historical non-ASM total plus original ASM |

`percent_decompiled = 100 * bytes_decompiled / bytes_decompilable`; its badge is
`badge_decompiled.svg` (matching C). The legacy badge `badge_all.svg` explicitly
says `matched + linked`. Matching remains a repository invariant verified by the
strict tool comparison and full ROM build; this source report itself does not
prove binary equivalence. Source status is derived from the repository's usual
NONMATCHING/INCLUDE_ASM convention, without preprocessing arbitrary C conditions.

The collector checks, for **both functions and bytes**, in each metric category:

```
done = decompiled + linked
total = decompiled + linked + drafts + pending
all = total + original_asm
decompilable = decompiled + drafts + pending
```

The historical metric interval starts at `0x0800023C` and ends at `0x080B9704`.
The complete function inventory additionally includes configured prelude entries
before the first module (currently `Start` and `IntrMain`) as `crt0` original ASM.
Thus inventory totals can exceed historical `funcs_all`; neither silently changes
the historical denominator. Functions/bytes are configured address intervals,
capped at module boundaries, and can include alignment or literal pools. They
are not instruction counts or exact C function-body byte sizes. Unconfigured
internal labels/subroutines do not become invented inventory functions.

## Permanent names and evidence

`tools/config/function_names.json` is the reviewed, versioned address-to-display
name catalog. It never changes `functions.cfg`, C linkage, headers or ASM symbols.
`functions.json` inventories **every configured function** (including linked and
original ASM) with address, canonical symbol, module/category, implementation,
display name, name status, domain and evidence. The generated
`identification.md` summarizes it; `badge_names.svg` measures identified game
functions / all game-domain inventory functions. SDK counts are separate.

Name statuses:

- `existing`: an explicit canonical symbol already exists, or a descriptive C
  definition has an `asm("canonical")` alias. This recognizes an existing name;
  it does not independently re-prove its semantic meaning. Extern-only call aliases,
  register aliases, anonymous address labels and mechanical suffixes such as
  `_impl`, `_void`, `_u32`, `_u16`, `_ptr` or `_` do not identify a function.
- `confirmed`: catalog identity supported by specific source/ASM or existing
  research documentation. Evidence must explain the behavior, not just say match.
- `proposed`: useful hypothesis whose semantic interpretation still needs review.
  Proposals are visible but **do not count** as identified.
- `unidentified`: no qualifying existing identifier or catalog identity.

Catalog schema (one row per known address):

```json
{
  "address": "0x080003F0",
  "canonical_symbol": "sub_080003F0",
  "display_name": "TaskYieldOneTick",
  "status": "confirmed",
  "domain": "game",
  "evidence": [{
    "source": "asm/nonmatchings/sched/sub_080003F0.s",
    "detail": "Loads r0=1 and branches to sub_080003F4."
  }]
}
```

The top-level catalog has `schema_version: 1` and a `functions` list. Names must
be descriptive identifiers; duplicate/unknown addresses, stale canonical symbols,
invalid status/domain and empty evidence fail report generation. Evidence may
also carry a historical `revision` and `line`; record a revision when a source
path will disappear after decompilation. Do not infer names from byte size,
diff scores or proximity alone. Prefer a narrow observed role to a guessed
screen/entity purpose.

`domain` is `game` or `sdk`, defaults to the module category, and may explicitly
override it with evidence (e.g. documented MultiSio SDK functions live in a
historical game module). This semantic classification changes identification
counts only; it does not rewrite the original game/lib progress categories.
The initial catalog transcribes documented link roles, scheduler/heap behavior,
and separately marked task/transform proposals. Existing research may be refined;
review the evidence rather than assuming a confirmed display name is an ABI API.

### Parallel workflow

While working an owned shard, record identification proposals with canonical
address, suggested name, status, observed behavior and source/ASM evidence in
local handoff notes (include a source revision before deleting ASM). Deliver
those notes with the immutable function commit SHA. The coordinator consolidates
reviewed rows into the catalog on a dedicated tooling branch and regenerates the
reports. Workers do not mass-rename symbols or edit the shared catalog on shard
branches. New names and retroactive discoveries use the same review path.

## Source call graph for port work

`callgraph.json` has canonical nodes and caller/callee edges, with source file,
line, language and call/tail-branch observations. C `asm("symbol")` function
aliases, including aliases declared in headers, resolve to canonical targets.
Strings and comments are masked before call scanning. C draft observations retain
the caller's `draft` implementation status; the graph can contain both a draft C
observation and its original ASM target observation. `callgraph.dot` is suitable
for Graphviz. It includes isolated configured functions as well.

A focused caller/callee neighborhood is usually more useful than the full graph:

```sh
python3 tools/scripts/project_inventory.py \
  --graph build/progress/callgraph.json --focus sub_080003F0 \
  --direction callers --depth 1 --out build/progress/yield_callers
# writes yield_callers.json and yield_callers.dot
```

`--direction` accepts `callers`, `callees`, or `both`; `--depth 0` keeps only the
selected function. Use canonical symbols to query, so display-name improvements
do not break saved queries.

This is a conservative source index, **not a complete runtime/linked call graph**.
It does not preprocess macros or select conditional branches; macro calls and
some casts may be unresolved. Known direct C calls, common casts and ASM `bl`,
`blx`, `b` targets are indexed. Conditional tail branches, arbitrary callback
registrations, function-pointer arrays, indirect calls and unconfigured targets
are not generally resolved. Unresolved observations are exported, not guessed.
Compiler inlining/optimization/thunks can differ from source; library internals
without source yield no edges. A missing edge is not proof a call cannot happen.

## Data source inventory

`data_inventory.json` records `data/*.s` incbin ranges, labels, descriptive-label
counts, explicit data directives and padding directives. It reads source only.
Incbin byte totals include opaque data **and padding**, are not unique-byte
coverage if ranges overlap, and say nothing about understanding. Descriptive
labels and `.byte`/`.word` directives likewise do not prove decoded semantics.
There is deliberately no `% decoded` or `% understood` metric. Reports recount
current sources automatically; no manually frozen data totals are maintained.


## Build ownership

Serialize writes, builds and hooks within each checkout; parallel work belongs in
separate checkouts. Two simultaneous make processes sharing a build directory can
truncate intermediate `.i`/`.s` files even when source is valid. Stop overlapping
processes and force a rebuild before trusting results from affected artifacts.
Do not build while another process edits that checkout.
