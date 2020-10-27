#!/bin/sh

. _LIBRARY_PATH_/install/logging.sh

if [ -z "$_BRANCH" ]
then
    _BRANCH=$(gcb)
fi

CSEARCHINDEX=_APPLICATION_DATA_PATH_/${_PROJECT_RELATIVE_PATH}.project/$_BRANCH/$_QUALIFIER
mkdir -p $(dirname $CSEARCHINDEX)

export CSEARCHINDEX
