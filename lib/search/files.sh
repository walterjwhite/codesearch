#!/bin/sh

_QUALIFIER=files

. _LIBRARY_PATH_/_APPLICATION_NAME_/search.sh | sed -e "s/^.*\://" |
	sed -e "s/^$PWD_SED_SAFE\///" |
	sort -u | grep $_FILTER_ARGS $_SEARCH_ARGS --color 2>/dev/null
