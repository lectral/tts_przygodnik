#!/usr/bin/env bash
set -e

FILE="$1"
BRANCH="${2:-$(git branch --show-current)}"

REPO=$(git remote get-url origin \
  | sed -E 's#(git@github.com:|https://github.com/)##; s#\.git##')

echo "https://raw.githubusercontent.com/$REPO/$BRANCH/$FILE"
