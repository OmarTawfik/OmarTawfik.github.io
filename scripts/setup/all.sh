#!/bin/bash
set -euo pipefail

source "$(dirname "${BASH_SOURCE[0]}")/../_common.sh"

if [[ "${CI:-}" ]]; then
  "$REPO_ROOT/scripts/setup/ci.sh"
fi

(
  "$REPO_ROOT/scripts/setup/npm.sh"
  "$REPO_ROOT/scripts/setup/pipenv.sh"
)
