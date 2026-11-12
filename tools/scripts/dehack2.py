#!/usr/bin/env python3
"""dehack2.py MODULE [MODULE...] [--log FILE] : second cleanup pass, for devices dehack.py could not remove alone.

Same judge as dehack.py: a change is kept only when build/src/MODULE.o stays byte-identical.
  A. group: a pinned variable together with every empty asm that names it (they often only work as a set);
  B. function: all devices of one function at once;
  C. retype: unpin and try the other integer types (s32/u32/u16/s16/u8) for the variable;
  D. asm pairs: two consecutive empty asm statements at once.
Run dehack.py first, and again afterwards (single removals can become possible)."""
import hashlib, os, re, subprocess, sys, time
args = [a for a in sys.argv[1:] if not a.startswith("--")]
log = None
if "--log" in sys.argv:
    lf = sys.argv[sys.argv.index("--log") + 1]
    log = open(lf, "a", encoding="utf-8"); args.remove(lf)
PIN = re.compile(r'\bregister\s+([^;=(){}]*?)\s+asm\("r\d+"\)')
ASM = re.compile(r'\basm(?:\s+volatile)?\s*\(\s*""[^;]*?\)\s*;')
NAME = re.compile(r'([A-Za-z_]\w*)\s*$')
TYPES = ["s32", "u32", "u16", "s16", "u8"]
def say(*a):
    print(*a, flush=True)
    if log: print(*a, file=log, flush=True)
def put(path, text):
    for k in range(20):
        try:
            open(path, "wb").write(text.encode()); return
        except OSError:
            time.sleep(0.5)
    open(path, "wb").write(text.encode())
def build(mod):
    r = subprocess.run(["make", "-s", "build/src/%s.o" % mod], capture_output=True, text=True)
    if r.returncode: return None
    return hashlib.sha1(open("build/src/%s.o" % mod, "rb").read()).hexdigest()
def unpin(decl):
    return re.sub(r'^register\s+', '', re.sub(r'\s+asm\("r\d+"\)$', '', decl))
def func_spans(text):
    """Top-level brace blocks: (start, end) offsets of each function body."""
    spans = []; depth = 0; start = None
    for m in re.finditer(r'[{}]', text):
        if m.group() == '{':
            if depth == 0: start = m.start()
            depth += 1
        else:
            depth -= 1
            if depth == 0 and start is not None: spans.append((start, m.end()))
    return spans
def apply(text, cuts):
    """cuts: list of (a, b, replacement); non-overlapping."""
    for a, b, rep in sorted(cuts, reverse=True):
        text = text[:a] + rep + text[b:]
    return text
for mod in args:
    path = "src/%s.c" % mod
    text = open(path, "rb").read().decode()
    base = build(mod)
    if base is None: say(mod, "does not build; skipped"); continue
    stats = {"group": 0, "function": 0, "retype": 0, "pair": 0}
    def attempt(cuts, kind, where):
        global text
        new = apply(text, cuts)
        if new == text: return False
        put(path, new)
        if build(mod) == base:
            line = text[:min(c[0] for c in cuts)].count("\n") + 1
            text = new; stats[kind] += len(cuts)
            say("%s:%d %s removed %d device(s)" % (mod, line, kind, len(cuts)))
            return True
        put(path, text); return False
    # B. whole functions first (cheapest win when it works)
    done = False
    while not done:
        done = True
        for a, b in func_spans(text):
            body = text[a:b]
            cuts = [(a + m.start(), a + m.end(), unpin(m.group())) for m in PIN.finditer(body)]
            cuts += [(a + m.start(), a + m.end(), "") for m in ASM.finditer(body)]
            if len(cuts) >= 2 and attempt(cuts, "function", a):
                done = False; break
    # A. variable groups
    pos = 0
    while True:
        m = PIN.search(text, pos)
        if not m: break
        nm = NAME.search(m.group(1))
        pos = m.end()
        if not nm: continue
        var = nm.group(1)
        fa, fb = next(((a, b) for a, b in func_spans(text) if a <= m.start() < b), (m.start(), min(len(text), m.end() + 4000)))
        cuts = [(m.start(), m.end(), unpin(m.group()))]
        for am in ASM.finditer(text, m.end(), fb):
            if re.search(r'\b%s\b' % re.escape(var), am.group()):
                cuts.append((am.start(), am.end(), ""))
        if len(cuts) >= 2 and attempt(cuts, "group", m.start()):
            pos = m.start()
    # C. retype
    pos = 0
    while True:
        m = PIN.search(text, pos)
        if not m: break
        pos = m.end()
        decl = unpin(m.group())
        tm = re.match(r'(?:(?:const|volatile)\s+)*([us](?:8|16|32))\s+(\w+)$', decl)
        if not tm: continue
        for t in TYPES:
            if t == tm.group(1): continue
            if attempt([(m.start(), m.end(), "%s %s" % (t, tm.group(2)))], "retype", m.start()):
                pos = m.start(); break
    # D. consecutive asm pairs
    pos = 0
    while True:
        m = ASM.search(text, pos)
        if not m: break
        m2 = ASM.search(text, m.end())
        pos = m.end()
        if not m2 or text[m.end():m2.start()].count(";") > 3: continue
        if attempt([(m.start(), m.end(), ""), (m2.start(), m2.end(), "")], "pair", m.start()):
            pos = m.start()
    put(path, text)
    assert build(mod) == base, "final object differs"
    left = len(PIN.findall(text)) + len(ASM.findall(text))
    say("%s: second pass removed %s; %d devices left" % (mod, ", ".join("%s %d" % kv for kv in stats.items()), left))
