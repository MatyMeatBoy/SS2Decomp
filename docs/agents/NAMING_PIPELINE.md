# Naming pipeline for small workers

Goal: give every game function a display name with evidence. Names live only in
`tools/config/function_names.json`; canonical `sub_XXXXXXXX` symbols never
change, so naming cannot break the matching build.

State on 2026-11-12: 1,038 of 1,880 game functions identified, 842 left. Of
those 842, 552 call only functions that already have names, 106 have one
unnamed callee, 90 have two. The work is therefore bottom-up and mostly
independent.

This pipeline complements [NAMING_WORKFLOW.md](NAMING_WORKFLOW.md) (reservations
and catalog integration) and [IDENTIFICATION_METHOD.md](IDENTIFICATION_METHOD.md)
(what counts as evidence). It adds a cheap first tier so that weak models do the
reading and a stronger reviewer only decides.

## Roles

| Role | Model | Reads | Writes |
| --- | --- | --- | --- |
| Proposer | small/cheap | one packet per function | one JSON answer per function |
| Reviewer | stronger, or two independent proposers that agree | packet + answers | accept / fix / reject |
| Integrator | coordinator | accepted rows | `function_names.json` through the existing checks |

A proposer never opens the repository. Everything it may use is in the packet.
That is what keeps weak models from inventing context.

## 1. Build packets (coordinator)

```sh
python3 tools/scripts/progress.py --out build/progress      # fresh call graph and catalog view
python3 tools/scripts/name_packets.py queue 40              # what is best to name next
python3 tools/scripts/name_packets.py batch 30              # build/names/packets/*.md + build/names/batch.txt
python3 tools/scripts/name_packets.py batch 30 --skip 30    # next slice for another worker
```

The queue is ordered by: fewest unnamed callees first, then most callers. So
leaf helpers and widely used functions go first, and each finished round makes
the next round's packets richer (callers of a now-named helper see its name and
one-line role). Re-run `progress.py` and rebuild packets after every integrated
round; never reuse old packets.

Give each worker a disjoint slice (`--skip`). Reserve the addresses with
`name_claim.py take` as usual when several people run rounds at once.

## 2. Proposer prompt

Send exactly one packet per request. Use this instruction:

> You are naming one function of a Game Boy Advance game from its decompiled C.
> Use only the packet. Follow its Rules section. Answer with the JSON object from
> the template and nothing else. If you cannot tell what the function is for,
> set "confidence" to "low", leave "display_name" empty and list what you would
> need to know in "open_questions". A wrong confident name is worse than "low".

Collect the answers of a slice into one file, a JSON array, for example
`build/names/answers_A.json`.

## 3. Mechanical check (anyone)

```sh
python3 tools/scripts/name_packets.py check build/names/answers_A.json
```

It rejects: unknown or already identified functions, address/symbol mismatch,
names that are not 2-6 PascalCase words, placeholders (`Maybe`, `Unk`, hex),
names already used, missing evidence, evidence lines outside the function body
and one-word evidence. Send rejected rows back to a proposer with the message.

## 3b. Save the batch as a draft (proposer)

Do not keep answers only in `build/`. After the check passes, commit the file:

```sh
cp build/names/answers_A.json tools/config/name_drafts/<worker>-<yyyymmdd>-<n>.json
python3 tools/scripts/name_packets.py check tools/config/name_drafts/<worker>-<yyyymmdd>-<n>.json
git add tools/config/name_drafts && git commit -m "names: draft batch <n> (<count> functions)"
```

