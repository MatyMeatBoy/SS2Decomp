#!/usr/bin/env python3
"""Run decomp-permuter on one function.

usage: permute.py FUNC FILE.c [--time SECONDS] [--jobs N] [--out DIR]

FILE.c must define FUNC, or a C function with an asm alias to FUNC (plus its declarations). A permuter
directory is created (preprocessed base.c, compile.sh using agbcc, target.o
assembled from the original asm) and the permuter is run for --time seconds.
Before searching, the unrandomized AST must reproduce a freshly compiled complete
normal object, using the selected module compiler/flags (or DECOMP_CC1 override).
Unsupported preprocessing/helper changes fail closed. The best source is copied
to <out>/FUNC.c; even score 0 still requires normal module and ROM verification.
Set PERMUTER to the decomp-permuter checkout (default tools/decomp-permuter).
"""

import argparse
import glob
import hashlib
import json
import os
import re
import shlex
import subprocess
import sys
import tempfile

sys.path.insert(0, os.path.dirname(__file__))
import decomp  # noqa: E402
from source_index import ALIASES, functions, mask_noncode  # noqa: E402

ROOT = decomp.ROOT
PERMUTER = os.environ.get("PERMUTER", os.path.join(ROOT, "tools/decomp-permuter"))


def source_function(source, requested):
    """Resolve an assembler name without treating local register labels as aliases."""
    definitions = functions(source)
    labels = {m[1]: m[2] for m in ALIASES.finditer(source)
              if not any(f["body_start"] <= m.start() <= f["end"] for f in definitions)}
    found = [f["name"] for f in definitions
             if f["name"] == requested or labels.get(f["name"]) == requested]
    if len(found) != 1:
        raise SystemExit("expected one C definition for %s, found %s" % (requested, found))
    return found[0]


def preserve_constraints(source):
    """Use the permuter's opaque literals, not assembler-wide identifier rewriting.

    PRETEND supplies declaration types to pycparser; IGNORE emits the exact GNU C
    declaration/statement. Unsupported syntax is rejected by the control compile.
    """
    code = mask_noncode(source)

    def closing(opening):
        depth = 0
        for i in range(opening, len(code)):
            depth += (code[i] == '(') - (code[i] == ')')
            if depth == 0:
                return i
        raise SystemExit("unbalanced GNU C parentheses")

    def statement(offset):
        start, depth = 0, 0
        for i, char in enumerate(code[:offset]):
            depth += (char == '(') - (char == ')')
            if depth == 0 and char in ';{}':
                start = i + 1
        depth = 0
        for i in range(start, len(code)):
            depth += (code[i] == '(') - (code[i] == ')')
            if depth == 0 and code[i] == ';':
                return start, i + 1
        raise SystemExit("GNU C statement has no terminating semicolon")

    opaque = []
    # A GNU argument expression cannot be a pragma inside a C expression. Keep
    # its complete containing statement opaque (including its nested bindings).
    for match in re.finditer(r'\(\s*\{', code):
        if any(a <= match.start() < b for a, b, _ in opaque):
            continue
        a, b = statement(match.start())
        prefix = code[a:match.start()].strip()
        if re.match(r'(?:if|for|while|switch)\b', prefix):
            raise SystemExit("GNU argument expression in a control statement is unsupported")
        opaque.append((a, b, False))
    for match in re.finditer(r'\b(?:asm|__asm__)\s*(?:(?:volatile|__volatile__)\s*)?\(', code):
        if any(a <= match.start() < b for a, b, _ in opaque):
            continue
        end = closing(code.index('(', match.start()))
        a, b = statement(match.start())
        # A nonempty declaration prefix distinguishes asm labels from asm("nop").
        label = bool(code[a:match.start()].strip()) and bool(
            re.fullmatch(r'\s*"\w+"\s*', source[code.index('(', match.start()) + 1:end]))
        if not label:
            a = match.start()
            b = end + 1
            while b < len(code) and code[b].isspace():
                b += 1
            if b >= len(code) or code[b] != ';':
                raise SystemExit("inline asm statement has no terminating semicolon")
            b += 1
        opaque.append((a, b, label))
    for a, b, declaration in sorted(opaque, reverse=True):
        raw = source[a:b]
        replacement = '\nPERM_IGNORE(' + raw + ')\n'
        if declaration:
            plain = re.sub(r'\s*(?:asm|__asm__)\s*\(\s*"\w+"\s*\)', '', raw)
            replacement = '\nPERM_PRETEND(' + plain + ')\n' + replacement
        source = source[:a] + replacement + source[b:]
    return source


