#!/bin/sh
cd /home/disarli/Projects;
for project in for project in project1 project2;
do cd ./$project &&
    echo '================================================' &&
    branch=$(git branch | grep \* | cut -d ' ' -f2)
    echo $project: $branch &&
    git checkout develop &&
    git pull &&
    cd ..;
done;
echo '================================================';