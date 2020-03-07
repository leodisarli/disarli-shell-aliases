#!/bin/sh
reset
cd /home/disarli/Projects/proj;
for project in project1 project2;
do
    cd /home/disarli/Projects/proj &&
    cd ./$project &&
    echo '================================================' &&
    branch=$(git branch | grep \* | cut -d ' ' -f2)
    echo $project: $branch &&
    git checkout master -q &&
    git pull -q &&
    git checkout develop -q &&
    git pull -q &&
    count="$(git rev-list --count master...develop)" &&
    if [ $count != '1' ]
    then
        echo 'need to release: '$count' commits behind' &&
        cat ./config/version.php
    else
        echo 'no need to release.'
    fi
done;
echo '================================================';