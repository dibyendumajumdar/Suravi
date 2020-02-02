# Suravi is a distribution of Lua 5.3 and Ravi

Suravi is a work-in-progress distribution of [Lua 5.3](www.lua.org) and [Ravi](https://github.com/dibyendumajumdar/ravi)

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
[lua-cjson](https://github.com/dibyendumajumdar/ravi-cjson) | Lua CJSON is a fast JSON encoding/parsing module for Lua | Included
[LuaFileSystem](https://github.com/dibyendumajumdar/ravi-filesystem) | LuaFileSystem is a Lua library developed to complement the set of functions related to file systems offered by the standard Lua distribution.  | Included
[lua-protobuf](https://github.com/dibyendumajumdar/ravi-protobuf) | Google protobuf support for Lua | Included
[LuaSocket](https://github.com/dibyendumajumdar/ravi-luasocket) | LuaSocket is a Lua extension library that is composed by two parts: a C core that provides support for the TCP and UDP transport layers, and a set of Lua modules that add support for functionality commonly needed by applications that deal with the Internet | Included 
[luaossl](https://github.com/dibyendumajumdar/ravi-luaossl) | Lua OpenSSL is a complete binding for openssl | WIP
[luv](https://github.com/dibyendumajumdar/ravi-libuv-luv) | libuv bindings for Lua. [libuv](https://github.com/libuv/libuv) is a multi-platform C library that provides support for asynchronous I/O based on event loops. | Included
[Moses](https://github.com/dibyendumajumdar/ravi-moses) | A Lua utility-belt library for functional programming | Included
[Penlight](https://github.com/dibyendumajumdar/ravi-penlight) | A set of pure Lua libraries focusing on input data handling (such as reading configuration files), functional programming (such as map, reduce, placeholder expressions,etc), and OS path management. Much of the functionality is inspired by the Python standard libraries | Included
[Torch7](https://github.com/dibyendumajumdar/ravi-torch7) | Torch is the main package in Torch7 where data structures for multi-dimensional tensors and mathematical operations over these are defined. Additionally, it provides many utilities for accessing files, serializing objects of arbitrary types and other useful utilities, including a Unit Testing framework | Included
[Torch7-Autograd](https://github.com/dibyendumajumdar/ravi-torch7-autograd) | Autograd automatically differentiates native Torch code | Included
[Torch-Cephes](https://github.com/deepmind/torch-cephes) | Provides and wraps the mathematical functions from the Cephes mathematical library, developed by Stephen L. Moshier | Broken 
[Torch7-NN](https://github.com/dibyendumajumdar/ravi-torch7-nn) | This package provides an easy and modular way to build and train simple or complex neural networks using Torch | Included
[Torch7-Optim](https://github.com/dibyendumajumdar/ravi-torch7-optim) | This package contains a number of optimization routines for  Torch | Included


# Downloads

See the Releases page for available downloads. 

# Installation

## Lua Version and Build Info
The version of Lua supported by this distro is 5.3.5. The following changes were made to stock Lua:

- The LuaJIT `bit` library is included
- The `LUA_COMPAT_FLOATSTRING` flag is enabled
- The Lua 5.1 and 5.2 compatibility flags are enabled
- The 'defer' statement has been added.
- The Lua parser has been enhanced to ignore Ravi type annotations.

## On Linux or Mac OSX

* Install under `$HOME/ravi` or `$HOME/lua53`. 
* Set environment variables as follows
```
   source $HOME/ravi/bin/ravi-env.sh
```
Replace `ravi` with `lua53` if you are using Lua.

Note that if you install at some other location then you need to change the paths in following files in the distro:

* `bin/ravi-env.sh` or `bin/lua-env.sh`
* `share/lua/5.3/torch/paths.lua`

## On Windows

* _Note: The latest build includes VC++ 2019 runtime distributable_
* Install under `c:\Software\ravi` or `c:\Software\lua53`
* Set environment variables as follows
```
c:\Software\ravi\bin\ravi-env.bat
```
Replace `ravi` with `lua53` if you are using Lua.

Note that if you install at some other location then you need to change the paths in following files in the distro:

* `bin\ravi-env.bat` or `bin\lua-env.bat`
* `share\lua\5.3\torch\paths.lua`

## Docker support

Please checkout the Dockerfiles in the repo - they should be self explanatory. 
