Comparison benchmark for skipping adds for K if exchange fraction is zero (i.e. with BLYP functional).

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

Commit hash for original code:

```
bc80f985f7141f69a344aa4ca46f3078fe334864
```

CMake Command:

```sh
cmake .. \
    -DCOMPILER=GNU \
    -DQUICK_USER_ARCH=blackwell2 \
    -DCUDA=TRUE \
    -DQUICK_DEBUG=FALSE \
    -DQUICK_DEBUG_TIME=FALSE \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=${QUICK_INSTALL}
```

**Note**: modified code was compiled with `-DENABLEF`, but benchmarks were not run with any F functions because of convergence issues.

[cuEST installation](https://developer.nvidia.com/cuest-downloads?target_os=Linux&target_arch=x86_64&Distribution=Agnostic&cuda_version=13):
Linux x86\_64 Tarball distribution for CUDA 13
