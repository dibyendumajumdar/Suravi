#!/bin/sh

if [ "$#" -ne 1 ] ; then
    echo "Supply the installation path"
	exit 1
fi

export RAVI_HOME=$1
export PATH="$RAVI_HOME/bin:$PATH"
export LD_LIBRARY_PATH="$RAVI_HOME/lib:$LD_LIBRARY_PATH"
export LUA_PATH="$RAVI_HOME/share/lua/5.3/?.lua;$RAVI_HOME/share/lua/5.3/?/init.lua;./?.lua;./?/init.lua"
export LUA_CPATH="$RAVI_HOME/lib/?.so;$RAVI_HOME/lib/lib?.so"

for dir in ravi ravi-cjson ravi-filesystem ravi-lpeglabel ravi-luasocket ravi-moses ravi-penlight ravi-simplex ravi-torch-paths ravi-torch7-sys ravi-torch7 ravi-torch7-xlua ravi-torch7-nn ravi-torch7-optim ravi-torch7-autograd ravi-torch-cephes ravi-libuv-luv ravi-protobuf ravi-luaossl; do
	echo "Building $dir"
	cd $dir && rm -rf build && mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$RAVI_HOME .. && make install && cd ../..
done
