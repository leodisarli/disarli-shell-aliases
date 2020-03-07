#!/bin/sh
cd /home/disarli/Projects/proj;
for project in project1 project2;
do
    cd /home/disarli/Projects/proj
    cd ./$project &&
    echo '================================================' &&
    branch=$(git branch | grep \* | cut -d ' ' -f2)
    echo $project: $branch &&
    git checkout develop &&
    git pull &&
    git branch | grep -v "master" | grep -v ^* | xargs git branch -d
done;
echo '================================================';