# spack-envs

```
git clone -c feature.manyFiles=true https://github.com/spack/spack.git ~/spack
git clone https://github.com/mochi-hpc/mochi-spack-packages.git ~/mochi-spack-packages
git clone https://github.com/thomas-bouvier/spack-envs.git ~/spack-envs
```

## Locally

```console
spack config --scope defaults edit config
install_tree: $spack/opt/spack
build_stage: $spack/var/spack/stage

spack env activate ~/Dev/spack-envs/local
spack install
```

## G5k

```console
spack config --scope defaults edit config
install_tree: /my-spack/spack
build_stage: /tmp/spack-stage
```

## ANL

### Cooley

Before using Spack to compile stuff on Cooley, we recommend to run `use_build_cooley` to get access to newer gcc, cmake, and mvapich versions.

### ThetaGPU