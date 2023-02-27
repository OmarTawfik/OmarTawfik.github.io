#!/bin/bash
set -euo pipefail

source "$(dirname "${BASH_SOURCE[0]}")/../_common.sh"

# If running in GitHub CI, mark the repository as safe.directory in git:
# See https://github.com/actions/checkout/issues/766
if [[ "${GITHUB_WORKSPACE:-}" ]]; then
  cd "$REPO_ROOT"
  git config --global --add safe.directory "$GITHUB_WORKSPACE"
fi
