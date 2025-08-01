#!/bin/bash
output=$(niri msg focused-window)
app_id=$(echo "$output" | sed -n 's/.*Title: "\([^"]*\)".*/\1/p')

while [ True ]; do
if [ "$app_id" = "" ]; then
    app_id="Empty Workspace"
else break
fi
done

echo "$app_id"