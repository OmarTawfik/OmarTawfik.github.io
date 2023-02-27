#!/bin/bash
set -euo pipefail

source "$(dirname "${BASH_SOURCE[0]}")/../_common.sh"

(
  printf "\n\n🌐 Serving Documentation 🌐\n\n\n"

  cd "$REPO_ROOT"
  pipenv run mkdocs serve --livereload --watch-theme
)
