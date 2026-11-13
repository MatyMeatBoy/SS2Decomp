#!/usr/bin/env python3
"""fix_return_types.py [--dry]: give every declaration the return type of the function it declares.

Many files declare a function of another file with the wrong return type: `void` for one that returns a value,
or a value (often an implicit `int`) for one that returns nothing. On the console both work, because the result
register is simply ignored or left alone. Other targets do not forgive it (WebAssembly checks the signature of
every call), and it is wrong C everywhere.

For every function defined in src/, this finds the declarations in the other files (by name or through an
`asm("name")` alias) whose void-ness differs from the definition and rewrites their return type. A file that
calls a function that returns nothing without any declaration (the compiler then assumes `int`) gets
`extern void name();` after its includes. Each file's changes are kept only if its object file stays
byte-identical; if not, they are halved until the ones that change the object or do not compile are alone,
and those are dropped and listed. `--headers` does the same for the shared declarations in include/, checked
with the whole ROM. Finish with `make -j8 compare`.
"""
import hashlib, re, subprocess, sys
from pathlib import Path

ARGS = r'\(((?:[^;{}()]|\([^()]*\))*)\)'
DEFINITION = re.compile(r'^(?![ \t#/])([^\n;{}#=()]*?)\b(\w+)\s*%s\s*(?:(?:__asm__|asm)\s*\(\s*"(\w+)"\s*\)\s*)?\{' % ARGS, re.M)
DECLARATION = re.compile(r'((?:^|[;{}])[ \t]*(?:extern\s+)?)([A-Za-z_][\w \t\*]*?[ \t\*])(\w+)\s*%s\s*((?:__asm__|asm)\s*\(\s*"(\w+)"\s*\)\s*)?;' % ARGS, re.M)
KEYWORDS = {"if", "while", "for", "switch", "return", "sizeof", "else", "do", "goto", "typedef", "case"}


def is_void(text):
    words = text.replace("*", " * ").split()
    return "void" in words and "*" not in words


def clean_type(text):
    return " ".join(w for w in text.split() if w not in ("extern", "static", "inline", "__inline__", "register"))


def build(module):
    done = subprocess.run(["make", "-s", "build/src/%s.o" % module], capture_output=True, text=True)
    if done.returncode:
        return None
    return hashlib.sha1(Path("build/src/%s.o" % module).read_bytes()).hexdigest()


def headers(defined):
    """Shared declarations: every module sees them, so the check is the ROM itself."""
    changed = 0
    originals = {}
    for path in sorted(Path("include").rglob("*.h")):
        text = path.read_bytes().decode("utf-8", errors="replace")
        edits = []
        for m in DECLARATION.finditer(text):
            real = m[6] or m[3]
            if m[3] in KEYWORDS or real not in defined or set(m[2].split()) & KEYWORDS:
                continue
            wanted = defined[real][0]
            if not wanted or is_void(m[2]) == is_void(wanted) or "struct" in wanted or not re.fullmatch(r'[\w \*]+', wanted):
                continue
            edits.append((m.start(), m.end(), m[1] + wanted + (" " if not wanted.endswith("*") else "") + text[m.start(3):m.end()], real))
        if edits:
            originals[path] = text
            for start, end, new, real in sorted(edits, key=lambda e: -e[0]):
                text = text[:start] + new + text[end:]
                print("  %s: %s" % (path.name, new.strip()[:100]))
            path.write_bytes(text.encode("utf-8"))
            changed += len(edits)
    if not changed:
        print("no shared declaration disagrees")
        return 0
    done = subprocess.run(["make", "-j8", "compare"], capture_output=True, text=True)
    if done.stdout.strip().endswith(": OK"):
        print("%d shared declaration(s) corrected; the ROM matches" % changed)
        return 0
    for path, text in originals.items():
        path.write_bytes(text.encode("utf-8"))
    print("the ROM no longer builds or matches with these %d change(s); all were undone" % changed)
    print("\n".join(l for l in (done.stdout + done.stderr).splitlines() if "rror" in l or "conflicting" in l or "void value" in l)[:1500])
    return 1


