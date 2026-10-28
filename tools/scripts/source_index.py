#!/usr/bin/env python3
"""Conservative source call graph, without preprocessing, compiling, or a ROM."""
import json
import re
from pathlib import Path
from function_names import descriptive_alias

PARTS = re.compile(r'/\*.*?\*/|//[^\n]*|"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'', re.S)
ALIASES = re.compile(r'\b(\w+)\s*(?:\([^;{}]*?\)|(?:\[[^\]]*\])*)?\s*(?:asm|__asm__)\s*\(\s*"(\w+)"\s*\)')
DEFINITION = re.compile(r'\b([A-Za-z_]\w*)\s*\(([^;{}]*)\)\s*\{')
CALL = re.compile(r'\b([A-Za-z_]\w*)\s*\(')
POINTER = re.compile(r'\(\s*\*\s*(\w+)\s*\)\s*\(')
SKIP = {"if", "for", "while", "switch", "sizeof", "return", "asm", "__asm__", "__attribute__", "typeof", "__typeof__"}


def _blank(text):
    return ''.join('\n' if c == '\n' else ' ' for c in text)


def strip_comments(text):
    return PARTS.sub(lambda m: _blank(m[0]) if m[0].startswith(('/*', '//')) else m[0], text)


def mask_noncode(text):
    return PARTS.sub(lambda m: _blank(m[0]), text)


def aliases(text, known, inherited=None):
    candidates = dict(inherited or {})
    candidates.update(ALIASES.findall(strip_comments(text)))
    result = {}
    for name in candidates:
        target, visited = name, set()
        while target in candidates and target not in visited:
            visited.add(target); target = candidates[target]
        if target in known and target != name:
            result[name] = target
    return result


def functions(text):
    code = mask_noncode(text)
    depth, depths = 0, []
    for char in code:
        depths.append(depth)
        depth += (char == '{') - (char == '}')
    result = []
    for match in DEFINITION.finditer(code):
        if match[1] in SKIP or depths[match.start()] != 0:
            continue
        opening = match.end() - 1
        level, closing = 1, opening + 1
        while closing < len(code) and level:
            level += (code[closing] == '{') - (code[closing] == '}')
            closing += 1
        if level == 0:
            result.append({"name": match[1], "params": match[2], "start": match.start(),
                           "body_start": opening + 1, "end": closing - 1})
    return result


def _site(text, offset, path, **fields):
    line_start = text.rfind('\n', 0, offset) + 1
    return dict(fields, source=path, line=text.count('\n', 0, offset) + 1, column=offset - line_start + 1)


def scan_c(text, known, path, inherited_aliases=None):
    known = set(known)
    resolved = aliases(text, known, inherited_aliases)
    code = mask_noncode(text)
    definitions = functions(text)
    calls, unresolved = [], []
    for definition in definitions:
        caller = resolved.get(definition["name"], definition["name"])
        if caller not in known:
            continue
        begin, end = definition["body_start"], definition["end"]
        body = code[begin:end]
        pointers = set(POINTER.findall(definition["params"] + body))
        for match in CALL.finditer(body):
            name = match[1]
            if name in SKIP:
                continue
            member = bool(re.search(r'(?:->|\.)\s*$', body[:match.start()]))
            site = _site(text, begin + match.start(), path, caller=caller, language="c", kind="call")
            target = resolved.get(name, name)
            if member or name in pointers:
                unresolved.append(dict(site, expression=name, reason="indirect"))
            elif target in known:
                calls.append(dict(site, callee=target))
            elif not re.fullmatch(r'[A-Z_][A-Z_0-9]*', name):
                unresolved.append(dict(site, expression=name, reason="unresolved_identifier_or_macro"))
        for match in POINTER.finditer(body):
            unresolved.append(_site(text, begin + match.start(), path, caller=caller, language="c", kind="call", expression=match[1], reason="indirect"))
        # Calls through a cast to a known symbol, e.g. ((void (*)(u32))Fn)(x).
        for match in re.finditer(r'\b([A-Za-z_]\w*)\s*\)\s*\(', body):
            target = resolved.get(match[1], match[1])
            if target in known and re.search(r'\(\s*\*', body[max(0, match.start() - 120):match.start()]):
                calls.append(_site(text, begin + match.start(), path, caller=caller, callee=target, language="c", kind="cast_call"))
    return {"functions": definitions, "aliases": resolved, "calls": calls, "unresolved": unresolved}


def scan_asm(text, known, path):
    known = set(known)
    calls, unresolved = [], []
    current = None
    offset = 0
    clean = re.sub(r"/\*.*?\*/", lambda m: _blank(m[0]), text, flags=re.S)
    for raw in clean.splitlines(keepends=True):
        line = re.sub(r'"(?:\\.|[^"\\])*"', lambda m: _blank(m[0]), raw).split('@', 1)[0]
        start = re.match(r'\s*(?:thumb_func_start|non_word_aligned_thumb_func_start|arm_func_start)\s+(\w+)', line)
        label = re.match(r'\s*(\w+):', line)
        name = start[1] if start else label[1] if label else None
        if start:
            current = name if name in known else None
        elif name in known:
            current = name
        instruction = re.match(r'\s*(blx?|bx|b)\s+([A-Za-z_]\w*)\b', line)
        if current and instruction:
            op, target = instruction.groups()
            site = _site(text, offset + instruction.start(), path, caller=current, language="asm", kind="call" if op in ("bl", "blx") else "tail_branch")
            if target in known:
                calls.append(dict(site, callee=target))
            elif re.fullmatch(r'(?:r\d+|ip|sl|fp)', target):
                unresolved.append(dict(site, expression=target, reason="indirect"))
        offset += len(raw)
    return {"calls": calls, "unresolved": unresolved}


LIMITATIONS = [
    "Source-derived graph, not a complete runtime or linked-binary call graph.",
    "C macros and conditional compilation are not expanded; draft and matching source observations are distinguished.",
    "Indirect calls, callback registration and arbitrary pointer casts cannot generally be resolved.",
    "Compiler inlining, optimization, thunks and tail calls may change the linked graph; library internals have no source edges here.",
    "Only configured function targets are edges; unresolved identifiers may be macros or external functions.",
]


def build_callgraph(root, nodes):
    root = Path(root)
    known = {n["canonical_symbol"] for n in nodes}
    node_map = {n["canonical_symbol"]: n for n in nodes}
    header_text = '\n'.join(p.read_text(encoding="utf-8", errors="replace") for p in sorted((root / 'include').rglob('*.h')))
    header_aliases = aliases(header_text, known)
    observations, unresolved, parsed = [], [], set()
    for path in sorted((root / 'src').rglob('*.c')):
        result = scan_c(path.read_text(encoding="utf-8", errors="replace"), known, path.relative_to(root).as_posix(), header_aliases)
        parsed.update(result["aliases"].get(f["name"], f["name"]) for f in result["functions"])
        for item in result["calls"] + result["unresolved"]:
            item["implementation"] = node_map[item["caller"]]["implementation"]
        observations.extend(result["calls"]); unresolved.extend(result["unresolved"])
    for path in sorted((root / 'asm').rglob('*.s')):
        result = scan_asm(path.read_text(encoding="utf-8", errors="replace"), known, path.relative_to(root).as_posix())
        observations.extend(result["calls"]); unresolved.extend(result["unresolved"])
    grouped = {}
    for observation in observations:
        key = (observation["caller"], observation["callee"])
        grouped.setdefault(key, []).append(observation)
    edges = [{"caller": caller, "callee": callee, "observations": values} for (caller, callee), values in sorted(grouped.items())]
    return {"schema_version": 1, "nodes": nodes, "edges": edges, "unresolved_calls": unresolved,
            "parsed_c_functions": len(parsed & known), "limitations": LIMITATIONS}


def to_dot(graph):
    lines = ['digraph calls {', '  rankdir=LR;']
    for node in graph["nodes"]:
        lines.append('  %s [label=%s];' % (json.dumps(node["canonical_symbol"]), json.dumps(node.get("display_name", node["canonical_symbol"])) ))
    for edge in graph["edges"]:
        kinds = ','.join(sorted({o["language"] for o in edge["observations"]}))
        lines.append('  %s -> %s [label=%s];' % (json.dumps(edge["caller"]), json.dumps(edge["callee"]), json.dumps(kinds)))
    return '\n'.join(lines + ['}']) + '\n'


def definition_names(root, known):
    """Existing descriptive definition aliases, excluding mere extern call aliases."""
    root = Path(root)
    headers = '\n'.join(p.read_text(encoding="utf-8", errors="replace") for p in sorted((root / 'include').rglob('*.h')))
    inherited = aliases(headers, known)
    result = {}
    for path in sorted((root / 'src').rglob('*.c')):
        text = path.read_text(encoding="utf-8", errors="replace")
        resolved = aliases(text, known, inherited)
        for function in functions(text):
            name = function["name"]
            target = resolved.get(name)
            if target and name != target and descriptive_alias(name):
                result.setdefault(target, []).append({"name": name, "source": path.relative_to(root).as_posix(), "line": text.count('\n', 0, function["start"]) + 1})
    return result


def focus_graph(graph, symbol, depth=1, direction="both"):
    if symbol not in {n["canonical_symbol"] for n in graph["nodes"]}:
        raise ValueError("unknown canonical function: " + symbol)
    if depth < 0 or direction not in ("callers", "callees", "both"):
        raise ValueError("invalid graph depth or direction")
    selected, frontier = {symbol}, {symbol}
    for _ in range(depth):
        found = set()
        for edge in graph["edges"]:
            if direction in ("callees", "both") and edge["caller"] in frontier:
                found.add(edge["callee"])
            if direction in ("callers", "both") and edge["callee"] in frontier:
                found.add(edge["caller"])
        frontier = found - selected
        selected.update(found)
    result = dict(graph)
    result["nodes"] = [n for n in graph["nodes"] if n["canonical_symbol"] in selected]
    result["edges"] = [e for e in graph["edges"] if e["caller"] in selected and e["callee"] in selected]
    result["unresolved_calls"] = [e for e in graph.get("unresolved_calls", []) if e["caller"] in selected]
    result["focus"] = {"symbol": symbol, "depth": depth, "direction": direction}
    return result
