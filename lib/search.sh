#!/bin/sh

. _LIBRARY_PATH_/_APPLICATION_NAME_/include.sh

info "### searching $_QUALIFIER"

# TODO: handle more than 1 arg
CSEARCHINDEX="$CSEARCHINDEX" csearch "$_SEARCH_ARGS"
unset _QUALIFIER
