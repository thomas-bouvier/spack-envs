if [ -f /etc/zshrc ]; then
    . /etc/zshrc
fi

function use_build_cooley {
    # other ALCF machines
    if hostname | grep cooley &>/dev/null || hostname | grep cc &> /dev/null; then
        echo "loading cooley spack"
       soft add +gcc-8.2.0
       soft add +cmake-3.20.4
       soft add +cuda-11.0.2
       soft add +mvapich2
       source ${HOME}/git/spack-cooley/share/spack/setup-env.sh
       export clustername=cooley
    fi  
    export SPACK_USER_CONFIG_PATH="$HOME/.spack/$clustername"
    export SPACK_USER_CACHE_PATH="$SPACK_USER_CONFIG_PATH"
}

function use_build_thetagpu {
    # other ALCF machines
    if hostname | grep thetagpu &>/dev/null; then
       echo "loading thetagpu spack"
       source ${HOME}/git/spack-thetagpu/share/spack/setup-env.sh
       export CRAYPE_LINK_TYPE=dynamic
       export clustername=thetagpu
       export HTTP_PROXY=http://theta-proxy.tmi.alcf.anl.gov:3128
       export HTTPS_PROXY=http://theta-proxy.tmi.alcf.anl.gov:3128
       export http_proxy=http://theta-proxy.tmi.alcf.anl.gov:3128
       export https_proxy=http://theta-proxy.tmi.alcf.anl.gov:3128
     fi
    export SPACK_USER_CONFIG_PATH="$HOME/.spack/$clustername"
    export SPACK_USER_CACHE_PATH="$SPACK_USER_CONFIG_PATH"
}