#!/bin/bash

# script for cloning repos from encodium org
# and setting up remotes
# must have existing fork of target repo

if [ "$#" -ne 2 ]; then
  echo "Usage: clone_repo.sh <git username> <repository name>"
else
  git clone git@github.com:"$1"/"$2".git "$2"
  git -C ./"$2" remote add upstream git@github.com:encodium/"$2".git
fi
