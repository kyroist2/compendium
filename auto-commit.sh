#!/bin/bash
while true; do
  if git diff --quiet; then
    sleep 5
  else
    git add -A
    git commit -m "Auto-commit: $(date '+%Y-%m-%d %H:%M:%S')"
    git push
  fi
done
