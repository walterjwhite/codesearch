#!/bin/sh

. _LIBRARY_PATH_/_APPLICATION_NAME_/index.gitignore.sh

git log --pretty=format:"%h,%an,%ad,%s" > .csearch/log

_QUALIFIER=log
. _LIBRARY_PATH_/_APPLICATION_NAME_/index.special.sh