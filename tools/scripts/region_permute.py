#!/usr/bin/env python3
"""Run decomp-permuter on a shared EU function against its regional ROM bytes.

    python3 tools/scripts/region_permute.py FUNC REGIONAL_ADDR [--region usa] [--time S] [--jobs N] [--dir D]

For register/stack-slot near misses of the -DREGION_<REGION> build (region_diff.py reports the
difference). The source is preprocessed with -DREGION_<REGION>; target.o is the control object of
that source with the function bytes replaced by the regional ROM bytes everywhere except relocation
sites, so relocations (bl targets, literal pool symbols) compare equal. This only works when the
compiled function and the regional function have the same size. Stack differences are scored
(--stack-diffs). The best result is printed as a permuter output directory; transfer the change into
an #ifdef REGION_<REGION> block by hand and verify with region_symbols.py / make REGION=<region> compare.
"""
import argparse
import glob
import json
import os
import re
import subprocess
import sys
import tempfile
import time

ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
ap.add_argument("func")
ap.add_argument("addr")
ap.add_argument("--region", default="usa")
ap.add_argument("--time", type=int, default=600, help="seconds; 0 only builds the directory")
ap.add_argument("--jobs", type=int, default=4)
ap.add_argument("--dir")
args = ap.parse_args()

os.environ["DECOMP_CPPFLAGS"] = (os.environ.get("DECOMP_CPPFLAGS", "") + " -DREGION_%s" % args.region.upper()).strip()
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import decomp  # noqa: E402
import permute  # noqa: E402
from process_tree import run_in_process_tree  # noqa: E402
from rom_regions import ROOT, load_profiles  # noqa: E402
from elftools.elf.elffile import ELFFile  # noqa: E402
from elftools.elf.relocation import RelocationSection  # noqa: E402

func, addr = args.func, int(args.addr, 16)
mod = decomp.module_of_addr(decomp.func_address(func))
cfile = os.path.join(str(ROOT), "src", mod + ".c")
d = args.dir or tempfile.mkdtemp(prefix="rperm_%s_" % func)
permute.setup(func, cfile, d)

sys.path.insert(0, permute.PERMUTER)
from src.candidate import Candidate  # noqa: E402
from src.helpers import get_default_randomization_weights  # noqa: E402
from src.perm.parse import perm_parse  # noqa: E402
from src.perm.perm import EvalState  # noqa: E402

settings = json.load(open(os.path.join(d, "control-settings.json")))
perm = perm_parse(open(os.path.join(d, "base.c")).read())
state = EvalState()
candidate = Candidate.from_source(perm.evaluate(0, state), state, settings["c_name"],
                                  get_default_randomization_weights("gcc"), 0)
open(os.path.join(d, "control.c"), "w").write(candidate.get_source())
control = os.path.join(d, "control.o")
result = subprocess.run(["sh", os.path.join(d, "compile.sh"), os.path.join(d, "control.c"), "-o", control],
                        capture_output=True, text=True)
if result.returncode:
    sys.exit("control compile failed\n" + result.stdout + result.stderr)

rom = (ROOT / load_profiles()[args.region]["filename"]).read_bytes()
data = bytearray(open(control, "rb").read())
with open(control, "rb") as handle:
    elf = ELFFile(handle)
    text = elf.get_section_by_name(".text")
    symtab = elf.get_section_by_name(".symtab")
    symbol = [s for s in symtab.iter_symbols()
              if s.name in (settings["c_name"], func) and s["st_info"]["type"] == "STT_FUNC"][0]
    start = symbol["st_value"] & ~1
    later = sorted(s["st_value"] & ~1 for s in symtab.iter_symbols()
                   if s["st_info"]["type"] == "STT_FUNC" and (s["st_value"] & ~1) > start)
    end = later[0] if later else text["sh_size"]
    masked = set()
    for section in elf.iter_sections():
        if isinstance(section, RelocationSection) and section.name in (".rel.text", ".rela.text"):
            for relocation in section.iter_relocations():
                masked.update(range(relocation["r_offset"], relocation["r_offset"] + 4))
    offset = text["sh_offset"]
regional = rom[addr - 0x08000000:addr - 0x08000000 + end - start]
changed = 0
for i in range(end - start):
    if start + i not in masked and data[offset + start + i] != regional[i]:
        data[offset + start + i] = regional[i]
        changed += 1
target = os.path.join(d, "target.o")
open(target, "wb").write(bytes(data))
if symbol.name != settings["c_name"]:
    # The permuter looks functions up by their C name.
    subprocess.run(["arm-none-eabi-objcopy", "--redefine-sym", "%s=%s" % (symbol.name, settings["c_name"]), target],
                   check=True)
    with open(os.path.join(d, "compile.sh"), "a") as script:
        script.write('arm-none-eabi-objcopy --redefine-sym %s=%s "$3"\n' % (symbol.name, settings["c_name"]))
print("%s: %d differing bytes over %d (target %s)" % (func, changed, end - start, d))
if args.time <= 0:
    sys.exit(0)
deadline = time.time() + args.time
while time.time() < deadline - 30 and not glob.glob(os.path.join(d, "output-0-*")):
    try:  # the permuter occasionally dies on an AST assertion; restart it until the deadline
        run_in_process_tree([sys.executable, "-u", os.path.join(permute.PERMUTER, "permuter.py"), d, "-j", str(args.jobs),
                             "--stop-on-zero", "--best-only", "--quiet", "--stack-diffs"],
                            timeout=deadline - time.time())
    except subprocess.TimeoutExpired:
        break
outputs = sorted(glob.glob(os.path.join(d, "output-*")),
                 key=lambda p: int(p.split("-")[-2]) if p.split("-")[-2].isdigit() else 10 ** 9)
print("best:", outputs[0] if outputs else "none")
