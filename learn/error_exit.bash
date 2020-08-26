#!/bin/bash

# Better error handling

PROGNAME=$(basename $0)

error_exit()
{
#	----------------------------------------------------------------
#	Function for exit due to fatal program error
#		Accepts 1 argument:
#			string containing descriptive error message
#	----------------------------------------------------------------

    echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
    exit 1
}

# Example call of the function. Note includes
# of the LINENO environment variable. It contains
# the current line number.

echo "Example of error with line number and message"
error_exit "$LINENO: An error has occurred."
