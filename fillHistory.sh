#!/bin/bash

num_commits=100
num_days=22
i=0
while [ $i  -le $num_commits ]
do
  touch f.txt
  git add .
  j=0
  while [ $j -le $num_days ]
  do
    echo 'a' >> f.txt
    git commit -a --date "$j days ago" -m "minor changes"
    ((j++))
  done
  ((i++))
  rm f.txt
  git add .
  git commit -m "removed bloat"
  git push --force
  ./clearHistory.sh
done

