"""Independent, source-backed ROM code/data bars; no ROM needed for reporting."""
import argparse
import hashlib
from html import escape
import json
from pathlib import Path
import re

import data_inventory

ROM_BASE = 0x08000000


def number(value):
    if isinstance(value, bool) or not isinstance(value, (str, int)):
        raise ValueError('Expected an integer or hexadecimal address')
    return int(value, 0) if isinstance(value, str) else value


def digest(value, length=64):
    if not isinstance(value, str) or not re.fullmatch('[0-9a-f]{%d}' % length, value):
        raise ValueError('Invalid evidence digest')
    return value


def intervals(rows, start, end, address_key, absolute=False):
    result = []
    for row in rows:
        offset = number(row[address_key]) - (ROM_BASE if absolute else 0)
        size = number(row['bytes'])
        digest(row['sha256'])
        if size <= 0 or offset < start or offset + size > end:
            raise ValueError('Coverage interval outside its ROM section')
        result.append((offset, offset + size, row))
    result.sort(key=lambda item: item[:2])
    if any(left[1] > right[0] for left, right in zip(result, result[1:])):
        raise ValueError('Overlapping coverage intervals')
    return result


def source_path(root, value):
    root = Path(root).resolve()
    if not isinstance(value, str) or '\\' in value or ':' in value:
        raise ValueError('Invalid source evidence path')
    path = (root / value).resolve()
    if not path.is_relative_to(root) or path.suffix not in ('.c', '.h', '.s', '.inc'):
        raise ValueError('Data evidence must refer to repository source')
    return path


def metric(done, total):
    if not 0 <= done <= total or total <= 0:
        raise ValueError('Invalid progress numerator or denominator')
    return {'total': total, 'percent': 100.0 * done / total}


def source_digest(path):
    """Hash Git-style source text independently of checkout CRLF conversion."""
    return hashlib.sha256(Path(path).read_bytes().replace(b'\r\n', b'\n')).hexdigest()


def collect(root, modules, profiles=None, evidence=None):
    root = Path(root)
    if profiles is None:
        profiles = json.loads((root / 'tools/config/rom_regions.json').read_text(encoding='utf-8'))['regions']
    if evidence is None:
        evidence = json.loads((root / 'tools/config/regional_progress.json').read_text(encoding='utf-8'))
    if evidence.get('schema_version') != 1 or evidence.get('primary_region') != 'eu':
        raise ValueError('Unsupported regional progress schema or primary region')
    if set(evidence['regions']) != set(profiles) or set(profiles) != {'eu', 'usa', 'jp'}:
        raise ValueError('Regional progress must cover the three pinned ROM profiles')
    known = {f['name']: (m, f) for m in modules for f in m['funcs']}
    raw = data_inventory.collect(root)['incbins']
    result = {'schema_version': 1, 'primary_region': 'eu', 'unit': 'bytes', 'regions': {},
              'limits': 'Code includes literal pools/alignment and excludes the header/startup prelude. Data includes opaque assets/padding. Raw ROM gaps/incbins, linked binaries, drafts and names earn no source credit. Data source coverage is not a measure of understanding.'}
    for region in ('eu', 'usa', 'jp'):
        profile, item = profiles[region], evidence['regions'][region]
        if (digest(item['rom_sha1'], 40) != profile['sha1']
                or digest(item['rom_sha256']) != profile['sha256']):
            raise ValueError('Regional evidence refers to another reference ROM')
        start, split, end = (number(item[k]) for k in ('code_start', 'code_end', 'data_end'))
        if not 0 <= start < split < end == number(profile['size']):
            raise ValueError('Invalid regional code/data partition')
        anchor = item['boundary_anchor']
        digest(anchor['sha256'])
        a, length = number(anchor['offset']), number(anchor['bytes'])
        if not 0 <= a < split < a + length <= end:
            raise ValueError('Boundary evidence must cross the code/data split')
        code_ranges = intervals(item['compiled_c'], start, split, 'address', True)
        data_ranges = intervals(item['data_sources'], split, end, 'rom_offset')
        excluded, functions = [], []
        if region == 'eu':
            if sum(f['size'] for m in modules for f in m['funcs']) != split - start:
                raise ValueError('EU layout denominator no longer matches the source inventory')
            done = sum(f['size'] for m in modules if m['kind'] == 'c'
                       for f in m['funcs'] if f['state'] == 'done')
        else:
            done = 0
            for lo, hi, receipt in code_ranges:
                name = receipt['canonical_eu_symbol']
                module, function = known.get(name, ({}, {}))
                if (module.get('kind') != 'c' or function.get('state') != 'done'
                        or module.get('name') != receipt['module']
                        or function.get('addr') != lo + ROM_BASE
                        or hi - lo > function.get('size', 0)):
                    excluded.append({'symbol': name, 'reason': 'No longer the admitted active EU C interval'})
                    continue
                done += hi - lo
                functions.append(name)
        data_done = 0
        for lo, hi, receipt in data_ranges:
            path = source_path(root, receipt['source'])
            expected = digest(receipt['source_sha256'])
            if region == 'eu' and any(b['file'] == profiles['eu'].get('filename', 'baserom.gba')
                                      and lo < b['rom_offset'] + b['size'] and b['rom_offset'] < hi for b in raw):
                raise ValueError('Source-data receipt overlaps raw reference incbin bytes')
            if not path.is_file() or source_digest(path) != expected:
                excluded.append({'source': receipt['source'], 'reason': 'Missing or changed source; receipt needs revalidation'})
                continue
            data_done += hi - lo
        result['regions'][region] = {
            'name': profile['name'], 'game_code': profile['game_code'],
            'rom_sha1': profile['sha1'], 'rom_sha256': profile['sha256'],
            'code': dict(metric(done, split - start), matching=done),
            'data': dict(metric(data_done, end - split), done=data_done),
            'code_rom_offsets': [start, split], 'data_rom_offsets': [split, end],
            'admitted_c_functions': functions, 'excluded_receipts': excluded,
            'evidence_revision': item.get('evidence_revision'),
        }
    return result


