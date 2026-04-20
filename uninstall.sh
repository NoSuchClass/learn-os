#!/usr/bin/env bash
# 移除所有 lumi-* skills
set -e
TARGET_DIR="${CURSOR_SKILLS_DIR:-$HOME/.cursor/skills}"
echo "→ 从 $TARGET_DIR 移除 lumi-*"
removed=0
for d in "$TARGET_DIR"/lumi-*; do
  [ -e "$d" ] || continue
  rm -rf "$d"
  echo "  ✗ $(basename "$d")"
  removed=$((removed+1))
done
echo "已移除 $removed 个 skill。"
