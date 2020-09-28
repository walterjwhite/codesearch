#!/bin/sh

_search_filename() {
    _QUALIFIER=.files
    . _LIBRARY_PATH/_APPLICATION_NAME/include.sh
    unset _QUALIFIER
}