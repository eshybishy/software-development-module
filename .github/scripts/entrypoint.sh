#!/bin/bash

python .github/scripts/frequency.py
bash .github/scripts/update_readme.sh

git config --global user.name "github-actions[bot]"
git config --global user.email "github-actions[bot]@users.noreply.github.com"

git add README.md vowel_results.txt
git commit -m "Update README with vowel frequency results" || echo "No changes to commit"
git push
