# A distribution of Lua / Ravi 5.3

This is currently work-in-progress distribution of Lua / Ravi 5.3.

## Goals

* This is *not* a comprehensive distribution / package manager for Lua such as [LuaRocks](https://luarocks.org/), [LuaDist](http://luadist.org/), or [LuaPlus](https://github.com/jjensen/luaplus51-all).
* The goal of this distribution is to create a *small* distro with carefully selected libraries, and ensure that the distro has been tested as a whole.
* There will separate binary downloads for Lua and Ravi 5.3
* Target platforms are Windows 10, Linux, and Mac OSX; 64-bit versions only

## Libraries 

The following libraries have been shortlisted for inclusion:

Library | Description | Status
--- | --- | ---
[LPegLabel](https://github.com/sqmedeiros/lpeglabel/) | LPegLabel is a conservative extension of the LPeg library that provides an implementation of Parsing Expression Grammars (PEGs) with labeled failures. | Planned  
[LuaFileSystem](https://github.com/keplerproject/luafilesystem) | LuaFileSystem is a Lua library developed to complement the set of functions related to file systems offered by the standard Lua distribution.  | Planned
[LuaSocket](https://github.com/diegonehab/luasocket) | LuaSocket is a Lua extension library that is composed by two parts: a C core that provides support for the TCP and UDP transport layers, and a set of Lua modules that add support for functionality commonly needed by applications that deal with the Internet | Planned 
[luv](https://github.com/luvit/luv) | libuv bindings for Lua. [libuv](https://github.com/libuv/libuv) is a multi-platform C library that provides support for asynchronous I/O based on event loops. | Planned
libcurl (wrapper tbc) | xx | Planned
[lua-cjson](https://github.com/mpx/lua-cjson) | Lua CJSON is a fast JSON encoding/parsing module for Lua  | Planned
[Torch](https://github.com/dibyendumajumdar/ravi-torch7) | Torch is the main package in Torch7 where data structures for multi-dimensional tensors and mathematical operations over these are defined. Additionally, it provides many utilities for accessing files, serializing objects of arbitrary types and other useful utilities | Included
[paths](https://github.com/dibyendumajumdar/ravi-torch-paths.git) | This package provides portable functions and variables to manipulate the file system; part of the Torch system. In future this may be moved inside the Torch package | Included
[luaossl](https://github.com/wahern/luaossl) | Most comprehensive OpenSSL module in the Lua universe | Planned
[cephes](https://github.com/deepmind/torch-cephes) | Provides and wraps the mathematical functions from the Cephes mathematical library, developed by Stephen L. Moshier | Planned
[ravi-ffi](https://github.com/dibyendumajumdar/ravi-ffi) | Based on luaffi/luaffifb, this library provides a LuaJIT FFI interface for stock Lua 5.3 / Ravi | Included

## Instructions

The distro is still under development and is not ready for use yet. However, as support gets added for the libraries above, interim alpha-releases will be made available.

## Lua Version and Build Info

The version of Lua included in this distro is 5.3. The following changes were made to stock Lua:

- The LuaJIT bit library is included
- The `LUA_COMPAT_FLOATSTRING` flag is enabled
- The Lua 5.1 and 5.2 compatibility flags are enabled

## Ravi Version and Build Info

The plan is to have LLVM enabled in the Ravi build.

## Notes on Building the Distribution

These are incomplete notes.

#### External dependencies

* BLAS and LAPACK libraries are needed. 
* CMake is used as the build system

#### Build process

This is manual at present.

* Ensure CMake is installed

* Install BLAS and LAPACK.
  - On Windows you can use [VCPKG](https://github.com/Microsoft/vcpkg). On my system the `vcpkg list` command displays:
  
```
vcpkg list
clapack:x64-windows                   3.2.1-1          CLAPACK (f2c'ed version of LAPACK)
clapack:x64-windows-static            3.2.1-1          CLAPACK (f2c'ed version of LAPACK)
openblas:x64-windows                  0.2.20-2         OpenBLAS is an optimized BLAS library based on G...
openblas:x64-windows-static           0.2.20-2         OpenBLAS is an optimized BLAS library based on G...
```

* Decide on the home folder for the distro. The distro assumes the following locations for these, if you change these then you will need to amend the `FindLua.cmake` scripts in all the projects.
  - c:/Software/lua53 or c:/Software/ravi on Windows
  - ~/lua53 or ~/ravi on Unix systems

* Install Lua 5.3 or Ravi first. Ensure that `-DCMAKE_INSTALL_PREFIX` is defined as above. If you did not use the default location aboce then you will need to amend the `FindLua.cmake` scripts in all the projects.
  
* Build packages in following order. Note that you need to supply `-DUSE_LUA53=ON` to CMake if you are building for Lua 5.3. Default is to build for Ravi
  - ravi-ffi
  - ravi-torch-paths
  - ravi-torch7
  
#### Testing the Distro

Once the distro is built, set environment variables appropriately for locating the distro. You will need to set:

- PATH on all platforms
- LD_LIBRARY_PATH on Linux 
- DYLD_LIBRARY_PATH on Mac OSX

Each package in the distro must be tested.
