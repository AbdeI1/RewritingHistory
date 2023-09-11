#!/bin/bash
git checkout --orphan a
git add -A
git commit -am "clear"
git branch -D main
git branch -M main
git push -f -u origin main
