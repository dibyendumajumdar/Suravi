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
    && mkdir -p ${HOME}/Software \
    && mkdir -p ${HOME}/sources \
    && cd ${HOME}/sources \
    && git clone https://github.com/dibyendumajumdar/Suravi.git \
    && cd ${HOME}/sources/Suravi \
    && git submodule update --init --recursive \
    && sh build/linux_build.sh \
    && rm -rf ${HOME}/sources \
    && apt-get remove -y --purge git wget cmake g++ \
    && apt-get autoremove -y \
    && apt-get clean

ENV RAVI_HOME=${HOME}/ravi
ENV PATH="${RAVI_HOME}/bin:${PATH}"
ENV LD_LIBRARY_PATH="${RAVI_HOME}/lib:${LD_LIBRARY_PATH}"
ENV LUA_PATH="${RAVI_HOME}/share/lua/5.3/?.lua;${RAVI_HOME}/share/lua/5.3/?/init.lua;./?.lua;./?/init.lua"
ENV LUA_CPATH="${RAVI_HOME}/lib/?.so;${RAVI_HOME}/lib/lib?.so"

