#!/bin/sh
# Reproduce the SDK-only ARM compiler without modifying tools/agbcc.
set -eu
ROOT=$(cd "$(dirname "$0")/.." && pwd)
DEST="$ROOT/tools/agbcc_arm_sdk"
REV=da598c1d918402c42c0c0d7128ba14567f3175e9
ARCHIVE_SHA=d4dee508fa72b0e6f6bceed5b788e00797f5d78f6cfaf4373eff1fb027a67697
mkdir -p "$DEST/bin" "$DEST/source"
ARCHIVE="$DEST/agbcc-$REV.zip"
if [ ! -f "$ARCHIVE" ]; then
    curl -fL --retry 3 "https://codeload.github.com/pret/agbcc/zip/$REV" -o "$ARCHIVE.download"
    mv "$ARCHIVE.download" "$ARCHIVE"
fi
printf '%s  %s\n' "$ARCHIVE_SHA" "$ARCHIVE" | sha256sum -c -
# Keep each source build independent, including generated GCC files.
BUILD_ROOT=$(mktemp -d "$DEST/source/build.XXXXXXXX")
python3 - "$ARCHIVE" "$BUILD_ROOT" <<'PY'
import os, sys, zipfile
with zipfile.ZipFile(sys.argv[1]) as archive:
    archive.extractall(sys.argv[2])
    for entry in archive.infolist():
        mode = (entry.external_attr >> 16) & 0o777
        if mode:
            os.chmod(os.path.join(sys.argv[2], entry.filename), mode)
PY
SOURCE="$BUILD_ROOT/agbcc-$REV"
# These are the ARM configure/build commands from the pinned upstream build.sh.
(cd "$SOURCE/gcc_arm" && ./configure --target=arm-elf --host=i386-linux-gnu && make -j1 cc1)
EXE=
[ ! -f "$SOURCE/gcc_arm/cc1.exe" ] || EXE=.exe
cp "$SOURCE/gcc_arm/cc1$EXE" "$DEST/bin/agbcc$EXE"
chmod +x "$DEST/bin/agbcc$EXE"
cp "$SOURCE/gcc_arm/COPYING" "$DEST/COPYING"
{
    printf 'source=%s\narchive_sha256=%s\nsource_directory=%s\n' "$REV" "$ARCHIVE_SHA" "$SOURCE"
    sha256sum "$DEST/bin/agbcc$EXE"
} > "$DEST/installed"
echo "Pinned SDK ARM compiler ready: $DEST/bin/agbcc$EXE"
