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
96006bde5da3a8e18008c25867770e399bed5f87
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
