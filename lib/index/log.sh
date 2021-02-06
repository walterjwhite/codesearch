#!/bin/sh

# NOTE: .data must remain so the contents can be retrieved later
_prepareData() {
	_INDEX_ARGS=${CSEARCHINDEX}.data

	git log --pretty=format:"%h,%an,%ad,%s" \
		>$_INDEX_ARGS
}

_QUALIFIER=log
. _LIBRARY_PATH_/_APPLICATION_NAME_/index/special.sh
