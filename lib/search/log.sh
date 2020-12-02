#!/bin/sh

_QUALIFIER=log
. _LIBRARY_PATH_/_APPLICATION_NAME_/search.sh\
    | grep $_SEARCH_ARGS --color 2>/dev/null
