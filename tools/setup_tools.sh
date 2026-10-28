#!/bin/sh
# Install the whole decomp toolkit inside tools/ (everything here is git-ignored).
#   tools/agbcc            compiler (pret/agbcc; Windows: prebuilt .exe already in place)
#   tools/m2c              asm -> C drafts               (matt-kempster/m2c)
#   tools/decomp-permuter  random source mutations       (WhenGryphonsFly/decomp-permuter-agbcc, ARMv4T/agbcc fork)
#   tools/asm-differ       side-by-side asm diff, diff.py (simonlindholm/asm-differ)
#   tools/objdiff          objdiff GUI + CLI binaries     (encounter/objdiff)
# Usage: sh tools/setup_tools.sh [--force]   (--force re-clones / re-downloads)
set -e
ROOT=$(cd "$(dirname "$0")/.." && pwd)
T="$ROOT/tools"
OBJDIFF_VER=v3.8.3
FORCE=0; [ "$1" = "--force" ] && FORCE=1

clone() { # dir url
    if [ -d "$T/$1/.git" ] && [ $FORCE = 0 ]; then echo "ok   $1"; return; fi
    rm -rf "$T/$1"; git clone -q --depth 1 "$2" "$T/$1" && echo "new  $1"
}

clone m2c             https://github.com/matt-kempster/m2c
clone decomp-permuter https://github.com/WhenGryphonsFly/decomp-permuter-agbcc
clone asm-differ      https://github.com/simonlindholm/asm-differ

case "$(uname -s)" in
    MINGW*|MSYS*|CYGWIN*) OS=windows; EXE=.exe ;;
    Darwin) OS=macos; EXE= ;;
    *) OS=linux; EXE= ;;
esac
ARCH=x86_64; [ "$OS" = macos ] && [ "$(uname -m)" = arm64 ] && ARCH=arm64
mkdir -p "$T/objdiff"
for b in objdiff-cli objdiff; do
    f="$T/objdiff/$b$EXE"
    if [ -f "$f" ] && [ $FORCE = 0 ]; then echo "ok   objdiff/$b$EXE"; continue; fi
    curl -fsSL -o "$f" "https://github.com/encounter/objdiff/releases/download/$OBJDIFF_VER/$b-$OS-$ARCH$EXE" \
        && chmod +x "$f" && echo "new  objdiff/$b$EXE" || echo "skip objdiff/$b (no $OS-$ARCH build)"
done

if [ ! -x "$T/agbcc/bin/agbcc" ] && [ ! -f "$T/agbcc/bin/agbcc.exe" ]; then
    sh "$T/install_agbcc.sh"
else
    echo "ok   agbcc"
fi

# Python deps: m2c (pycparser), permuter (pycparser, toml, Levenshtein), asm-differ (colorama, watchdog, levenshtein, cxxfilt),
# our scripts (pyelftools, capstone).
python3 -m pip install -q --user -r "$T/requirements.txt" 2>/dev/null \
    || python3 -m pip install -q --user --break-system-packages -r "$T/requirements.txt" \
    || echo "pip failed: install the packages of tools/requirements.txt by hand"
sh "$T/install_hooks.sh"
echo "toolkit ready. Next: make -j\$(nproc) compare && make expected && python3 tools/scripts/gen_objdiff.py"
