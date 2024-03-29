cd ravi-external-libs
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

set PATH=c:\Software\ravi\bin;%PATH%

cd ravi
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-torch-paths
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-torch7-sys
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-torch7
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-torch7-xlua
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-moses
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-filesystem
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-simplex
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-torch7-nn
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-torch7-optim
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-torch7-autograd
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-torch-cephes
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-penlight
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-cjson
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-lpeglabel
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-luasocket
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-libuv-luv
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

cd ravi-protobuf
rmdir build /s /q
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=c:/Software/ravi ..
if %errorlevel% neq 0 exit /b %errorlevel%
cmake --build . --config Release --target INSTALL
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..\..

