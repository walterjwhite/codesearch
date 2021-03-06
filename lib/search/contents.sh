#!/bin/sh

_QUALIFIER=content

if [ -n "$_EXEC" ]; then
	. _LIBRARY_PATH_/_APPLICATION_NAME_/search.sh | sed -e "s/\:.*$//" |
		sed -e "s/^$PWD_SED_SAFE\///" |
		sort -u |
		xargs -L 1 -I _FILE_ $_EXEC _FILE_
else
	if [ -n "$_LIST_FILES" ]; then
		. _LIBRARY_PATH_/_APPLICATION_NAME_/search.sh | sed -e "s/\:.*$//" |
			sed -e "s/^$PWD_SED_SAFE\///" |
			sort -u
	else
		. _LIBRARY_PATH_/_APPLICATION_NAME_/search.sh | sed -e "s/^$PWD_SED_SAFE\///" |
			grep $_FILTER_ARGS "$_SEARCH_ARGS" --color 2>/dev/null
	fi
fi
