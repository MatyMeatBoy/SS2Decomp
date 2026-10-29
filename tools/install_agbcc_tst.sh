#!/bin/sh
# Build an opt-in SDK-only compiler. Never modifies tools/agbcc.
set -eu
ROOT=$(cd "$(dirname "$0")/.." && pwd)
DEST="$ROOT/tools/agbcc_tst"
REV=1b1c4a81d13918ca55c39c1ccf83689691b03a25
ARCHIVE_SHA=7afb90d0fd3495cc19925a8cc454261bcceaf30ec4c138f5bd61a3302ef2c4b1
PATCH_SHA=6e4c7ada5e1dd97a0c6a7c9c105e02ac68e1948bfdd945b892b111302b311ade
PATCH="$ROOT/tools/patches/agbcc-tst-eq-ne-only.patch"
mkdir -p "$DEST/bin" "$DEST/source"
ARCHIVE="$DEST/agbcc-$REV.zip"
if [ ! -f "$ARCHIVE" ]; then
    curl -fL --retry 3 "https://codeload.github.com/Dream-Atelier/agbcc/zip/$REV" -o "$ARCHIVE.download"
    mv "$ARCHIVE.download" "$ARCHIVE"
fi
printf '%s  %s\n' "$ARCHIVE_SHA" "$ARCHIVE" | sha256sum -c -
printf '%s  %s\n' "$PATCH_SHA" "$PATCH" | sha256sum -c -
python3 - "$ARCHIVE" "$DEST/source" <<'PY'
import os, sys, zipfile
with zipfile.ZipFile(sys.argv[1]) as archive:
    archive.extractall(sys.argv[2])
    # ZipFile does not restore Unix modes; GCC invokes these scripts directly.
    for entry in archive.infolist():
        mode = (entry.external_attr >> 16) & 0o777
        if mode:
            os.chmod(os.path.join(sys.argv[2], entry.filename), mode)
PY
SOURCE="$DEST/source/agbcc-$REV"
(cd "$SOURCE" && patch -p1 < "$PATCH")
make -C "$SOURCE/gcc" -j1 normal
EXE=
[ ! -f "$SOURCE/gcc/agbcc.exe" ] || EXE=.exe
cp "$SOURCE/gcc/agbcc$EXE" "$DEST/bin/agbcc$EXE"
chmod +x "$DEST/bin/agbcc$EXE"
cp "$SOURCE/gcc/COPYING" "$DEST/COPYING"
{
    printf 'source=%s\narchive_sha256=%s\npatch_sha256=%s\n' "$REV" "$ARCHIVE_SHA" "$PATCH_SHA"
    sha256sum "$DEST/bin/agbcc$EXE"
} > "$DEST/installed"
echo "SDK TST compiler ready: $DEST/bin/agbcc$EXE"
