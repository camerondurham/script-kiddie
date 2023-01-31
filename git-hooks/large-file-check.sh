#!/bin/sh

FILES=$(git status -uno --porcelain | sed s/^...//)

BINARIES=()

BIN_CHECK=1
LG_FILE_CHECK=1

for i in $FILES; do

    # file checks
    if [[ -n $BIN_CHECK ]]; then
        printf "Warning: $i is a binary file";
    fi
    if [[ -n $LG_FILE_CHECK ]]; then
        printf "Warning file > $SZ MB";
    fi
done


