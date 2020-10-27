#!/bin/sh

_search_contents() {
    _QUALIFIER=content
    if [ -n "$_LIST_FILES" ]
    then
        . _LIBRARY_PATH_/_APPLICATION_NAME_/search.sh\
            | sed -e "s/\:.*$//"\
            | sort -u
    else
        . _LIBRARY_PATH_/_APPLICATION_NAME_/search.sh
    fi
}