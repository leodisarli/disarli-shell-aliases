#!/bin/sh
cd /home/disarli/Projects/proj;
for project in project1 project2;
do cd ./$project &&
    echo '================================================' &&
    echo $project: $(git branch | grep \* | cut -d ' ' -f2) &&
    echo $(git status) &&
    cd ..;
done;
echo '================================================';