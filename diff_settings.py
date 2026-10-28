# asm-differ settings: python3 tools/asm-differ/diff.py -mwo sub_08001234
#   -o  diff the object in build/ against expected/build/ (run `make expected` on a matching tree first)
#   -m  rebuild before diffing, -w  watch sources and re-diff on save
def apply(config, args):
    config["arch"] = "arm32"
    config["baseimg"] = "baserom.gba"
    config["myimg"] = "shiningsoul2_eu.gba"
    config["mapfile"] = "shiningsoul2_eu.map"
    config["source_directories"] = ["src", "include", "asm"]
    config["build_dir"] = "build/"
    config["expected_dir"] = "expected/"
    config["objdump_executable"] = "arm-none-eabi-objdump"
    config["objdump_flags"] = ["-M", "force-thumb"]
    config["makeflags"] = []
