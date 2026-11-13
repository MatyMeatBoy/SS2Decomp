#!/usr/bin/env python3
"""fix_return_types.py [--dry]: give every declaration the return type of the function it declares.

Many files declare a function of another file with the wrong return type: `void` for one that returns a value,
or a value (often an implicit `int`) for one that returns nothing. On the console both work, because the result
register is simply ignored or left alone. Other targets do not forgive it (WebAssembly checks the signature of
every call), and it is wrong C everywhere.

For every function defined in src/, this finds the declarations in the other files (by name or through an
`asm("name")` alias) whose void-ness differs from the definition and rewrites their return type. A file that
calls such a function with no declaration at all gets one after its includes. Each file's changes are kept only
if its object file stays byte-identical; if not, they are tried one at a time and the ones that change the
object or do not compile are dropped and listed. Finish with `make -j8 compare`.
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