def setup(func, cfile, d):
    os.makedirs(d, exist_ok=True)
    mod = decomp.module_of_addr(decomp.func_address(func))
    cc1 = os.environ.get("DECOMP_CC1") or decomp.module_cc1(mod)
    flags = decomp.module_flags(mod) or decomp.CC1FLAGS
    # target.o
    oname = decomp.assemble_orig(func, os.path.join(d, "target.o"))
    if oname != func:
        # the permuter compares by function name: rename the original symbol
        subprocess.run(["arm-none-eabi-objcopy", "--redefine-sym", "%s=%s" % (oname, func),
                        os.path.join(d, "target.o")], check=True)
    # Resolve the C definition before reducing the translation unit. Its name
    # may differ from the assembler symbol requested by the caller.
    pre = subprocess.run(["arm-none-eabi-cpp", "-P", "-D__attribute__(x)="] + decomp.CPPFLAGS + [cfile],
                         capture_output=True, text=True, check=True).stdout
    c_name = source_function(pre, func)
    open(os.path.join(d, "base.c"), "w").write(pre)
    subprocess.run([sys.executable, os.path.join(PERMUTER, "strip_other_fns.py"),
                    os.path.join(d, "base.c"), c_name], check=True)
    with open(os.path.join(d, "base.c")) as source:
        pre = preserve_constraints(source.read())
    with open(os.path.join(d, "base.c"), "w", encoding="utf-8") as source:
        source.write(pre)
    sh = os.path.join(d, "compile.sh")
    # MSYS sh treats backslashes as escapes; preserve spaces/apostrophes too.
    shell_cc1 = cc1.replace("\\", "/") if re.match(r"^[A-Za-z]:[\\/]", cc1) else cc1
    compiler_command = shlex.join([shell_cc1] + flags)
    open(sh, "w", encoding="utf-8", newline="\n").write("""#!/bin/sh
# $1 = input.c, $3 = output.o
set -e
T=$(mktemp -d)
trap 'rm -f "$T/out.s"; rmdir "$T"' EXIT
%s -o "$T/out.s" "$1"
printf '\\t.text\\n\\t.align 2, 0\\n' >> "$T/out.s"
arm-none-eabi-as -mcpu=arm7tdmi -o "$3" "$T/out.s"
""" % compiler_command)
    os.chmod(sh, 0o755)
    open(os.path.join(d, "settings.toml"), "w").write(
        'func_name = "%s"\ncompiler_type = "gcc"\nobjdump_command = "arm-none-eabi-objdump -drz -M force-thumb"\n' % c_name)
    with open(os.path.join(d, "control-settings.json"), "w") as output:
        json.dump({"module": mod, "compiler": cc1, "flags": flags, "c_name": c_name}, output)
    return []  # Labels are already present in opaque source, including exports.


