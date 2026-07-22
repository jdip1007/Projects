#!/bin/bash

# GitHub Pages Deploy Script for Projects Site
# This script commits and pushes the site to GitHub Pages

set -e

REPO_DIR="$HOME/github-pages"
REPO_URL="git@github.com:jdip1007/Projects.git"
BRANCH="main"

echo "🚀 Deploying to GitHub Pages..."

cd "$REPO_DIR"

# Check if git repo exists
if [ ! -d ".git" ]; then
    echo "Initializing git repository..."
    git init
    git remote add origin "$REPO_URL"
fi

# Add all changes
git add .

# Commit changes
if git diff --cached --quiet; then
    echo "No changes to commit."
else
    echo "Committing changes..."
    git commit -m "Update projects site - $(date '+%Y-%m-%d %H:%M:%S')"
fi

# Push to GitHub
echo "Pushing to GitHub..."
git push -u origin "$BRANCH" || git push origin "$BRANCH"

echo "✅ Deployment complete!"
echo "🌐 Site will be available at: https://jdip1007.github.io/"