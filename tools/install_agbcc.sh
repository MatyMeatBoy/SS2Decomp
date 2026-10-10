#!/bin/sh
# Build pret's agbcc (the GCC 2.95 based compiler from the AGB SDK) and install
# it into tools/agbcc.
set -e
ROOT=$(cd "$(dirname "$0")/.." && pwd)
TMP=$(mktemp -d)
git clone --depth 1 https://github.com/pret/agbcc.git "$TMP/agbcc"
cd "$TMP/agbcc"
./build.sh
./install.sh "$ROOT"
rm -rf "$TMP"
