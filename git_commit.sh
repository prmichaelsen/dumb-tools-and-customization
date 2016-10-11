#!/bin/bash
for d in */ ; do
  echo "$d"
  git -C "$d" ls-files --modified | xargs git -C "$d" add
  git -C "$d" commit -m "$1 $2"
  git -C "$d" push origin $1 
done
