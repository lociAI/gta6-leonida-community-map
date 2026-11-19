#!/data/data/com.termux/files/usr/bin/bash
set -e
cd /data/data/com.termux/files/home/gta6-viceroute

if ! command -v gh >/dev/null 2>&1; then
  echo "Installing GitHub CLI (gh)..."
  pkg install -y gh
fi

if ! gh auth status >/dev/null 2>&1; then
  echo "Please log in to GitHub:"
  gh auth login
fi

echo "Publishing to GitHub repository 'lociAI/gta6-leonida-community-map'..."
if gh repo view lociAI/gta6-leonida-community-map >/dev/null 2>&1; then
  git push -u origin main
else
  git remote remove origin 2>/dev/null || true
  gh repo create gta6-leonida-community-map --public --source=. --remote=origin --push
fi

echo "✅ Published to GitHub! Enable GitHub Pages in Repo Settings -> Pages -> Branch: main"
