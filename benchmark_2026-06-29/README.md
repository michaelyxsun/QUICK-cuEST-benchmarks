All RHF

`uname -a` output:
```
Linux giddyup 6.12.0-124.52.2.el10_1.x86_64 #1 SMP PREEMPT_DYNAMIC Thu Apr 30 09:05:04 EDT 2026 x86_64 GNU/Linux
```

GCC version:
```
gcc (GCC) 14.3.1 20250617 (Red Hat 14.3.1-2)
```

GFortran version:
```
GNU Fortran (GCC) 14.3.1 20250617 (Red Hat 14.3.1-2)
```

Commit hash:
```
e99459ebe9c4103758b00ee4101aef97f2a8bc57
```

cuEST CMake Command:

```sh
cmake .. \
    -DCOMPILER=GNU \
    -DQUICK_USER_ARCH=blackwell2 \
    -DCUDA=TRUE \
    -DCUEST=TRUE \
    -DCUEST_DEBUG=FALSE \
    -DQUICK_DEBUG=FALSE \
    -DQUICK_DEBUG_TIME=TRUE \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=${QUICK_INSTALL}
```

Pure QUICK CMake Command:

```sh
cmake .. \
    -DCOMPILER=GNU \
    -DQUICK_USER_ARCH=blackwell2 \
    -DCUDA=TRUE \
    -DQUICK_DEBUG=FALSE \
    -DQUICK_DEBUG_TIME=TRUE \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=${QUICK_INSTALL}
```

[cuEST installation](https://developer.nvidia.com/cuest-downloads?target_os=Linux&target_arch=x86_64&Distribution=Agnostic&cuda_version=13):
Linux x86\_64 Tarball distribution for CUDA 13

Nobody else was connected

LLM prompt to generate CSV:

The following two files contain benchmark data from two quantum chemistry programs, QUICK and cuEST, all concatenated into a single file. Each section is separated by ascii art and many asteriscs. Generate a CSV according to the following conditions: 1. A column with the input molecule. You can find this by looking at the label "INPUT FILE" 2. A column with the basis set used. You can find this by looking at the label "BASIS SET". 3. Two columns with the total time of the QUICK and cuEST programs, found under the TIMING section and the label "TOTAL TIME". Use the precise number, do NOT use the job cpu time with one decimal. 4. Two columns with the total SCF time of the QUICK and cuEST programs, found under the TIMING section and the label "TOTAL SCF TIME". 5. A column with the speedup between cuEST and QUICK using total time, and another column using SCF time, with QUICK time divided by cuEST time. 6. Two columns with the relative and absolute error between the total energy calculations. Total energy can be found with the TOTAL ENERGY label. For absolute error, use the QUICK energy as the expected energy.
