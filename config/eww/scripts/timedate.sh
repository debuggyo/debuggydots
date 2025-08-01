#!/bin/bash

while [ True ]; do
if [ "$1" = "--time" ]; then
    output=$(date "+%I:%M")
    shift 1
elif [ "$1" = "--date" ]; then
    output=$(date "+%a %d %b")
    shift 1
else break
fi
done

echo "$output"