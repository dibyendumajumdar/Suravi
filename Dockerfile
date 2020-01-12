FROM ubuntu:18.04

RUN set -x \
    && apt-get update \
    && apt-get install -y libopenblas-dev libreadline-dev libuv1-dev libssl-dev \
    && apt-get clean

RUN set -x \
    && apt-get install -y git wget \
    && apt-get install -y zlib1g-dev \
    && apt-get install -y cmake g++ \
    && apt-get clean \
    && mkdir -p ${HOME}/sources \
    && cd ${HOME}/sources \
    && git clone https://github.com/dibyendumajumdar/Suravi.git \
    && cd ${HOME}/sources/Suravi \
    && git submodule update --init --recursive \
    && sh build/linux_build.sh \
    && rm -rf ${HOME}/sources \
    && apt-get remove -y --purge git wget cmake g++

