#!/usr/bin/env python3
"""dehack.py MODULE [MODULE...] [--log FILE] : remove register-allocation devices that are no longer needed.

For every device in src/MODULE.c it tries the plain-C spelling and keeps it only when the module still
compiles to the byte-identical object (build/src/MODULE.o, taken after `make compare` is OK):
  - `register T x asm("rN")`            -> `T x`
  - `asm("" : : "r"(x));`               -> removed   (priority refs)
  - `asm("" : "+r"(x));` and other `asm("" ...);` barriers, `asm volatile("");` -> removed
One device at a time, top to bottom; a rejected device is left exactly as it was. The object comparison is the
only judge, so a removal that would change behaviour or bytes can never be kept. Run `make compare` afterwards.
Requires a clean, matching build (run `make -j8 compare` first)."""
import hashlib, os, re, subprocess, sys
args = [a for a in sys.argv[1:] if not a.startswith("--")]
log = None
if "--log" in sys.argv:
    log = open(sys.argv[sys.argv.index("--log") + 1], "a", encoding="utf-8")
    args.remove(sys.argv[sys.argv.index("--log") + 1])
PIN = re.compile(r'\bregister\s+([^;=(){}]*?)\s+asm\("r\d+"\)')
ASM = re.compile(r'\basm(?:\s+volatile)?\s*\(\s*""[^;]*?\)\s*;')
def put(path, text):
    """Write with retries: Windows can refuse a write while another process scans the file."""
    import time
    for k in range(20):
        try:
            open(path, "wb").write(text.encode()); return
        except OSError:
            time.sleep(0.5)
    open(path, "wb").write(text.encode())
def say(*a):
    print(*a, flush=True)
    if log: print(*a, file=log, flush=True)
def build(mod):
    r = subprocess.run(["make", "-s", "build/src/%s.o" % mod], capture_output=True, text=True)
    if r.returncode: return None
    return hashlib.sha1(open("build/src/%s.o" % mod, "rb").read()).hexdigest()
def devices(text):
    out = [(m.start(), m.end(), "pin") for m in PIN.finditer(text)]
    out += [(m.start(), m.end(), "asm") for m in ASM.finditer(text)]
    return sorted(out)
for mod in args:
    path = "src/%s.c" % mod
    text = open(path, "rb").read().decode()
    base = build(mod)
    if base is None: say(mod, "does not build; skipped"); continue
    kept = tried = 0; pos = 0
    while True:
        dv = [d for d in devices(text) if d[0] >= pos]
        if not dv: break
        a, b, kind = dv[0]
        if kind == "pin":
            m = PIN.match(text, a)
            new = text[:a] + m.group(1) + text[b:] if False else text[:a] + re.sub(r'^register\s+', '', re.sub(r'\s+asm\("r\d+"\)$', '', text[a:b])) + text[b:]
        else:
            new = text[:a] + text[b:]
        tried += 1
        put(path, new)
        h = build(mod)
        line = text[:a].count("\n") + 1
        if h == base:
            kept += 1; text = new; pos = a
            say("%s:%d removed %s" % (mod, line, kind))
        else:
            put(path, text); pos = b
    put(path, text)
    assert build(mod) == base, "final object differs"
    say("%s: removed %d of %d devices" % (mod, kept, tried))