Push it or open a PR that contains only that file. One file per worker and
batch means two workers never edit the same file, so drafts do not conflict.
CI then draws those functions **yellow** in the names map ("proposed, not
reviewed"); they do not count in the identified percentage. If two files draft
the same function the first file by name is shown; the reviewer sees both.

## 4. Review

Cheapest reliable scheme: run two different small models (or the same model
twice with a different seed) on the same slice and compare.

- Both `high`/`medium` and the two summaries describe the same behaviour: the
  reviewer reads the body once and picks the better name. This is the bulk.
- They disagree, or one says `low`: a stronger model reads the packet plus the
  bodies of the callers listed in it.
- Both `low`: leave the function for a later round; it usually becomes clear
  when its callers or callees are named.

Reviewer checklist, one minute per function:

1. Does the name say what the code does, with no claim the packet cannot prove
   (no character, screen, item or story names unless a named callee/caller or a
   constant in the body shows it)?
2. Does each evidence line exist and say what the detail claims?
3. Is the verb right (`Get` returns without side effects, `Update` runs per
   frame, `Init` writes initial state, `Try...` can fail, `Task...` is a
   scheduler entry)?
4. Is there an existing family name it should follow? Search the catalog for
   the callees' names.

## 5. Integrate (coordinator)

Remove accepted rows from their draft file (delete the file when it is empty).
Convert accepted rows to catalog rows (`status: "confirmed"`, `domain: "game"`,
evidence with `revision` = the commit the packets were built from) and follow
the integration sequence in NAMING_WORKFLOW.md (`name_claim.py check`, reports
under `build/`, normal gates). Then rebuild packets.

## What raises accuracy cheaply

- **Anchors.** Calls to BIOS/SDK functions, sound calls with a constant id,
  writes to I/O registers, save/flash calls and text-printing calls are strong
  evidence; name those helpers first.
- **Families.** `tools/scripts/families.py` groups functions with the same
  shape (enemy main loops, menu states). Name one member with a strong model,
  then let small workers name the siblings from the differences.
- **Tables.** A function with no C caller is usually a task or callback stored
  in a table. Name the table user first; the packet says "no direct C caller".
- **Runtime tags (optional, later).** A BizHawk trace of which functions run in
  which game state (title, town, dungeon, shop, link) gives every function a
  scene tag for free. It is evidence of *when*, never of *what*.

## Expected effort

At about 40 seconds per packet for a small model and one minute of review, a
slice of 30 is under an hour including checks. With four proposers and one
reviewer, the 552 ready functions are three to four working days; the remaining
290 need two or three more rounds as their callees get names. A realistic end
state is 90-95% identified; the last few percent are large state machines whose
honest name is generic (`UpdateActorState12`), and that is acceptable.

## After 100%: improving names for a port

Every game function has a display name since 2026-11-12. The next work is
quality, measured by `docs/progress/name_audit.md` (regenerated by CI from
`tools/scripts/export_names.py`):

- **Vocabulary.** One word per concept. House style: `Dialogue` (not Dialog),
  `Initialize` (not Init), `Animation`, `Position`, `Palette`, `Background`.
  SDK names (`MultiSioInit`, m4a) keep their original spelling. Add a pair to
  `VOCABULARY` in `export_names.py` when a new split appears.
- **Numbered siblings** (`ReturnOneVariant7`, `PanCameraDialogue236`). Rename
  when you can say what differs: the table that stores the callback, the scene,
  the text shown. `data_extract.py text` gives the string for a dialogue id on
  your own ROM; use it to understand the scene, never paste game text into the
  repository.
- **Wrappers.** A cluster of thunks (around `sub_08058xxx`) is probably one
  command table; name the table first, then the thunks after their command.
- **Long names.** Replace a list of effects joined by And/With by the purpose.

Renames go through `tools/scripts/rename_names.py RENAMES.json`
(`{"sub_XXXXXXXX": ["NewName", "why it is better"]}`): it changes the
display name, appends the reason as evidence and refuses names in use. Then run
`progress.py --out build/progress` (it fails on duplicates). The exports
(`function_names.sym/.h/.csv`) follow automatically.

What the first quality pass found (2026-11-12): most numbered families are
honest. `...Direction0..7` pass a direction index; the sound-test tasks differ
only in their state block; scene scripts are numbered by the dialogue id they
show. Those need game knowledge (the text, the scene) rather than code reading.
The 25 `ReturnOne/NoOp` functions with no caller and no pointer in the ROM are
now `Unused...Stub`: a port can drop them.