def format_percent(value):
    return '<0.01%' if 0 < value < 0.01 else '%.2f%%' % value


def render_svg(report):
    parts = ['<svg xmlns="http://www.w3.org/2000/svg" width="760" height="274" viewBox="0 0 760 274" role="img" aria-labelledby="title desc">',
             '<title id="title">Regional matching C and source data progress</title>',
             '<desc id="desc">Europe is the main target. Each region has independent code and data source bars. Copied reference bytes do not count.</desc>',
             '<rect width="760" height="274" rx="10" fill="#0d1117"/>',
             '<g font-family="DejaVu Sans,Arial,sans-serif" fill="#e6edf3">',
             '<text x="18" y="25" font-size="14" font-weight="bold">ROM regions · code and data from source</text>']
    for index, region in enumerate(('eu', 'usa', 'jp')):
        item, y = report['regions'][region], 51 + index * 68
        label = item['name'] + (' · main' if region == report['primary_region'] else '')
        parts.append('<text x="18" y="%d" font-size="12" font-weight="bold">%s</text>' % (y, escape(label)))
        for key, x, title, color, done_key in [('code', 186, 'Code · matching C', '#3fb950', 'matching'),
                                               ('data', 478, 'Data · from source', '#58a6ff', 'done')]:
            m = item[key]
            description = '%s: %s — %d / %d bytes' % (label, title, m[done_key], m['total'])
            parts += ['<g id="%s-%s"><title>%s</title>' % (region, key, escape(description)),
                      '<text x="%d" y="%d" font-size="11">%s</text>' % (x, y - 3, escape(title)),
                      '<text x="%d" y="%d" text-anchor="end" font-size="11">%s</text>' % (x + 258, y - 3, escape(format_percent(m['percent']))),
                      '<rect x="%d" y="%d" width="258" height="12" rx="3" fill="#30363d"/>' % (x, y + 5),
                      '<rect class="progress-fill" x="%d" y="%d" width="%.6f" height="12" rx="2" fill="%s"/>' % (x, y + 5, 258 * m['percent'] / 100, color),
                      '<text x="%d" y="%d" font-size="10" fill="#8b949e">%s / %s bytes</text></g>' % (x, y + 32, format(m[done_key], ','), format(m['total'], ','))]
    parts += ['<text x="18" y="257" font-size="10" fill="#8b949e">Independent regional evidence · raw ROM copies, drafts and names do not fill these bars</text>', '</g></svg>']
    return '\n'.join(parts) + '\n'


