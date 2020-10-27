#!/bin/sh

. _LIBRARY_PATH_/_APPLICATION_NAME_/include.sh

_prepareData

CSEARCHINDEX="$CSEARCHINDEX" cindex $_INDEX_ARGS 2>/dev/null
unset _QUALIFIER