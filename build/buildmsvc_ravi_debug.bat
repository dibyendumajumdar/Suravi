cd ravi-external-libs
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Release --target INSTALL
cd ..\..

cd ravi
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-ffi
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-torch-paths
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-torch7-sys
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-torch7
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-torch7-xlua
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-moses
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-filesystem
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-torch7-nn
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-torch7-optim
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-torch7-autograd
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-torch-cephes
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-penlight
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-cjson
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-lpeglabel
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-luasocket
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..

cd ravi-libuv-luv
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi -G "Visual Studio 15 2017 Win64" ..
cmake --build . --config Debug --target INSTALL
cd ..\..
