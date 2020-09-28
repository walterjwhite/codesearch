#!/bin/sh

_search_log() {
    _QUALIFIER=.log
    . _LIBRARY_PATH/_APPLICATION_NAME/include.sh
    unset _QUALIFIER
}