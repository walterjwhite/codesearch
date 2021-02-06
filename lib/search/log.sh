#!/bin/sh

_QUALIFIER=log
. _LIBRARY_PATH_/_APPLICATION_NAME_/search.sh | sed -e "s/^.*\/log.data://" |
	grep $_SEARCH_ARGS --color 2>/dev/null
