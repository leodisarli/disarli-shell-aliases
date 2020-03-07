#!/bin/sh
cd /home/disarli/Projects/proj;
for project in project1 project2;
do cd ./$project &&
    echo '================================================' &&
    branch=$(git branch | grep \* | cut -d ' ' -f2)
    echo $project: $branch &&
    if [ $branch == 'develop' ]
    then
        git pull
    fi
    if [ $branch == 'master' ]
    then
        git pull
    fi
    cd ..;
done;
echo '================================================';