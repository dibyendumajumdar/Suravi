<a name="paths.wellknowndirs.dok"></a>
## Directory Paths ##

These variables indicate the paths where the various Torch components are installed,
as well as other common environment variables like `$HOME`. 
It is not advisable to change their values!

<a name="paths.install_prefix"></a>
### paths.install_prefix ###

The base directory of the Torch installation.

<a name="paths.install_bin"></a>
### paths.install_bin ###

The name of the directory containing the executable programs.
Under Windows, this directory also contains 
the dynamically loadable libraries (`.dll`).

<a name="paths.install_man"></a>
### paths.install_man ###

The name of the directory containing the unix style manual pages.

<a name="paths.install_lib"></a>
### paths.install_lib ###

The name of the directory containing the object code libraries.
Under Unix, this directory also contains the dynamically
loadable libraries (`.so` or `.dylib`).

<a name="paths.install_share"></a>
### paths.install_share ###

The name of the directory containing processor independent data files,
such as lua code and other text files.

<a name="paths.install_include"></a>
### paths.install_include ###

The name of the directory containing the include files
for the various Torch libraries.

<a name="paths.install_hlp"></a>
### paths.install_hlp ###

The name of the directory containing the Torch help files.

<a name="paths.install_html"></a>
### paths.install_html ###

The name of the directory containing the HTML version
of the Torch help files.  These files are generated
when you enable the CMake option `HTML_DOC`.

<a name="paths.install_cmake"></a>
### paths.install_cmake ###

The name of the directory containing the CMake files
used by external Torch modules.

<a name="paths.install_lua_path"></a>
### paths.install_lua_path ###

The name of the directory containing the Lua packages.
This directory is used to build variable `package.path`.

<a name="paths.install_lua_cpath"></a>
### paths.install_lua_cpath ###

The name of the directory containing the Lua loadable binary modules.
This directory is used to build variable `package.cpath`.

<a name="paths.home"></a>
### paths.home ###

The home directory of the current user.

