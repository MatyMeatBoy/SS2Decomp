#!/usr/bin/env python3
"""try_edit.py EDITS.json : apply source edits one by one, keeping each only if the module object stays identical.

EDITS.json is a list of {"file": "src/MODULE.c", "find": "...", "replace": ["candidate 1", "candidate 2", ...],
"why": "..."}. `find` must occur exactly once. Candidates are tried in order; the first whose object file is
byte-identical to the current one is kept, otherwise the file is restored. Used to write out arguments that the
ROM passes in a register the C left implicit (found by running the game as native code): the object must not
change, only the source becomes valid C on other platforms. Finish with `make -j8 compare`.
"""
import hashlib, json, subprocess, sys
from pathlib import Path


def build(module):
    done = subprocess.run(["make", "-s", "build/src/%s.o" % module], capture_output=True, text=True)
    if done.returncode:
        return None
    return hashlib.sha1(Path("build/src/%s.o" % module).read_bytes()).hexdigest()


def main():
    edits = json.loads(Path(sys.argv[1]).read_text(encoding="utf-8"))
    kept = 0
    for edit in edits:
        path = Path(edit["file"])
        module = path.stem
        text = path.read_bytes().decode()
        if text.count(edit["find"]) != 1:
            print("SKIP  %s: text occurs %d times: %s" % (path.name, text.count(edit["find"]), edit["why"]))
            continue
        base = build(module)
        if base is None:
            print("SKIP  %s does not build" % path.name)
            continue
        for candidate in edit["replace"]:
            path.write_bytes(text.replace(edit["find"], candidate).encode())
            if build(module) == base:
                kept += 1
                print("KEPT  %s: %s  ->  %s" % (path.name, edit["why"], " ".join(candidate.split())[:90]))
                break
        else:
            path.write_bytes(text.encode())
            build(module)
            print("NONE  %s: %s (no candidate keeps the object identical)" % (path.name, edit["why"]))
    print("%d of %d edits kept" % (kept, len(edits)))


if __name__ == "__main__":
    main()
