#!/bin/bash
set -o errexit

# config
git config --global user.email "dwadoch@gmail.com"
git config --global user.name "Wadoch"

# deploy
cd public
git init
git add .
git commit -m "Deploy to Github Pages"
git push --force --quiet "https://${GITHUB_TOKEN}@$github.com/${GITHUB_USER}/${GITHUB_REPO}.git" master:gh-pages > /dev/null 2>&1