def main():
    dry = "--dry" in sys.argv
    files = sorted(Path("src").glob("*.c"))
    texts = {p: p.read_bytes().decode("utf-8", errors="replace") for p in files}
    # 1. what each function really returns
    defined = {}
    for path, text in texts.items():
        aliases = {m[3]: m[6] for m in DECLARATION.finditer(text) if m[6]}
        for m in DEFINITION.finditer(text):
            name = m[4] or aliases.get(m[2], m[2])
            if m[2] in KEYWORDS or not m[1].strip():
                continue
            defined[name] = (clean_type(m[1]), path)
    # 2. declarations that disagree
    plans = {}
    for path, text in texts.items():
        for m in DECLARATION.finditer(text):
            real = m[6] or m[3]
            if m[3] in KEYWORDS or real not in defined or defined[real][1] == path:
                continue
            if set(m[2].split()) & KEYWORDS or re.search(r'(?:^|,)\s*[-\d"&(]', m[4]):
                continue                        # a statement that only looks like a declaration
            wanted = defined[real][0]
            if not wanted or is_void(m[2]) == is_void(wanted):
                continue
            new = m[1] + wanted + (" " if not wanted.endswith("*") else "") + text[m.start(3):m.end()]
            plans.setdefault(path, []).append((m.start(), m.end(), new, real))
    # 3. calls with no declaration in sight: the compiler assumes a function returning int
    header_text = "\n".join(p.read_bytes().decode("utf-8", errors="replace") for p in sorted(Path("include").rglob("*.h")))
    in_headers = {m[6] or m[3] for m in DECLARATION.finditer(header_text)} | set(re.findall(r'\b(\w+)\s*\(', header_text))
    for path, text in texts.items():
        known = {m[6] or m[3] for m in DECLARATION.finditer(text)} | {m[3] for m in DECLARATION.finditer(text)}
        known |= {m[2] for m in DEFINITION.finditer(text)} | {m[4] for m in DEFINITION.finditer(text) if m[4]}
        include = None
        for m in re.finditer(r'^#include[^\n]*\n', text, re.M):
            include = m
        if include is None:
            continue
        for name, (kind, home) in sorted(defined.items()):
            if home == path or name in known or name in in_headers or not is_void(kind):
                continue
            if re.search(r'(?<![\w.>])%s\s*\(' % re.escape(name), text):
                plans.setdefault(path, []).append((include.end(), include.end(), "extern void %s();\n" % name, name))
    if "--headers" in sys.argv:
        return headers(defined)
    total = sum(len(v) for v in plans.values())
    print("%d declaration(s) in %d file(s) disagree with the definition's return type" % (total, len(plans)))
    if dry:
        for path, items in sorted(plans.items()):
            for start, end, new, real in items:
                print("  %s: %s" % (path.name, new.strip()[:110]))
        return 0
    kept = dropped = 0
    for path, items in sorted(plans.items()):
        original = texts[path]
        before = build(path.stem)
        if before is None:
            print("SKIP  %s does not build as it is" % path.name)
            continue

        def apply(selection):
            text = original
            for start, end, new, real in sorted(selection, key=lambda item: -item[0]):
                text = text[:start] + new + text[end:]
            path.write_bytes(text.encode("utf-8"))
            return build(path.stem) == before
        if apply(items):
            kept += len(items)
            continue
        good = []

        def settle(group):                      # halve until the changes that disturb the object are alone
            nonlocal dropped
            if apply(good + group):
                good.extend(group)
            elif len(group) == 1:
                dropped += 1
                print("DROP  %s: %s (object changes or does not compile)" % (path.name, group[0][3]))
            else:
                settle(group[:len(group) // 2])
                settle(group[len(group) // 2:])
        settle(items)
        apply(good)
        kept += len(good)
    print("%d declaration(s) corrected, %d left as they were" % (kept, dropped))
    return 0


if __name__ == "__main__":
    sys.exit(main())
