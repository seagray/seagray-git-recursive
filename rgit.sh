#!/usr/bin/env sh

dir=$(pwd)
repos=$(find . -type d -name .git | xargs -n 1 dirname)

for repo in $repos;
do
    echo;
    echo $repo;
    cd "$dir/$repo"
    git $*;
done
