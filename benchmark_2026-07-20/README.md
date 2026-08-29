## Hardware Stack

TACC Stampede3 H100 nodes

## Software Stack

- QUICK-cuEST `5174730d238df2e0ea3d28075a3297cfa40b3c64`
- GCC 11.5.0
- CUDA 13.1

## Notes

- Fit basis is def2-universal-jkfit for all runs
- $K$ And $V_\text{xc}$ compute buffer size is 2 GB.
- GPU out of memory for taxol with def2-TZVPD, DF integral plan init requires 111.60 GB of persistent memory and 32.10 GB of temporary memory

### ChatGPT Prompt:

> Attached is a file with the last 50 lines of benchmark outputs of a quantum chemistry software all in one file, using morphine with basis sets: 3-21G, 6-31G, 6-31G*, 6-31G**, 6-31+G**, def2-SV(P), def2-SVP, def2-TZVP, def2-TZVPP, and def2-TZVPD. The start of Each molecule and basis set pair is run 3 times. Generate a CSV with the following columns: "cuEST 2e run 1", "cuEST 2e run 2", "cuEST 2e run 3" with the 2-electron time labeled "TOTAL 2e TIME" in the output file. Then create columns "cuEST Exc run 1", "cuEST Exc run 2", "cuEST Exc run 3" with the Exc time labeled "TOTAL EXC TIME". Then columns with the total time labeled "TOTAL TIME". Do the the total energy labeled "TOTAL ENERGY". Then do the peak and total device memory footprint, labeled "Peak Device Footprint" and "Total Device Footprint". These two can only have one column since it should be the same between runs 1 to 3. Give the values in gigabytes. All other columns should be separated by each run from 1 to 3. Output rows using the order of basis sets I told you. Write your numbers all in decimal, do not use scientific notation. Please make sure the numbers and format is correct.
