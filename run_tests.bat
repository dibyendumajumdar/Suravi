set RAVI_HOME=c:\Software\ravi
set PATH=%RAVI_HOME%\bin;%PATH%
set LUA_PATH=%RAVI_HOME%\share\lua\5.3\?.lua;%RAVI_HOME%\share\lua\5.3\?\init.lua;.\?.lua;.\?\init.lua
set LUA_CPATH=%RAVI_HOME%\bin\?.dll

cd ravi\ravi-tests
ravi ravi_tests1.ravi
cd ..\..

cd ravi\lua-tests
ravi -e"_port=1" all.lua
cd ..\..

cd ravi-torch7\test
ravi -ltorch -e "t=torch.test(); if t.errors[1] then os.exit(1) end" 
cd ..\..

cd ravi-torch7\test
ravi -ltorch test_qr.lua 
cd ..\..

cd ravi-torch7\test
ravi -ltorch test_aliasMultinomial.lua
cd ..\..

cd ravi-torch7\test
ravi -ltorch test_half.lua
cd ..\..

cd ravi-torch7-nn
ravi -ltorch -lnn -e "nn.test()"
cd ..

cd ravi-torch7-autograd\test
ravi test.lua
cd ..\..
