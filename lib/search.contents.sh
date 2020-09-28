#!/bin/sh

_search_contents() {
    if [ -n "$_LIST_FILES" ]
    then
        . _LIBRARY_PATH/_APPLICATION_NAME/include.sh\
            | sed -e "s/\:.*$//"\
            | sort -u
    else
        . _LIBRARY_PATH/_APPLICATION_NAME/include.sh
    fi
}