#!/bin/bash

set -e 

git rev-list HEAD | 
while read rev; do
  echo
  echo REV $rev
  git ls-tree -r $rev | 
  awk '{print $3}'
  xargs git show | 
  wc -l 
done 
