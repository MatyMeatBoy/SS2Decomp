#!/usr/bin/env python3
"""Persistent source inventory and evidence-backed names; never needs a ROM."""
import argparse
import json
from pathlib import Path
import data_inventory
import function_names
import source_index


def write_json(path, value):
    Path(path).write_text(json.dumps(value, indent=2, ensure_ascii=True) + '\n', encoding='utf-8')


def generate(root, out, modules):
    root, out = Path(root), Path(out)
    out.mkdir(parents=True, exist_ok=True)
    catalog = json.loads((root / 'tools/config/function_names.json').read_text(encoding='utf-8-sig'))
    if catalog.get('schema_version') != 1:
        raise ValueError('unsupported function name catalog schema')
    entries = [dict(f, module=m['name'], kind=m['kind'], cat=m['cat']) for m in modules for f in m['funcs']]
    known = {f['name'] for f in entries}
    names = source_index.definition_names(root, known)
    nodes = function_names.identify(entries, catalog['functions'], names)
    identification = function_names.summarize(nodes)
    graph = source_index.build_callgraph(root, nodes)
    data = data_inventory.collect(root)
    write_json(out / 'functions.json', {'schema_version': 1, 'functions': nodes, 'identification': identification,
               'limitations': 'Configured function address intervals, including alignment/literal pools; inventory includes original assembly and linked libraries. Existing descriptive identifiers are recognized, not independently semantically re-proven.'})
    write_json(out / 'callgraph.json', graph)
    (out / 'callgraph.dot').write_text(source_index.to_dot(graph), encoding='utf-8')
    write_json(out / 'data_inventory.json', data)
    lines = ['# Function identification', '',
             'Generated from configs, C/ASM sources and the evidence catalog; no ROM required.',
             'Existing descriptive identifiers and confirmed catalog names count as identified. Proposals do not.', '',
             '| Domain | All functions | Existing | Confirmed | Proposed | Unidentified | Identified |',
             '| --- | ---: | ---: | ---: | ---: | ---: | ---: |']
    for domain, counts in identification.items():
        lines.append('| %s | %d | %d | %d | %d | %d | %.2f%% |' % (domain, counts['total'], counts['existing'], counts['confirmed'], counts['proposed'], counts['unidentified'], counts['percent_identified']))
    lines += ['', 'SDK/game here describes catalog origin; module categories used by progress metrics remain unchanged.', '',
              'Full inventory: [functions.json](functions.json). Source graph: [JSON](callgraph.json), [DOT](callgraph.dot).',
              'Graph observations include source locations and distinguish compiling C drafts from matching C.', '',
              '## Catalog entries', '', '| Address | Canonical symbol | Display name | Status | Domain | Evidence |',
              '| --- | --- | --- | --- | --- | --- |']
    for node in nodes:
        if node['name_source'] != 'catalog':
            continue
        evidence = '; '.join(e['source'] + ': ' + e['detail'] for e in node['evidence'])
        lines.append('| %s | `%s` | %s | %s | %s | %s |' % (node['address'], node['canonical_symbol'], node['display_name'], node['name_status'], node['domain'], evidence.replace('|', '\\|').replace('\n', ' ')))
    lines += ['', '## Raw data source inventory', '',
              '%d incbins reference %d bytes across %d source files; %d/%d labels are descriptive; %d explicit data directives.' % (data['incbin_count'], data['incbin_bytes'], len(data['files']), data['labels_descriptive'], data['labels_total'], data['explicit_data_directives']),
              data['limitations'], '', '## Source graph limitations', ''] + ['- ' + limit for limit in graph['limitations']]
    (out / 'identification.md').write_text('\n'.join(lines) + '\n', encoding='utf-8')
    return {'identification': identification, 'data': {k: v for k, v in data.items() if k not in ('incbins', 'labels', 'files')},
            'callgraph': {'nodes': len(nodes), 'edges': len(graph['edges']), 'unresolved_calls': len(graph['unresolved_calls']), 'parsed_c_functions': graph['parsed_c_functions']}}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--graph', required=True, help='generated callgraph.json')
    parser.add_argument('--focus', required=True, help='canonical function symbol')
    parser.add_argument('--depth', type=int, default=1)
    parser.add_argument('--direction', choices=('callers', 'callees', 'both'), default='both')
    parser.add_argument('--out', required=True, help='output stem for focused .json and .dot')
    args = parser.parse_args()
    graph = source_index.focus_graph(json.loads(Path(args.graph).read_text(encoding='utf-8')), args.focus, args.depth, args.direction)
    stem = Path(args.out); stem.parent.mkdir(parents=True, exist_ok=True)
    write_json(str(stem) + '.json', graph)
    Path(str(stem) + '.dot').write_text(source_index.to_dot(graph), encoding='utf-8')


if __name__ == '__main__':
    main()
