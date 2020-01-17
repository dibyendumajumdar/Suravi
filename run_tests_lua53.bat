set RAVI_HOME=c:\Software\lua53
set PATH=%RAVI_HOME%\bin;%PATH%
set LUA_PATH=%RAVI_HOME%\share\lua\5.3\?.lua;%RAVI_HOME%\share\lua\5.3\?\init.lua;.\?.lua;.\?\init.lua
set LUA_CPATH=%RAVI_HOME%\bin\?.dll

cd ravi-cjson\tests
lua test.lua
cd ..\..

cd ravi-torch7\test
lua -ltorch -e "t=torch.test(); if t.errors[1] then os.exit(1) end" 
cd ..\..

cd ravi-torch7\test
lua -ltorch test_qr.lua 
cd ..\..

cd ravi-torch7\test
lua -ltorch test_aliasMultinomial.lua
cd ..\..

cd ravi-torch7\test
lua -ltorch test_half.lua
cd ..\..

cd ravi-torch7-nn
lua -ltorch -lnn -e "nn.test()"
cd ..

cd ravi-torch7-autograd\test
lua test.lua
cd ..\..

cd ravi-lpeglabel
lua test.lua
lua testlabel.lua
cd ..

cd ravi-penlight\tests
lua test-animal.lua
lua test-args.lua
lua test-array.lua
lua test-class.lua
lua test-compare-no-order.lua
lua test-compat.lua
lua test-comprehension.lua
lua test-config.lua
lua test-data.lua
lua test-date.lua
lua test-dir.lua
lua test-executeex.lua
lua test-fenv.lua
lua test-func.lua
lua test-import_into.lua
lua test-job-query.lua
lua test-klass.lua
lua test-lapp.lua
lua test-lexer.lua
lua test-list.lua
lua test-map.lua
lua test-move.lua
lua test-path.lua
lua test-pretty-number.lua
lua test-pretty.lua
lua test-pylib.lua
lua test-relpath.lua
lua test-seq.lua
lua test-set.lua
lua test-sip.lua
lua test-strict.lua
lua test-stringio.lua
lua test-stringx.lua
lua test-super.lua
lua test-tablex.lua
lua test-template.lua
lua test-text.lua
lua test-types.lua
lua test-tzone.lua
lua test-url.lua
lua test-utils.lua
lua test-vector.lua
lua test-xml.lua
cd ../..

cd ravi-libuv-luv
lua tests\run.lua
cd ..