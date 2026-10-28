#!/bin/sh
# Enable the repository git hooks (pre-commit: tree check + make compare + make nonmatching)
# and the `ours` merge driver used by .gitattributes for generated files (docs/progress/*).
cd "$(dirname "$0")/.." && git config core.hooksPath tools/hooks && git config merge.ours.driver true && echo "hooks enabled (tools/hooks)"
