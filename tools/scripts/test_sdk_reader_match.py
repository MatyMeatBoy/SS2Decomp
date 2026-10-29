#!/usr/bin/env python3
"""Strict reader-container bytes and relocations, using active C without a ROM."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import tempfile

import decomp
from source_index import functions


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', type=Path, default=Path('build/sdk_reader_match'))
    args = parser.parse_args()
    root = Path(decomp.ROOT)
    args.out.mkdir(parents=True, exist_ok=True)
    work = Path(tempfile.mkdtemp(prefix='run_', dir=args.out.absolute()))
    build = Path(os.path.relpath(work, root)).as_posix()
    command = ['make', '-j1', 'BUILD=' + build, build + '/src/m4a_1_read.o']
    result = subprocess.run(command, cwd=root, capture_output=True, text=True)
    (work / 'build.log').write_text(result.stdout + result.stderr)
    if result.returncode:
        raise SystemExit(result.stdout + result.stderr)
    obj = work / 'src/m4a_1_read.o'
    active = {row['name'] for row in functions(obj.with_suffix('.i').read_text())}
    assert {'sub_080B6992', 'sub_080B69AE'} <= active, 'reader helpers must be active C'
    oracle = root / 'tools/tests/fixtures/sdk_flags/m4a_1_read.s'
    source = work / 'expected.s'
    source.write_text('.include "asm/macros.inc"\n.syntax unified\n.text\n'
                      + oracle.read_text())
    expected = work / 'expected.o'
    result = decomp.run(['arm-none-eabi-as', '-mcpu=arm7tdmi', '-I', str(root),
                         '-o', str(expected), str(source)])
    if result.returncode:
        raise SystemExit(result.stderr)
    decomp._SYMS = {}
    names = ['MPlayJumpTableCopy', 'sub_080B6990', 'sub_080B6992',
             'sub_080B69AC', 'sub_080B69AE']
    checks = {name: decomp.compare(str(expected), str(obj), name, verbose=True)
              for name in names}
    for name, equal in checks.items():
        print(name + (': MATCH' if equal else ': NO MATCH'))
    (work / 'results.json').write_text(json.dumps(checks, indent=2) + '\n')
    assert all(checks.values()), checks


if __name__ == '__main__':
    main()
