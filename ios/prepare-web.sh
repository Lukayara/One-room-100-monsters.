#!/usr/bin/env bash
set -euo pipefail
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
web_root="$repo_root/ios/OneRoom/Web"
mkdir -p "$web_root/src"
cp "$repo_root/index.html" "$repo_root/style.css" "$repo_root/device.css" "$web_root/"
cp "$repo_root/src/game.js" "$web_root/src/game.js"
