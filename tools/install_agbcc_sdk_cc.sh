#!/bin/sh
# Build an opt-in SDK-only compiler. Never modifies tools/agbcc.
set -eu
ROOT=$(cd "$(dirname "$0")/.." && pwd)
DEST="$ROOT/tools/agbcc_sdk_cc"
REV=1b1c4a81d13918ca55c39c1ccf83689691b03a25
ARCHIVE_SHA=7afb90d0fd3495cc19925a8cc454261bcceaf30ec4c138f5bd61a3302ef2c4b1
PATCH_SHA=dd44036beac5e032d8e2e306c8d366bc21d8db4e9e19cb450fea4d702f009cd6
PATCH="$ROOT/tools/patches/agbcc-sdk-cc-reuse.patch"
TST_PATCH="$ROOT/tools/patches/agbcc-tst-eq-ne-only.patch"
TST_SHA=6e4c7ada5e1dd97a0c6a7c9c105e02ac68e1948bfdd945b892b111302b311ade
mkdir -p "$DEST/bin" "$DEST/source"
ARCHIVE="$DEST/agbcc-$REV.zip"
if [ ! -f "$ARCHIVE" ]; then
    curl -fL --retry 3 "https://codeload.github.com/Dream-Atelier/agbcc/zip/$REV" -o "$ARCHIVE.download"
    mv "$ARCHIVE.download" "$ARCHIVE"
fi
printf '%s  %s\n' "$ARCHIVE_SHA" "$ARCHIVE" | sha256sum -c -
printf '%s  %s\n' "$PATCH_SHA" "$PATCH" | sha256sum -c -
printf '%s  %s\n' "$TST_SHA" "$TST_PATCH" | sha256sum -c -
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
(cd "$SOURCE" && patch --fuzz=0 -p1 < "$TST_PATCH" && patch --fuzz=0 -p1 < "$PATCH")
make -C "$SOURCE/gcc" -j1 normal
EXE=
[ ! -f "$SOURCE/gcc/agbcc.exe" ] || EXE=.exe
cp "$SOURCE/gcc/agbcc$EXE" "$DEST/bin/agbcc$EXE"
chmod +x "$DEST/bin/agbcc$EXE"
cp "$SOURCE/gcc/COPYING" "$DEST/COPYING"
{
    printf 'source=%s\narchive_sha256=%s\npatch_sha256=%s\n' "$REV" "$ARCHIVE_SHA" "$PATCH_SHA"
    printf 'base_tst_patch_sha256=%s\n' "$TST_SHA"
    sha256sum "$DEST/bin/agbcc$EXE"
} > "$DEST/installed"
echo "SDK comparison-flags compiler ready: $DEST/bin/agbcc$EXE"
