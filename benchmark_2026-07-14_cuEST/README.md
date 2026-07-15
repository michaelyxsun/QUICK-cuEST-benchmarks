## Description

Molecules used:

- morphine
- taxol

Basis sets used for morphine:

- 3-21G
- 6-31G
- 6-31G*
- 6-31G**
- 6-31+G**
- def2-SV(P)
- def2-SVP
- def2-TZVP
- def2-TZVPP

Basis sets used for taxol:

- 3-21G
- 6-31G
- 6-31G*

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
    -DCUEST=TRUE
    -DENABLEF=TRUE \
    -DQUICK_DEBUG=FALSE \
    -DQUICK_DEBUG_TIME=FALSE \
    -DCUEST_DEBUG=FALSE \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=install/prefix
```

Commit hash:

```
59f843f18b74ce77d73ed1771b6179595ce2c563
```

### ChatGPT Prompt

> Attached is a file with benchmark outputs of a quantum chemistry software using morphine and taxol with basis sets: 3-21G, 6-31G, 6-31G*, 6-31G**, 6-31+G**, def2-SV(P), def2-SVP, def2-TZVP, and def2-TZVPP. Taxol only has up to 6-31G*. Each molecule and basis set pair is run 3 times. Generate a CSV with the following columns: "cuEST 2e run 1", "cuEST 2e run 2", "cuEST 2e run 3" with the 2-electron time labeled "TOTAL 2e TIME" in the output file. Then create columns "cuEST Exc run 1", "cuEST Exc run 2", "cuEST Exc run 3" with the Exc time labeled "TOTAL EXC TIME". Then columns with the total time labeled "TOTAL TIME". Finally do the peak and total device footprint, and the total energy labeled "TOTAL ENERGY". Output rows first for morphine then for taxol, then use the order of basis sets I told you. Write your numbers all in decimal, do not use scientific notation. Please make sure the numbers and format is correct.
