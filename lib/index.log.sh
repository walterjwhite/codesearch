#!/bin/sh

_HAS=$(grep .csearch .gitignore 2>/dev/null | wc -l)
if [ "$_HAS" -eq "0" ]
then
    echo .csearch >> .gitignore
fi

mkdir -p .csearch

git log --pretty=format:"%h,%an,%ad,%s"> .csearch/log

_FUNCTION="cindex .csearch/log"
_QUALIFIER=.log
. _LIBRARY_PATH/_APPLICATION_NAME/include.sh