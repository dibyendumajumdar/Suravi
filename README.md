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

- lpeg
- luafilesystem
- luasocket
- libuv (Luvit)
- libcurl (wrapper tbc)
- lua-cjson
- torch7
- luaossl
- cephes (wrapper tbc)
- [ravi-ffi](https://github.com/dibyendumajumdar/ravi-ffi) based on luaffi/luaffifb (port of LuaJIT FFI interface)

