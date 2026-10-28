"""Run existing composed C/ASM fixtures with VSync -> Main and fresh build by default."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[2]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--deps', default=str(ROOT / 'build/port_memory/deps'))
    parser.add_argument('--out', default=str(ROOT / 'build/port_memory/vsync-first'))
    parser.add_argument('--binutils-dir')
    parser.add_argument('--cc')
    parser.add_argument('--skip-build', action='store_true', help='diagnostic reuse only; report fresh_build=false')
    args = parser.parse_args()
    source = ROOT / 'research/m4a_1/test_engine.py'
    original = source.read_text(encoding='utf8')
    driver = original
    replacements = {
        'ROOT = Path(__file__).resolve().parents[2]': 'ROOT = Path(' + repr(str(ROOT)) + ')',
        "Path(__file__).with_name('test_helpers.py')": "(ROOT / 'research/m4a_1/test_helpers.py')",
        "Path(__file__).with_name('inventory.json')": "(ROOT / 'research/m4a_1/inventory.json')",
        "Path(__file__).with_name('m4a_1.c')": "(ROOT / 'research/m4a_1/m4a_1.c')",
        "for phase in ('main', 'vsync'):": "for phase in ('vsync', 'main'):",
    }
    # Fail on upstream shape changes rather than silently running the old order.
    for before, after in replacements.items():
        if driver.count(before) != 1:
            raise ValueError('existing engine harness changed: ' + before)
        driver = driver.replace(before, after)
    out = Path(args.out).resolve()
    out.mkdir(parents=True, exist_ok=True)
    path = out / 'vsync_first_driver.py'
    path.write_text(driver, encoding='utf8')
    command = [sys.executable, str(path), '--deps', args.deps, '--out', str(out)]
    for option, value in (('--binutils-dir', args.binutils_dir), ('--cc', args.cc)):
        if value:
            command += [option, value]
    if args.skip_build:
        command.append('--skip-build')
    # The generated driver still invokes the real helper-suite fresh compile,
    # the C binders and target-ROM/IWRAM guard. No callback slots are rewritten.
    subprocess.run(command, check=True)
    report = out / 'engine_results.json'
    result = json.loads(report.read_text())
    result.update({'phase_order': ['vsync', 'main'],
        'base_engine_source_sha256': hashlib.sha256(source.read_bytes()).hexdigest(),
        'generated_driver_sha256': hashlib.sha256(path.read_bytes()).hexdigest(),
        'transformations': ['phase order only', 'resolve repository paths from generated build driver'],
        'scope': 'relative audio-call order of 01180 only; not IRQ, register-shadow/copy-queue interleave, BIOS or timing'})
    assert result['fresh_build'] == (not args.skip_build)
    report.write_text(json.dumps(result, indent=2))
    print('PASS VSync->Main:', result['frames'], 'frames;', 'fresh_build=', result['fresh_build'])


if __name__ == '__main__':
    main()
