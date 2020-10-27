#!/bin/sh

. _LIBRARY_PATH_/_APPLICATION_NAME_/include.sh

# TODO: handle more than 1 arg
CSEARCHINDEX="$CSEARCHINDEX" csearch $_SEARCH_ARGS | grep $_SEARCH_ARGS --color 2>/dev/null
unset _QUALIFIER