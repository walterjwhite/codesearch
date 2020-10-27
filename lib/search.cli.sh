#!/bin/sh

for _ARG in $@
do
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
            echo "Search contents only"
            _SEARCH_CONTENTS_ONLY=1
            ;;
        -F)
            echo "Search filenames only"
            _SEARCH_FILENAMES_ONLY=1
            ;;
        -L)
            echo "Search logs only"
            _SEARCH_LOG_ONLY=1
            ;;
        *)
            _SEARCH_ARGS="$_SEARCH_ARGS $_ARG"
            ;;
    esac
done