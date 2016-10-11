#!/bin/bash
for d in */ ; do
  echo "$d"
  git -C "$d" diff --name-status origin/master
done
