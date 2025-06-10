#!/bin/bash
# Loop through all subfolders
for dir in $(pwd)/*; do
    if [ -d "$dir" ]; then
        echo "$dir"
    fi
done
