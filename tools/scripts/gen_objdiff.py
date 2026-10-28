#!/usr/bin/env python3
"""Write objdiff.json: one unit per C module, base = build/src/X.o (your C), target = expected/build/src/X.o
(snapshot of a matching build taken by `make expected`). objdiff rebuilds the base object with `make` on save.

    make compare && make expected && python3 tools/scripts/gen_objdiff.py && tools/objdiff/objdiff
"""
import json
import os

ROOT = os.path.normpath(os.path.join(os.path.dirname(__file__), "..", ".."))


def categories():
    cat = {}
    for line in open(os.path.join(ROOT, "tools/config/modules.cfg")):
        p = line.split()
        if len(p) >= 4 and not line.startswith("#"):
            cat[p[1]] = p[3]
    return cat


def main():
    cat = categories()
    units = []
    for f in sorted(os.listdir(os.path.join(ROOT, "src"))):
        if not f.endswith(".c"):
            continue
        m = f[:-2]
        units.append({
            "name": "src/" + m,
            "target_path": "expected/build/src/%s.o" % m,
            "base_path": "build/src/%s.o" % m,
            "metadata": {"source_path": "src/" + f, "progress_categories": [cat.get(m, "game")]},
        })
    cfg = {
        "$schema": "https://raw.githubusercontent.com/encounter/objdiff/main/config.schema.json",
        "min_version": "2.0.0",
        "custom_make": "make",
        "build_target": False,
        "build_base": True,
        "watch_patterns": ["*.c", "*.h", "*.s", "*.inc"],
        "progress_categories": [{"id": "game", "name": "Game"}, {"id": "lib", "name": "SDK / libraries"}],
        "units": units,
    }
    with open(os.path.join(ROOT, "objdiff.json"), "w", newline="\n") as fp:
        json.dump(cfg, fp, indent=2)
        fp.write("\n")
    print("objdiff.json: %d units" % len(units))


if __name__ == "__main__":
    main()
