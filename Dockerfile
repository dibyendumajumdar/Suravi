FROM ubuntu:18.04

RUN set -x \
    && apt-get update \
    # Install dependencies for Ravi, Torch, luaossl
    # libgomp1 is OpenMP library needed by Torch
    && apt-get install -y libopenblas-dev libreadline-dev libuv1-dev libssl-dev libgomp1 \
    # Install build tools
    && apt-get install -y git wget zlib1g-dev cmake g++ \
    && mkdir -p ${HOME}/sources \
    && cd ${HOME}/sources \
    && git clone https://github.com/dibyendumajumdar/Suravi.git \
    && cd ${HOME}/sources/Suravi \
    && git submodule update --init --recursive \
    && sh build/linux_build.sh \
    && rm -rf ${HOME}/sources \
    && apt-get remove -y --purge git wget cmake g++ \
    && apt-get autoremove -y \
    && apt-get autoclean 

