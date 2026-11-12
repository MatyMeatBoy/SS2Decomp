# Name drafts

One JSON file per worker and batch: the answers of `tools/scripts/name_packets.py`
packets, exactly as `name_packets.py check FILE.json` accepts them. File name:
`<worker>-<yyyymmdd>-<n>.json`.

A function with a draft here is shown **yellow** ("proposed, not reviewed") in the
names map of the README. Drafts never count as identified. When the reviewer
accepts a name it moves to `tools/config/function_names.json` and the row is
removed from the draft file (delete the file when it is empty).

Rules: never edit another worker's file; run the check before committing; rows
with `"confidence": "low"` may stay in the file as notes, they are not drawn.
See [the naming pipeline](../../../docs/agents/NAMING_PIPELINE.md).
