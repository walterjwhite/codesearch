#!/bin/sh

_QUALIFIER=log

if [ -z "$_EXEC" ]; then
	. _LIBRARY_PATH_/_APPLICATION_NAME_/search.sh | sed -e "s/^.*\/log.data://" |
		grep $_FILTER_ARGS $_SEARCH_ARGS --color 2>/dev/null
fi
