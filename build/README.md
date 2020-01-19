# Build instructions

* Very simple build scripts are in https://github.com/dibyendumajumdar/ravi-distro/tree/master/build.

### External dependencies

* BLAS and LAPACK libraries
* OpenSSL library
* libuv library
* CMake is used as the build system

#### Ubuntu

Have a look at the [Dockerfile](https://github.com/dibyendumajumdar/Suravi/blob/master/Dockerfile).

#### Windows 10

* Decide on the home folder for the distro. Edit the build script to relect your choice.
* Clone the respository and update the submodules.

```
git clone --recurse-submodules https://github.com/dibyendumajumdar/Suravi.git
```

* Run the appropriate build script.

### Setup environment

Set environment variables appropriately for locating the distro by invoking the provided `*env` script in the installation bin directory.


