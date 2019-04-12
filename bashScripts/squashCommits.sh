#!/bin/bash

if [[ $# -eq 0 ]] ; then
cd ~/workspace/oht
branch="$(git branch | grep \* | cut -d ' ' -f2)"
if [[ "$branch" = "master" ]]; then
  echo 'Aborting script already on master';
  return;
fi
if [[ -z $(git status -s) ]]
then
  echo "tree is clean"
else
  echo "tree is dirty, please commit changes before running this"
  return;
fi

lastCommitMessage="$(git reflog -1 | sed 's/^.*: //')"

result="$(git checkout master)"
result="$(git fetch)"
result="$(git pull)"
result="$(git merge $branch --no-edit)"

result="$(git reset origin/master)"

result="$(git branch -D $branch)"
result="$(git checkout -b $branch)"


#git branch --set-upstream-to=origin/branchname branchname

echo "last commit message:" $lastCommitMessage

else
    input=$1
fi


