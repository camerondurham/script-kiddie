#!/bin/sh

seconds=0

echo -n "Enter number of seconds > "
read seconds

hours=$((seconds / 3600))
minutes=$((seconds / 60))
seconds=$((seconds % 60))

echo "$hours hour(s) $minutes minute(s) $seconds second(s)"
