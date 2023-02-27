#!/bin/bash
set -euo pipefail

source "$(dirname "${BASH_SOURCE[0]}")/../_common.sh"

(
  printf "\n\n📚 Building Website 📚\n\n\n"

  cd "$REPO_ROOT"
  pipenv run mkdocs build --clean --strict

  printf "\n\n✅ Build Success ✅\n\n\n"
)
