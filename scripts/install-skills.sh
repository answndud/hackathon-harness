#!/usr/bin/env bash
set -euo pipefail
if [ "$#" -ne 1 ] || [ ! -d "$1" ]; then
  echo "Usage: bash scripts/install-skills.sh <existing-task-directory>" >&2
  exit 1
fi
root="$(cd "$(dirname "$0")/.." && pwd)"
target="$(cd "$1" && pwd)/skills"
mkdir -p "$target"
for source in "$root"/skills/*; do
  name="$(basename "$source")"
  [ -f "$source/SKILL.md" ] || continue
  if [ -e "$target/$name" ] || [ -L "$target/$name" ]; then
    echo "SKIP existing: $target/$name"
  else
    cp -R "$source" "$target/$name"
    echo "INSTALLED: $target/$name"
  fi
done
echo "Read docs/guide/skill-guideline.md; use task skills/<name>/SKILL.md directly. Automatic discovery is not guaranteed."
