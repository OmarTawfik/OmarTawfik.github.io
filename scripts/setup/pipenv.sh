#!/bin/bash
set -euo pipefail

source "$(dirname "${BASH_SOURCE[0]}")/../_common.sh"

(
  printf "\n\n📦 Installing Pipenv 📦\n\n\n"

  # Use the top-level `Pipfile` to search for the version of `pipenv` to install.
  # This should match lines that have: `pipenv = "==YYYY.MM.DD"`
  PIPENV_VERSION="$(sed -n 's/^pipenv = "==\([^"]*\)"$/\1/p' "$REPO_ROOT/Pipfile")"
  echo "Using pipenv version: $PIPENV_VERSION"

  cd "$REPO_ROOT"
  pip3 install "pipenv==$PIPENV_VERSION"

  printf "\n\n✅ Pipenv Installed ✅\n\n\n"
)

(
  printf "\n\n📦 Installing Pipenv Packages 📦\n\n"

  cd "$REPO_ROOT"
  if [[ "${CI:-}" ]]; then
    pipenv install --deploy
  else
    pipenv install
  fi

  printf "\n\n✅ Pipenv Packages Installed ✅\n\n\n"
)
