# A distribution of Lua / Ravi 5.3

This is currently work-in-progress distribution of Lua / Ravi 5.3.

## Goals

* This is not a general purpose distribution such as [LuaRocks](https://luarocks.org/), [LuaDist](http://luadist.org/), or [LuaPlus](https://github.com/jjensen/luaplus51-all).
* The goal of the distribution is to create a small distro with carefully selected libraries, and ensure that the distro is tested as a whole.
* There will separate binary downloads for Lua and Ravi 5.3
* Initially only x86-64 versions will be provided
* Target platforms are Windows 10, Linux, and Mac OSX 64-bit versions

## Libraries 

The following libraries have been shortlisted for inclusion:

Library | Description | Status
--- | --- | ---
[LPegLabel](https://github.com/sqmedeiros/lpeglabel/) | LPegLabel is a conservative extension of the LPeg library that provides an implementation of Parsing Expression Grammars (PEGs) with labeled failures. | Planned  
[LuaFileSystem](https://github.com/keplerproject/luafilesystem) | LuaFileSystem is a Lua library developed to complement the set of functions related to file systems offered by the standard Lua distribution.  | Planned
luasocket | xx | x 
libuv (Luvit) | xx | x
libcurl (wrapper tbc) | xx | x
lua-cjson | xx | x
torch7 | xx | x
luaossl | xx | x
cephes (wrapper tbc) | xx | x
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
