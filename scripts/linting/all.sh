#!/bin/bash
set -euo pipefail

source "$(dirname "${BASH_SOURCE[0]}")/../_common.sh"

(
  printf "\n\n🧪 Running All Linters 🧪\n\n\n"

  "$REPO_ROOT/scripts/linting/linters/cspell.sh"
  "$REPO_ROOT/scripts/linting/linters/markdown-link-check.sh"
  "$REPO_ROOT/scripts/linting/linters/markdownlint.sh"
  "$REPO_ROOT/scripts/linting/linters/prettier.sh"
  "$REPO_ROOT/scripts/linting/linters/shellcheck.sh"
  "$REPO_ROOT/scripts/linting/linters/yamllint.sh"

  printf "\n\n✅ Linting Success ✅\n\n\n"
)
