#!/bin/sh

_search_filename() {
    _QUALIFIER=.files
    . _LIBRARY_PATH_/_APPLICATION_NAME_/include.sh
    unset _QUALIFIER
}