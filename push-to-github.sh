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

echo "Creating public GitHub repository 'gta6-leonida-community-map' and pushing..."
gh repo create gta6-leonida-community-map --public --source=. --remote=origin --push

echo "✅ Published to GitHub! Enable GitHub Pages in Repo Settings -> Pages -> Branch: main"
