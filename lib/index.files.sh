#!/bin/sh

_HAS=$(grep .csearch .gitignore 2>/dev/null | wc -l)
if [ "$_HAS" -eq "0" ]
then
    echo .csearch >> .gitignore
fi

mkdir -p .csearch

find . -type f -or -type l\
    | grep -v \\.git\
    | sort -u\
    > .csearch/files

_FUNCTION="cindex .csearch/files"
_QUALIFIER=.files
. _LIBRARY_PATH/_APPLICATION_NAME/include.sh