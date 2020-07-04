FROM ubuntu:20.04

RUN set -x \
    && apt-get update \
    # install tzdata to avoid interaction?
    && apt-get install -y tzdata \
    # Install dependencies for Ravi, Torch, luaossl
    # libgomp1 is OpenMP library needed by Torch
    && apt-get install -y libopenblas-dev libreadline-dev libuv1-dev libssl-dev libgomp1 \
    # Install build tools
    && apt-get install -y git wget zlib1g-dev cmake g++ \
    && mkdir -p ${HOME}/sources \
    && cd ${HOME}/sources \
    && git clone --recurse-submodules https://github.com/dibyendumajumdar/Suravi.git \
    && cd ${HOME}/sources/Suravi \
    && mkdir /Software \
    && sh build/linux_build.sh /Software/ravi \
    && rm -rf ${HOME}/sources \
    && apt-get remove -y --purge git wget cmake g++ \
    && apt-get autoremove -y \
    && apt-get autoclean 

ENV PATH /Software/ravi/bin:${PATH}
ENV LD_LIBRARY_PATH /Software/ravi/lib:${LD_LIBRARY_PATH}
ENV LUA_PATH /Software/ravi/share/lua/5.3/?.lua;/Software/ravi/share/lua/5.3/?/init.lua;./?.lua;./?/init.lua
ENV LUA_CPATH /Software/ravi/lib/?.so;/Software/ravi/lib/lib?.so

WORKDIR /Software/ravi