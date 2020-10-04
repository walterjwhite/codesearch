#!/bin/sh

. _LIBRARY_PATH_/install/logging.sh

if [ -z "$_BRANCH" ]
then
    _BRANCH=$(gcb)
fi

if [ -z "$_PROJECT" ]
then
    _PROJECT=$(basename $(pwd))
fi

CSEARCHINDEX=_APPLICATION_DATA_PATH_/$_PROJECT/${_BRANCH}${_QUALIFIER}
mkdir -p $(dirname $CSEARCHINDEX)

export CSEARCHINDEX

CSEARCHINDEX="$CSEARCHINDEX" $_FUNCTION 2>/dev/null