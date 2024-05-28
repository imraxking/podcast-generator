#!/bin/bash

echo "================="
# Activate the virtual environment
source /opt/venv/bin/activate

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUR_EMAIL}"
git config --global --add safe.directory  /github/workspace

# Execute the feed.py script
python /usr/bin/feed.py

git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "================="