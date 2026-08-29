#!/usr/bin/env bash

# USAGE:
#   $ ./vd.sh morphine basis.txt

# Expects a directory that looks like:
#   input/
#   mol-1/
#   mol-2/
#   mol-3/

mol=$1
basisfile=$2

mapfile -t basis <"$basisfile"

for line in "${basis[@]}"; do
    outfile="${mol}_${line}.out"

    if ! compgen -G "$mol"-?/"$outfile" >/dev/null; then
        echo "File $outfile not found. Skipping."
        continue
    fi

    echo "Next file: $outfile"
    read -n1 -srp "Press any key..."
    vimdiff "$mol"-?/"$outfile"
    echo "Finished: $outfile"
done

