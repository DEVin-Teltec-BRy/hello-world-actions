#!/usr/bin/env bash

# Enabling strict error cheking
set -euo pipefail

# Installing npm-check-updates
npm i -g npm-check-updates

# Update all dependencies
echo "Installing NPM dependencies..."
yarn install
echo "Updating NPM dependencies..."
ncu -u
echo "Installing NPM dependencies..."
yarn install

# Setup Git config
echo "Configuring Git..."
git config --global user.email "noreply@devinhouse.com"
git config --global user.name "Super Automation"

if [[ $(git status --porcelain) ]]; then

  # Push changes to remote
  echo "Pushing changes to remote..."
  git add .
  git commit -a -m "Update NPM dependencies"

  git checkout -b "npm_deps_${id}"
  git push origin "npm_deps_${id}"

else
  echo "No changes to commit"
fi