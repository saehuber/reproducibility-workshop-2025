#!/bin/bash
current_directory=$(pwd)
# Loop through all subfolders
for dir in "$current_directory"/*; do
    if [ -d "$dir" ]; then
        echo "$dir"
    fi
done

