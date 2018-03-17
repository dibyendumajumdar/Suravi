# A Distribution of Lua / Ravi 5.3

This is currently work-in-progress distribution of Lua / Ravi 5.3.

## Goals

* This is *not* a comprehensive distribution / package manager for Lua such as [LuaRocks](https://luarocks.org/), [LuaDist](http://luadist.org/), or [LuaPlus](https://github.com/jjensen/luaplus51-all).
* The goal of this distribution is to create a *small* distro with carefully selected libraries, and ensure that the distro has been tested as a whole.
* There will separate binary downloads for Lua and Ravi 5.3
* Target platforms are Windows 10, Linux, and Mac OSX; 64-bit versions only
* The build system is CMake; and the aim is to keep each module as independent of other modules as possible; however some modules such as those from Torch have interdependencies.
* Create unified documentation and user guides; the whole distro should feel like a single product.

## Libraries 

The following libraries have been shortlisted for inclusion:

Library | Description | Status
--- | --- | ---
[LPegLabel](https://github.com/dibyendumajumdar/ravi-lpeglabel) | LPegLabel is a conservative extension of the LPeg library that provides an implementation of Parsing Expression Grammars (PEGs) with labeled failures. | Included  
[LuaFileSystem](https://github.com/dibyendumajumdar/ravi-filesystem) | LuaFileSystem is a Lua library developed to complement the set of functions related to file systems offered by the standard Lua distribution.  | Included
[LuaSocket](https://github.com/dibyendumajumdar/ravi-luasocket) | LuaSocket is a Lua extension library that is composed by two parts: a C core that provides support for the TCP and UDP transport layers, and a set of Lua modules that add support for functionality commonly needed by applications that deal with the Internet | Included 
[luv](https://github.com/luvit/luv) | libuv bindings for Lua. [libuv](https://github.com/libuv/libuv) is a multi-platform C library that provides support for asynchronous I/O based on event loops. | Planned
[lua-cjson](https://github.com/dibyendumajumdar/ravi-cjson) | Lua CJSON is a fast JSON encoding/parsing module for Lua | Included
[Torch7](https://github.com/dibyendumajumdar/ravi-torch7) | Torch is the main package in Torch7 where data structures for multi-dimensional tensors and mathematical operations over these are defined. Additionally, it provides many utilities for accessing files, serializing objects of arbitrary types and other useful utilities, including a Unit Testing framework | Included
[paths](https://github.com/dibyendumajumdar/ravi-torch-paths.git) | This package provides portable functions and variables to manipulate the file system; part of the Torch system. In future this may be moved inside the Torch package | Included
[luaossl](https://github.com/wahern/luaossl) | Most comprehensive OpenSSL module in the Lua universe | Planned
[cephes](https://github.com/deepmind/torch-cephes) | Provides and wraps the mathematical functions from the Cephes mathematical library, developed by Stephen L. Moshier | Planned
[luaffi](https://github.com/dibyendumajumdar/ravi-ffi) | Based on luaffi/luaffifb, this library provides a LuaJIT FFI interface for stock Lua 5.3 / Ravi | Included
[Penlight](https://github.com/stevedonovan/Penlight) | A set of pure Lua libraries focusing on input data handling (such as reading configuration files), functional programming (such as map, reduce, placeholder expressions,etc), and OS path management. Much of the functionality is inspired by the Python standard libraries | Planned

# Downloads

See the Releases page for available downloads.

# Build Instructions
The distro is still under development and is not ready for use yet. However, as support gets added for the libraries above, interim alpha-releases will be made available.

## Lua Version and Build Info
The version of Lua supported by this distro is 5.3. The following changes were made to stock Lua:

- The LuaJIT bit library is included
- The `LUA_COMPAT_FLOATSTRING` flag is enabled
- The Lua 5.1 and 5.2 compatibility flags are enabled

## Ravi Version and Build Info
The plan is to have LLVM enabled in the Ravi build, although currently this is not done.

## Notes on Building the Distribution
These are incomplete notes.

### External dependencies

* BLAS and LAPACK libraries are needed. 
* CMake is used as the build system

#### Installing BLAS / LAPACK on Ubuntu 16.x

For information on how to install and configure BLAS and LAPACK refer to information at [DebianScience Wiki](http://wiki.debian.org/DebianScience/LinearAlgebraLibraries).

Install OpenBLAS as follows:
```
  sudo apt-get install libopenblas-dev
```
Above should also install LAPACK.
Configure OpenBLAS to be the default BLAS as follows:
```
  sudo update-alternatives --config libblas.so.3
  sudo update-alternatives --config liblapack.so.3
```

#### Install BLAS and LAPACK on Windows 10

On Windows you can use pre-built libraries I provide in [Ravi Distro Dependencies](https://github.com/dibyendumajumdar/ravi-external-libs).

### Build process

This is manual at present.

* Decide on the home folder for the distro. The distro assumes the following locations for these, if you change these then you will need to amend the `FindLua.cmake` scripts in all the projects.
  - `c:/Software/lua53` or `c:/Software/ravi` on Windows
  - `~/lua53` or `~/ravi` on Unix systems

* Clone the respository and update the submodules.
```
git clone https://github.com/dibyendumajumdar/ravi-distro.git
cd ravi-distro
git submodule update --init --recursive
```

* Install Lua 5.3 or Ravi first. Ensure that `-DCMAKE_INSTALL_PREFIX` is defined as above. If you did not use the default location above then you will need to amend the `FindLua.cmake` scripts in all the projects.

For example, on Ubuntu, follow these steps to build and install Ravi.
But first, in case you don't have readline installed:
```
sudo apt-get install libreadline6 libreadline6-dev
```
Here we will build Ravi without LLVM:
```
cd ravi-distro/ravi
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=$HOME/ravi ..
make
make install
```  

* Build packages as follows. Note that you need to supply `-DUSE_LUA53=ON` to CMake if you are building for Lua 5.3. Default is to build for Ravi.

* For each project do following steps:

```
cd ravi-distro/<project-name>
mkdir build
cd build
cmake -DMAKE_INSTALL_PREFIX=$HOME/ravi ..
make install
```

* The projects should be built in following order:
  - ravi-ffi
  - ravi-torch-paths
  - ravi-torch7
  - followed by rest
  
### Setup environment

Once the distro is built, set environment variables appropriately for locating the distro. You will need to set:

- `PATH` on all platforms
- `LD_LIBRARY_PATH` on Linux 
- `DYLD_LIBRARY_PATH` on Mac OSX
- `LUA_PATH` and `LUA_CPATH` must be set.

#### On Linux

```
export RAVI_HOME=$HOME/ravi
export PATH=$RAVI_HOME/bin:$PATH
export LD_LIBRARY_PATH=$RAVI_HOME/lib:$LD_LIBRARY_PATH
export LUA_PATH="$RAVI_HOME/share/lua/5.3/?.lua;$RAVI_HOME/share/lua/5.3/?/init.lua;./?.lua;./?/init.lua"
export LUA_CPATH="$RAVI_HOME/lib/?.so;$RAVI_HOME/lib/lib?.so"
```

### Testing the distro

Each package in the distro must be tested.