def render_markdown(report):
    lines = ['# Regional code and data source progress', '',
             'EU remains the main matching target. Its existing game-only main percentage is unchanged.', '',
             '| Region | Matching C | Code bytes | Data from source | Data bytes |',
             '| --- | ---: | ---: | ---: | ---: |']
    for region, item in report['regions'].items():
        c, d = item['code'], item['data']
        lines.append('| %s%s | %s | %d / %d | %s | %d / %d |' % (item['name'], ' (main)' if region == 'eu' else '', format_percent(c['percent']), c['matching'], c['total'], format_percent(d['percent']), d['done'], d['total']))
    lines += ['', report['limits'], '',
              'The EU code denominator covers the full configured code span, including SDK/original ASM and linked code; only matching C enters its numerator. It therefore differs from the main game-only metric.', '',
              'USA/Japan use frozen exact-build receipts and current active-C status, not the EU percentage. Their reference-ROM reconstruction checksum is an integrity check, not source coverage. A changed data-source hash removes its credit until revalidated.', '',
              'See [regional build/evidence guide](../agents/REGIONS.md) and [metric definitions](../agents/PROGRESS_AND_NAMES.md).', '']
    return '\n'.join(lines)


def write_outputs(root, out, modules):
    report = collect(root, modules)
    out = Path(out)
    out.mkdir(parents=True, exist_ok=True)
    for extension, text in [('json', json.dumps(report, indent=2) + '\n'),
                             ('svg', render_svg(report)), ('md', render_markdown(report))]:
        (out / ('regional_progress.' + extension)).write_text(text, encoding='utf-8', newline='\n')
    return report


def verify_local(root):
    """Check the frozen layout/byte receipts against all private local dumps."""
    from rom_regions import verify_rom
    root = Path(root)
    profiles = json.loads((root / 'tools/config/rom_regions.json').read_text(encoding='utf-8'))['regions']
    evidence = json.loads((root / 'tools/config/regional_progress.json').read_text(encoding='utf-8'))
    eu_profile = profiles['eu']
    verify_rom(root / eu_profile['filename'], 'eu', profiles)
    eu = (root / eu_profile['filename']).read_bytes()
    for region, profile in profiles.items():
        verify_rom(root / profile['filename'], region, profiles)
        data = (root / profile['filename']).read_bytes()
        item = evidence['regions'][region]
        a = item['boundary_anchor']
        offset, size = number(a['offset']), number(a['bytes'])
        block = data[offset:offset + size]
        if hashlib.sha256(block).hexdigest() != a['sha256'] or data.count(block) != 1:
            raise ValueError('Regional code/data boundary anchor mismatch')
        for receipt in item['compiled_c']:
            lo, size = number(receipt['address']) - ROM_BASE, number(receipt['bytes'])
            block = data[lo:lo + size]
            if block != eu[lo:lo + size] or hashlib.sha256(block).hexdigest() != receipt['sha256']:
                raise ValueError('Regional compiled-C byte receipt mismatch')
        for receipt in item['data_sources']:
            lo, size = number(receipt['rom_offset']), number(receipt['bytes'])
            if hashlib.sha256(data[lo:lo + size]).hexdigest() != receipt['sha256']:
                raise ValueError('Regional source-data byte receipt mismatch')
            if source_digest(source_path(root, receipt['source'])) != receipt['source_sha256']:
                raise ValueError('Regional source-data text changed')
    return True


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', default='build/regional-progress')
    parser.add_argument('--verify-local', action='store_true', help='also verify all three private ROMs against layout and byte receipts')
    args = parser.parse_args()
    import progress
    if args.verify_local:
        verify_local(progress.ROOT)
    print(json.dumps(write_outputs(progress.ROOT, args.out, progress.collect()), indent=2))


if __name__ == '__main__':
    main()
