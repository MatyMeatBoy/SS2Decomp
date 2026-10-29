"""Shared private-workspace setup for portable SDK store-grouping checks."""
import argparse
import os
from pathlib import Path
import shutil
import sys
import tempfile

ROOT = Path(__file__).absolute().parents[2]

def setup(name):
    parser = argparse.ArgumentParser()
    parser.add_argument('--deps', type=Path)
    parser.add_argument('--compiler', type=Path, default=ROOT / 'tools/agbcc_sdk_btm/bin/agbcc')
    parser.add_argument('--out', type=Path, default=ROOT / 'build/sdk_btm')
    parser.add_argument('--source', type=Path)
    parser.add_argument('--expect-red', action='store_true')
    options = parser.parse_args()
    if options.deps:
        sys.path.insert(0, str(options.deps.absolute()))
    options.compiler = options.compiler.absolute()
    options.out = options.out.absolute()
    if options.source:
        options.source = options.source.absolute()
    os.chdir(ROOT)
    options.out.mkdir(parents=True, exist_ok=True)
    work = Path(tempfile.mkdtemp(prefix=name + '_', dir=options.out.absolute()))
    for source in (ROOT / 'tools/tests/fixtures/sdk_btm').iterdir():
        if source.is_file():
            shutil.copyfile(source, work / source.name)
    cc = options.compiler.absolute()
    if not cc.is_file():
        cc = cc.with_suffix('.exe')
    assert cc.is_file(), cc
    return work, cc, options