def validate_control(d, cfile):
    """Compile the unrandomized AST and require the complete normal object."""
    sys.path.insert(0, PERMUTER)
    from src.candidate import Candidate
    from src.helpers import get_default_randomization_weights
    from src.perm.parse import perm_parse
    from src.perm.perm import EvalState

    with open(os.path.join(d, "control-settings.json")) as source:
        settings = json.load(source)
    with open(os.path.join(d, "base.c")) as source:
        perm = perm_parse(source.read())
    state = EvalState()
    candidate = Candidate.from_source(perm.evaluate(0, state), state, settings["c_name"],
                                      get_default_randomization_weights("gcc"), 0)
    control = os.path.join(d, "control.c")
    with open(control, "w", encoding="utf-8") as output:
        output.write(candidate.get_source())
    compiled = subprocess.run(["sh", os.path.join(d, "compile.sh").replace('\\', '/'),
                               control.replace('\\', '/'), "-o", os.path.join(d, "baseline.o").replace('\\', '/')],
                              capture_output=True, text=True)
    if compiled.returncode:
        raise SystemExit("baseline compilation failed:\n" + compiled.stdout + compiled.stderr)
    reference = os.path.join(d, "reference.o")
    error = decomp.compile_c(cfile, reference, settings["compiler"], settings["flags"])
    if error:
        raise SystemExit("normal reference compilation failed:\n" + error)
    with open(reference, "rb") as source:
        expected = source.read()
    with open(os.path.join(d, "baseline.o"), "rb") as source:
        actual = source.read()
    result = {"entire_object_equal": expected == actual,
              "compiler": settings["compiler"], "flags": settings["flags"],
              "reference_bytes": len(expected), "control_bytes": len(actual),
              "reference_sha256": hashlib.sha256(expected).hexdigest(),
              "control_sha256": hashlib.sha256(actual).hexdigest()}
    with open(os.path.join(d, "control.json"), "w") as output:
        json.dump(result, output, indent=2)
    if expected != actual:
        raise SystemExit("permuter control differs from normal object; no randomization started")
    return result


def restore_aliases(source, aliases):
    """Reattach labels to global declarations stripped for pycparser, never calls."""
    aliases = dict(aliases)
    if not aliases:
        return source
    code = mask_noncode(source)
    restored, inserts = set(), []
    depth, start = 0, 0
    for i, char in enumerate(code):
        if char == '{':
            depth += 1
        elif char == '}':
            depth -= 1
        elif char == ';' and depth == 0:
            declaration = code[start:i]
            for name, target in aliases.items():
                declarator = r'\b' + re.escape(name) + r'\s*(?:\[[^\]]*\]\s*)*(?:\([^;{}]*\)\s*)?$'
                if re.search(declarator, declaration):
                    inserts.append((i, ' asm("%s")' % target))
                    restored.add(name)
            start = i + 1
    for name in aliases.keys() - restored:
        if re.search(r'\b' + re.escape(name) + r'\b', code):
            raise SystemExit("cannot restore asm alias for %s; no source exported" % name)
    for position, label in reversed(inserts):
        source = source[:position] + label + source[position:]
    return source


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("func")
    ap.add_argument("cfile")
    ap.add_argument("--time", type=int, default=300)
    ap.add_argument("--jobs", type=int, default=1)
    ap.add_argument("--out", default=os.path.join(ROOT, "build/permuter_results"))
    ap.add_argument("--dir")
    args = ap.parse_args()
    d = args.dir or tempfile.mkdtemp(prefix="perm_%s_" % args.func)
    aliases = setup(args.func, args.cfile, d)
    validate_control(d, args.cfile)
    try:
        result = subprocess.run([sys.executable, os.path.join(PERMUTER, "permuter.py"), d, "-j", str(args.jobs),
                                 "--stop-on-zero", "--best-only", "--quiet"], timeout=args.time)
        if result.returncode:
            raise SystemExit("permuter failed (exit %d); no result accepted" % result.returncode)
    except subprocess.TimeoutExpired:
        pass
    outs = sorted(glob.glob(os.path.join(d, "output-*")), key=lambda p: int(p.split("-")[-2]) if p.split("-")[-2].isdigit() else 10 ** 9)
    os.makedirs(args.out, exist_ok=True)
    if outs:
        best = outs[0]
        score = best.split("-")[-2]
        with open(os.path.join(best, "source.c"), encoding="utf-8") as source_file:
            source = restore_aliases(source_file.read(), aliases)
        with open(os.path.join(args.out, "%s.c" % args.func), "w", encoding="utf-8", newline="\n") as output_file:
            output_file.write(source)
        print("%s best score %s -> %s" % (args.func, score, os.path.join(args.out, args.func + ".c")))
    else:
        print("%s: no improvement found" % args.func)


if __name__ == "__main__":
    main()
