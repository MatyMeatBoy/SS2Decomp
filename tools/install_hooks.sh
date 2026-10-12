#!/bin/sh
# Enable the repository git hooks (pre-commit: tree check + make compare + make nonmatching).
cd "$(dirname "$0")/.." && git config core.hooksPath tools/hooks && echo "hooks enabled (tools/hooks)"
