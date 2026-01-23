#!/data/data/com.termux/files/usr/bin/bash
set -e
cd "$(dirname "$0")"
git add -A
git commit -m "autosync $(date +'%Y-%m-%d %H:%M')" || true
git pull --rebase
git push
