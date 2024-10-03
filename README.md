# spack-envs

My reproducible Spack environments of some HPC platforms I use.

```
git clone -c feature.manyFiles=true https://github.com/spack/spack.git ~/spack
git clone https://github.com/mochi-hpc/mochi-spack-packages.git ~/mochi-spack-packages
git clone https://github.com/thomas-bouvier/spack-envs.git ~/spack-envs
```

## 🖥️ Locally

Using Fedora Asahi Remix 40, make sure that dev tools are installed on the system:

```console
dnf group install "Development Tools"
dnf group install "Development Libraries"
dnf group install "C Development Tools and Libraries"
dnf install gcc-gfortran
```

Change the default configuration if needed:

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

## 🇫🇷 Grid'5000

```console
spack config --scope defaults edit config
install_tree: /my-spack/spack
build_stage: /tmp/spack-stage
```

## 🇺🇸 Argonne National Lab

Copy the relevant content of `.zshrc` into the frontend `.zshrc`.

### Polaris

Change the default configuration if needed:

```console
spack config --scope defaults edit config
build_stage: /local/scratch/tbouvier/spack-stage
```

Compilations lasting for more than one hour should be performed in the `preemptable` queue.

```console
qsub -I -l select=1:ngpus=1:system=polaris -q preemptable -l walltime=04:00:00 -A VeloC -l filesystems=home
```

Once you are logged in on a compute node, activate the environment and install it:

```console
use_polaris
spack env activate git/spack-envs/polaris
spack install
```

### Last successful installations:

| Date | `spack-envs` commit | `spack-packages` commit | Spack commit | Notes |
|----------|----------|----------|----------|----------|
| 2024-09-28 | `44162d3` | `bbacb27` | `a8d02bd` | |
| 2024-01-25 | `20e8e76` | `ad655c1` | `d079aaa` | Contents of `spack-packages/packages/py-continuum/package.py` copied into `spack/var/spack/repos/builtin/packages/py-continuum/package.py` |
