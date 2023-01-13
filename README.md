# spack-envs

```
git clone -c feature.manyFiles=true https://github.com/spack/spack.git ~/spack
git clone https://github.com/mochi-hpc/mochi-spack-packages.git ~/mochi-spack-packages
git clone https://github.com/thomas-bouvier/spack-envs.git ~/spack-envs
```

## Locally

```
spack config --scope defaults edit config
install_tree: $spack/opt/spack
build_stage: $user_cache_path/stage
```

## G5k

```
spack config --scope defaults edit config
install_tree: /mnt/spack
build_stage: /tmp/spack-stage
```