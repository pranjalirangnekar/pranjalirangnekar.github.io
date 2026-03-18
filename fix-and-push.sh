#!/bin/bash
# Run this once from your terminal inside the portfolio folder:
# bash fix-and-push.sh

set -e

echo "Removing git lock files..."
rm -f .git/HEAD.lock
rm -f .git/index.lock

echo "Staging latest changes..."
git add .gitignore cv-projects.html

echo "Finalizing commit (removing large files, adding YouTube embed)..."
git commit --amend -m "initial portfolio"

echo "Pushing to GitHub..."
git push -u origin main --force

echo ""
echo "Done! Your site should be live at:"
echo "https://pranjalirangnekar.github.io"
