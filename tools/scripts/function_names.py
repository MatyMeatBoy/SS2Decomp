#!/usr/bin/env python3
"""Evidence-backed display names. Canonical ROM symbols never change here."""
import re

ANONYMOUS = re.compile(r"^(?:(?:sub|arm|FUN|gUnk)_?[0-9a-fA-F]{8}|nullsub_\d+|_[0-9a-fA-F]{8})$")
IDENTIFIER = re.compile(r"^[A-Za-z_][A-Za-z_0-9]*$")


def descriptive_alias(name):
    if not IDENTIFIER.fullmatch(name) or ANONYMOUS.fullmatch(name):
        return False
    if re.fullmatch(r'.*_(?:impl|[0-9A-Fa-f]{4,8})', name):
        return False
    suffix = re.fullmatch(r'(?:sub|arm)_[0-9A-Fa-f]{8}_(.*)', name)
    if suffix and all(part in {"", "void", "ptr", "int", "uint", "bool", "impl", "u8", "u16", "u32", "u64", "s8", "s16", "s32", "s64"} for part in suffix[1].split('_')):
        return False
    return True


def identify(entries, records, defined_names=None):
    """Annotate every configured function; reject stale or unevidenced catalog rows."""
    defined_names = {symbol: [n for n in names if descriptive_alias(n["name"])]
                     for symbol, names in (defined_names or {}).items()}
    by_addr = {e["addr"]: e for e in entries}
    catalog = {}
    for record in records:
        try:
            addr = int(record["address"], 0)
        except (KeyError, TypeError, ValueError) as exc:
            raise ValueError("catalog address must be a hexadecimal address") from exc
        if addr not in by_addr or addr in catalog:
            raise ValueError("unknown or duplicate catalog address: 0x%08X" % addr)
        original = by_addr[addr]
        canonical = original.get("canonical_symbol", original.get("name"))
        if record.get("canonical_symbol", canonical) != canonical:
            raise ValueError("stale canonical symbol at 0x%08X" % addr)
        name = record.get("display_name", "")
        if not IDENTIFIER.fullmatch(name) or ANONYMOUS.fullmatch(name):
            raise ValueError("display_name must be a descriptive identifier")
        if record.get("status") not in ("confirmed", "proposed"):
            raise ValueError("catalog status must be confirmed or proposed")
        evidence = record.get("evidence", [])
        if not evidence or any(not isinstance(e, dict) or not e.get("source") or not e.get("detail") for e in evidence):
            raise ValueError("catalog names require source and detail evidence")
        if record.get("domain", "game") not in ("game", "sdk"):
            raise ValueError("catalog domain must be game or sdk")
        catalog[addr] = record
    result = []
    for entry in entries:
        node = dict(entry)
        canonical = node.get("canonical_symbol", node.get("name"))
        node.update(address="0x%08X" % node["addr"], canonical_symbol=canonical,
                    domain="sdk" if node["cat"] == "lib" else "game")
        kind, state = node["kind"], node["state"]
        node["implementation"] = ("linked" if kind == "linked" else "original_asm" if kind == "asm"
                                  else {"done": "decompiled", "nonmatch": "draft", "todo": "pending_asm"}[state])
        record = catalog.get(node["addr"])
        if record:
            node["domain"] = record.get("domain", node["domain"])
            node.update(display_name=record["display_name"], name_status=record["status"],
                        name_source="catalog", evidence=record["evidence"])
        elif defined_names.get(canonical):
            names = defined_names[canonical]
            node.update(display_name=names[0]["name"], name_status="existing", name_source="c_definition_alias",
                        evidence=[{"source": n["source"], "line": n["line"], "detail": "Existing C definition with an asm alias to the canonical symbol: " + n["name"]} for n in names])
        elif not ANONYMOUS.fullmatch(canonical):
            node.update(display_name=canonical, name_status="existing", name_source="canonical_symbol",
                        evidence=[{"source": "tools/config/functions.cfg", "detail": "Explicit existing canonical symbol; semantic meaning is not re-proven by this report."}])
        else:
            node.update(display_name=canonical, name_status="unidentified", name_source=None, evidence=[])
        result.append(node)
    return result


def summarize(nodes):
    out = {}
    for domain in ("game", "sdk", "all"):
        selected = [n for n in nodes if domain == "all" or n["domain"] == domain]
        count = lambda state: sum(n["name_status"] == state for n in selected)
        identified = count("existing") + count("confirmed")
        out[domain] = {"total": len(selected), "identified": identified,
                       "existing": count("existing"), "confirmed": count("confirmed"),
                       "proposed": count("proposed"), "unidentified": count("unidentified"),
                       "percent_identified": 100 * identified / len(selected) if selected else 100.0}
    return out
