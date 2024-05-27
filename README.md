# spack-envs

```
git clone -c feature.manyFiles=true https://github.com/spack/spack.git ~/spack
git clone https://github.com/mochi-hpc/mochi-spack-packages.git ~/mochi-spack-packages
git clone https://github.com/thomas-bouvier/spack-envs.git ~/spack-envs
```

## Locally

Using Fedora Asahi Remix 39, make sure that dev tools are installed on the system:

```console
dnf group install "Development Tools"
dnf group install "Development Libraries"
dnf group install "C Development Tools and Libraries"
dnf install gcc-gfortran
```

Change the default configuration is needed:

```console
spack config --scope defaults edit config
install_tree: $spack/opt/spack
build_stage: $spack/var/spack/stage
```

Activate the environment and install it:

```console
spack env activate ~/Dev/spack-envs/local
spack install
```

### Last successful installations:

| Date | `spack-envs` commit | Spack commit |
|----------|----------|----------|
| 2024-01-15 | `` |  |

## Grid5000

```console
spack config --scope defaults edit config
install_tree: /my-spack/spack
build_stage: /tmp/spack-stage
```

## Argonne National Lab

Copy the relevant content of `.zshrc` into the frontend `.zshrc`.

### Polaris

Once you are logged in on a compute node, activate the environment and install it:

```console
use_polaris
spack env activate git/spack-envs/polaris
spack install
```

### Last successful installations:

| Date | `spack-envs` commit | `spack-packages` commit | Spack commit | Notes |
|----------|----------|----------|----------|----------|
| 2024-01-25 | `20e8e7645baf8d424aa128810c416da5a91280f3` | `ad655c13117b667a580af161788d9d85bef67d98` | `d079aaa08336d7805fc0361669e1d16b8d5de4bf` | Contents of `spack-packages/packages/py-continuum/package.py` copied into `spack/var/spack/repos/builtin/packages/py-continuum/package.py` |