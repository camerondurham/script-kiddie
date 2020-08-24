#!/bin/bash -x

# if number is not set (number=)
# the expression below expands to [ = "1" ]
# which is an error
number=

# turn on tracing with:
set -x

if [ "$number" = "1" ]; then
    echo "Number equals 1"
else
    echo "Number does not equal 1"
fi
set +x
