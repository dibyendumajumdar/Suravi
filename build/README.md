# Build instructions

* Very simple build scripts are in https://github.com/dibyendumajumdar/ravi-distro/tree/master/build.
* If you wish to manually build then below are some details.

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

On Windows you can use pre-built libraries I provide in ravi-external-libs project.

### Build process

This is manual at present.

* Decide on the home folder for the distro. The distro assumes the following locations for these, if you change these then you will need to amend the `FindLua.cmake` scripts in all the projects.
  - `c:/Software/lua53` or `c:/Software/ravi` on Windows
  - `~/lua53` or `~/ravi` on Unix systems

* Clone the respository and update the submodules.
```
git clone https://github.com/dibyendumajumdar/Suravi.git
cd Suravi
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

* Install the ravi-external-libs project if you are on Windows. You can also install this project on Linux or Mac OSX; on
those platforms it simply installs an environment script.

### Setup environment

Set environment variables appropriately for locating the distro. You will need to set:

- `PATH` on all platforms
- `LD_LIBRARY_PATH` on Linux 
- `DYLD_LIBRARY_PATH` on Mac OSX
- `LUA_PATH` and `LUA_CPATH` on all Platforms

In the examples below, replace 'ravi' with 'lua53' for Lua based installation.

Note that the ravi-external-libs project installs 'ravienv.sh' and 'luaenv.sh' scripts that essentially do below.



