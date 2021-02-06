#!/bin/sh

for _ARG in $@; do
	debug "$_ARG"

	case $_ARG in
	-a)
		_ALL=1
		shift
		;;
	-b=*)
		_BRANCH="${_ARG#*=}"
		shift
		;;
	-p=*)
		_PROJECT="${_ARG#*=}"
		shift
		;;
	-l)
		_LIST_FILES=1
		shift
		;;
	# search contents only
	-C)
		info "Search contents only"
		_SEARCH_CONTENTS_ONLY=1
		;;
	-F)
		info "Search filenames only"
		_SEARCH_FILENAMES_ONLY=1
		;;
	-L)
		info "Search logs only"
		_SEARCH_LOG_ONLY=1
		;;
	*)
		if [ -n "$_SEARCH_ARGS" ]; then
			_SEARCH_ARGS="$_SEARCH_ARGS $_ARG"
		else
			_SEARCH_ARGS="$_ARG"
		fi
		;;
	esac
done
