#!/bin/bash
# Push the Kobot Security site to github.com/fazalbasheer/Kobot (main).
# Usage: TOKEN=github_pat_xxx ./push-site.sh
set -e
TOKEN="${TOKEN:-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}"
cd "$(dirname "$0")"
git add -A
git commit -m "Rebuild site as Kobot Security: purple teaming, vuln audit & pentest" --allow-empty -q || true
GIT_TERMINAL_PROMPT=0 git -c credential.helper= push "https://fazalbasheer:$TOKEN@github.com/fazalbasheer/Kobot.git" main
echo "✔ Pushed. Pages will rebuild at https://kobotlabs.com in ~1 min."
