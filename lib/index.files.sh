#!/bin/sh

. _LIBRARY_PATH_/_APPLICATION_NAME_/index.gitignore.sh

find . -type f -or -type l\
    | grep -v \\.git\
    | sort -u\
    > .csearch/files

_QUALIFIER=files
. _LIBRARY_PATH_/_APPLICATION_NAME_/index.special.sh
