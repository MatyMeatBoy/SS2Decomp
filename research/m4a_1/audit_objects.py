"""Conservative isolated byte/relocation audit; this never modifies build inputs."""
import argparse
import json
from pathlib import Path
import sys


def main():
    root = Path(__file__).resolve().parents[2]
    parser = argparse.ArgumentParser()
    parser.add_argument('--original', default=str(root / 'build/asm/m4a_1.o'))
    parser.add_argument('--candidate', default=str(root / 'build/m4a_exp/tests/core.o'))
    parser.add_argument('--out', default=str(root / 'build/m4a_exp/object_audit.json'))
    args = parser.parse_args()
    # Use the project's actual strict normalizer, not instruction similarity.
    sys.path.insert(0, str(root / 'tools/scripts'))
    import decomp
    inventory = json.loads(Path(__file__).with_name('inventory.json').read_text())
    results = []
    for row in inventory['entries']:
        candidate = row.get('experimental_api')
        original = row.get('canonical_symbol')
        if not candidate or not original:
            continue
        before = decomp.normalized(args.original, original)
        after = decomp.normalized(args.candidate, candidate)
        results.append({'original': original, 'candidate': candidate,
                        'original_bytes': len(before[0]), 'candidate_bytes': len(after[0]),
                        'isolated_bytes_and_relocations_equal': before == after})
    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps({'results': results, 'qualification':
        'Conservative isolated audit only. Prefixed external callback/helper symbols are '
        'not equated. Compared configured ELF ranges can include shared entries, '
        'literal pools or multiple semantic routines (for example ply_pend/rept). '
        'The unconfigured repeat entry and the veneer without a C API are not '
        'independently compared. This is not a per-semantic-routine equivalence verdict. '
        'An isolated equality never substitutes normal integrated ROM compare.'}, indent=2))
    print('Isolated strict audit:', sum(x['isolated_bytes_and_relocations_equal'] for x in results),
          '/', len(results), 'equal; no integrated matching credit')


if __name__ == '__main__':
    main()
