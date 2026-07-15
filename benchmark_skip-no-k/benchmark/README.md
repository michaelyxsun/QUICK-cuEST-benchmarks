## Description

Molecules used:

- morphine
- taxol

Basis sets used:

- 3-21G
- 6-31G
- 6-31G*
- 6-31G**
- 6-31+G**
- def2-SV(P)
- def2-SVP
- def2-TZVP
- def2-TZVPP (morphine only)
- def2-TZVPD (morphine only)

### File structure

- `input/`: input files
- `output/original/`: output files for original code, separated by trial
- `output/modified/`: output files for modified code, separated by trial
- `results.csv`: summary of runtimes

## Specs

`uname -a` output:

```
Linux giddyup 6.12.0-124.52.2.el10_1.x86_64 #1 SMP PREEMPT_DYNAMIC Thu Apr 30 09:05:04 EDT 2026 x86_64 GNU/Linux
```

- CUDA toolkit version: `13.2.51`
- GCC version: `14.3.1`
- GFortran version: `14.3.1`

CMake command:

```cmake
cmake .. \
    -DCOMPILER=GNU \
    -DQUICK_USER_ARCH=blackwell2 \
    -DCUDA=TRUE \
    -DENABLEF=TRUE \
    -DQUICK_DEBUG=FALSE \
    -DQUICK_DEBUG_TIME=FALSE \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=install/prefix
```

Commit hash of unmodified code:

```
bc80f985f7141f69a344aa4ca46f3078fe334864
```
