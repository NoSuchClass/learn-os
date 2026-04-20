#!/usr/bin/env bash
# lumi skill installer
# Usage:
#   bash install.sh                  # 安装全部已产出的 skills
#   bash install.sh clarify journal  # 只装指定 skills
#   bash install.sh --link           # 软链接模式（开发用，改动立即生效）
#   bash install.sh --dry-run        # 只打印不执行

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$SCRIPT_DIR/skills"
TARGET_DIR="${CURSOR_SKILLS_DIR:-$HOME/.cursor/skills}"

MODE="copy"
DRY_RUN=false
SKILLS=()

for arg in "$@"; do
  case "$arg" in
    --link) MODE="link" ;;
    --dry-run) DRY_RUN=true ;;
    -*) echo "unknown flag: $arg"; exit 1 ;;
    *) SKILLS+=("$arg") ;;
  esac
done

if [ ${#SKILLS[@]} -eq 0 ]; then
  SKILLS=($(ls "$SOURCE_DIR" 2>/dev/null))
fi

if [ ${#SKILLS[@]} -eq 0 ]; then
  echo "skills/ is empty — 还没有 skill 可以安装"
  exit 0
fi

mkdir -p "$TARGET_DIR"

echo "→ 安装目录：$TARGET_DIR"
echo "→ 模式：$MODE"
echo "→ 将安装：${SKILLS[*]}"
echo

for skill in "${SKILLS[@]}"; do
  src="$SOURCE_DIR/$skill"
  dst="$TARGET_DIR/lumi-$skill"

  if [ ! -d "$src" ]; then
    echo "  ⚠ 跳过 $skill（不存在于 skills/）"
    continue
  fi

  if [ "$DRY_RUN" = true ]; then
    echo "  [dry-run] $src → $dst"
    continue
  fi

  rm -rf "$dst"
  if [ "$MODE" = "link" ]; then
    ln -s "$src" "$dst"
    echo "  🔗 $skill (symlink)"
  else
    cp -r "$src" "$dst"
    echo "  ✓ $skill"
  fi
done

echo
echo "完成。重启 Cursor 或新建对话以激活 skills。"
