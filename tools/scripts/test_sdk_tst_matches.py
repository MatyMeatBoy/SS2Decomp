#!/usr/bin/env python3
"""Strict SDK C byte/relocation checks; no ROM or historical Git checkout needed."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import tempfile

import decomp
from source_index import functions

ROOT = Path(decomp.ROOT)
CASES = (("m4a_1", "ply_fine"), ("m4a_1_engine", "TrackStop"))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', type=Path, default=ROOT/'build/sdk_tst_matches')
    args = parser.parse_args()
    args.out.mkdir(parents=True, exist_ok=True)
    work = Path(tempfile.mkdtemp(prefix='run_', dir=args.out.resolve()))
    build = Path(os.path.relpath(work, ROOT)).as_posix()
    # Resolve canonical symbols from versioned source/config, never build/ref.syms.
    decomp._SYMS = {}
    results = []
    for module, name in CASES:
        obj = work/'src'/('%s.o' % module)
        target = '%s/src/%s.o' % (build, module)
        command = ['make', '-j1', 'BUILD='+build, target]
        run = subprocess.run(command, cwd=ROOT, capture_output=True, text=True)
        (work/('%s-build.log' % name)).write_text(run.stdout+run.stderr)
        if run.returncode:
            raise SystemExit(run.stdout+run.stderr)
        # The normal preprocessed source must contain a real C definition. An
        # accidentally restored INCLUDE_ASM fallback must not pass this oracle.
        active = {row['name'] for row in functions(obj.with_suffix('.i').read_text())}
        if name not in active:
            raise SystemExit('%s is not an active C definition' % name)
        oracle = ROOT/'tools/tests/fixtures/sdk_tst'/('%s.s' % name)
        expected_s = work/('%s-expected.s' % name)
        expected_o = expected_s.with_suffix('.o')
        expected_s.write_text('.include "asm/macros.inc"\n.syntax unified\n.text\n'+oracle.read_text())
        run = decomp.run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-I', str(ROOT),
                          '-o', str(expected_o), str(expected_s)])
        if run.returncode:
            raise SystemExit(run.stderr)
        equal = decomp.compare(str(expected_o), str(obj), name, verbose=True)
        results.append(dict(module=module, symbol=name,
                            active_c_definition=True,
                            bytes_and_relocations_equal=equal))
        print(name+(': MATCH' if equal else ': NO MATCH'))
    (args.out/'results.json').write_text(json.dumps(results, indent=2))
    if not all(row['bytes_and_relocations_equal'] for row in results):
        raise SystemExit(1)


if __name__ == '__main__':
    main()
