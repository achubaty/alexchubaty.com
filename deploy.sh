#!/usr/bin/env bash

# If a command fails then the deploy stops
set -euo pipefail

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Install JS deps and fetch Hugo modules
pnpm install --frozen-lockfile
hugo mod get -u

# Build the project (production)
hugo --gc --minify
pnpm run pagefind

# Push the built site (public/ submodule) to GitHub Pages
cd public

git add .

msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

git push origin master
