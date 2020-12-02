#!/bin/sh

_QUALIFIER=files

if [ -n "$_LIST_FILES" ]
then
    . _LIBRARY_PATH_/_APPLICATION_NAME_/search.sh\
        | sed -e "s/^.*\://"\
        | sed -e "s/^$PWD_SED_SAFE\///"\
        | sort -u
else
    . _LIBRARY_PATH_/_APPLICATION_NAME_/search.sh\
        | sed -e "s/\:$PWD_SED_SAFE\//\:/"\
        | grep $_SEARCH_ARGS --color 2>/dev/null
fi
