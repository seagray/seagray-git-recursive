#!/usr/bin/env sh

repos=$(find . -type d -name .git | xargs -n 1 dirname)

for repo in $repos;
do
    echo;
    echo $repo;
    git $*;
done