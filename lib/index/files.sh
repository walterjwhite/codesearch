#!/bin/sh

# NOTE: .data must remain so the contents can be retrieved later
_prepareData() {
	_INDEX_ARGS=${CSEARCHINDEX}.data

	find $PWD -type f -or -type l | grep -v \\.git | sort -u >$_INDEX_ARGS
}

_QUALIFIER=files
. _LIBRARY_PATH_/_APPLICATION_NAME_/index/special.sh
