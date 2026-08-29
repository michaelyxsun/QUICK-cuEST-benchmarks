#!/bin/bash

# run in directory with morphine-1, morphine-2, morphine-3, etc.
# redirect to something OUTSIDE THE DIRECTORY, e.g
# $ ./cat.sh >../cat.out

find . -type f -print0 | while IFS= read -r -d '' file; do
    # if [[ "$file" == ./cat.sh || "${file##*.}" == in ]]; then
    #     continue
    # fi

    if [[ "${file##*.}" == out ]]; then
        printf "\n======== FILE: %s ========\n" "$file"
        tail -n50 "$file"
    fi
done
