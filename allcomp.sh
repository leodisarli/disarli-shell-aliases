#!/bin/sh
cd /home/disarli/Projects/proj;
for project in project1 project2;
do
    cd /home/disarli/Projects/proj
    cd ./$project &&
    echo '================================================' &&
    branch=$(git branch | grep \* | cut -d ' ' -f2)
    echo $project: $branch
    if [ $project == 'node-project' ]
    then
        npm install
    else
        composer install --prefer-dist
    fi
done;
echo '================================================';