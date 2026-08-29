#!/bin/bash

# USAGE:
# ./nrun.sh basis.txt morphine.in 3 basedir ${SLURM_JOB_ID}

# REQUIRES VARIABLES:
# - $HOME
# - $QUICK_INSTALL

# OUTPUT DIR:
#     $quick-runs/run-${jobid}-gen

basisfile="$1"
file=$2
filename=$(basename "$file" .in)
n="$3"
basedir="$4"
jobid="$5"

outpfx="quickruns/${jobid}/${basedir}"

echo "-- OUTPUT PREFIX: $outpfx"

echo "Host: $(hostname), CUDA_VISIBLE_DEVICES=${CUDA_VISIBLE_DEVICES:-unset}"
nvidia-smi -L

function runsingle() {
    file_param="$1"
    echo "runsingle \$1=$file_param"
    filename_inner=$(basename "$file_param" .in)
    echo "filename_inner=$filename_inner"

    while IFS= read -r basis || [ -n "$basis" ]; do
        infile="${outpfx}/${filename_inner}_${basis}.in"
        echo "infile=$infile"

        if [[ -f "$infile" ]]; then
            echo "$infile Exists, Skipping."
            continue
        fi

        sed "s/@BS@/${basis}/" "$file_param" >"$infile"

        echo "Running $infile"
        echo '-- DEBUG: head -n1 output:'
        head -n 1 "$infile"
        $QUICK_INSTALL/bin/quick.cuda "$infile"
        mv debug.cuest "${outpfx}/debug.cuest.${filename_inner}_${basis}"
        echo "Finished $infile"
    done <"$basisfile"
}

mkdir -p "$outpfx"/input

for i in $(seq 1 "$n"); do
    echo "-- Running pass $i"
    runsingle $file
    mv "$outpfx"/*.in "$outpfx/input"
    mkdir "$outpfx/$filename-$i"
    mv "$outpfx"/*.out "$outpfx/$filename-$i"
done

