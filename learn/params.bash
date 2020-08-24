#!/bin/bash

if [ $# -gt 0 ]; then
    echo "Your command line contains $# arguments"
else
    echo "Your command line contains no arguments"
fi

echo "Positional Parameter"

echo '$0 = ' $0

if [ "$1" != "" ]; then
    echo '$1 = ' $1
else
    echo "Positional Parameter 1 is empty"
    exit 0
fi

echo '$2 = ' $2

echo '$3 = ' $3

echo '$11 = ' $11
