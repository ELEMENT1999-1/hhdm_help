#!/usr/bin/env bash
# hhdm-help installer (macOS / Linux)
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/<user>/<repo>/main/install.sh | bash
#   REPO=https://github.com/<user>/<repo> BRANCH=main bash install.sh
set -euo pipefail

REPO="${REPO:-}"
BRANCH="${BRANCH:-main}"
SKILL_NAME="${SKILL_NAME:-hhdm-help}"
DEST_ROOT="${DEST_ROOT:-$HOME/.config/mimocode/skills}"
TARGET="$DEST_ROOT/$SKILL_NAME"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "==> Install target: $TARGET"
mkdir -p "$DEST_ROOT"

if [ -n "$REPO" ]; then
  echo "==> Cloning $REPO ($BRANCH)"
  git clone --depth 1 --branch "$BRANCH" "$REPO" "$TMP/repo"
  SRC=""
  if [ -f "$TMP/repo/SKILL.md" ]; then SRC="$TMP/repo"
  elif [ -f "$TMP/repo/$SKILL_NAME/SKILL.md" ]; then SRC="$TMP/repo/$SKILL_NAME"
  elif [ -f "$TMP/repo/skill/hhdm-help/SKILL.md" ]; then SRC="$TMP/repo/skill/hhdm-help"
  else
    SRC="$(find "$TMP/repo" -maxdepth 3 -name SKILL.md -print -quit | xargs -r dirname)"
  fi
  [ -n "$SRC" ] || { echo "SKILL.md not found" >&2; exit 1; }
else
  HERE="$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)"
  if [ -f "$HERE/SKILL.md" ]; then SRC="$HERE"
  elif [ -f "$HERE/$SKILL_NAME/SKILL.md" ]; then SRC="$HERE/$SKILL_NAME"
  else echo "Provide REPO=... or run from skill folder" >&2; exit 1; fi
fi

echo "==> Source: $SRC"
rm -rf "$TARGET"
mkdir -p "$TARGET"
cp -a "$SRC/." "$TARGET/"

[ -f "$TARGET/SKILL.md" ] || { echo "SKILL.md missing after copy" >&2; exit 1; }

if grep -RE "ApiKey\s*[:=]\s*[0-9a-f]{8}-[0-9a-f]{4}-" "$TARGET" >/dev/null 2>&1; then
  echo "WARNING: possible API key in package — rotate before publishing" >&2
fi

echo "OK installed: $TARGET"
echo "Next: new MiMo session → ask HH DM; for API set HHDM_API_KEY / HHDM_ACCOUNT_ID (see SKILL.md)."
