# set -x
. ~/Software/ravi/bin/ravi-env.sh

cd ravi-cjson/tests 
ravi test.lua 
cd -

cd ravi/tests/language
ravi ravi_tests1.ravi
cd -

cd ravi/tests/lua53
ravi -e"_port=1" all.lua
cd -

cd ravi-torch7/test
ravi -ltorch -e "t=torch.test(); if t.errors[1] then os.exit(1) end"
cd -

cd ravi-torch7/test
ravi -ltorch test_qr.lua
cd -

cd ravi-torch7/test
ravi -ltorch test_aliasMultinomial.lua
cd -

cd ravi-torch7/test
ravi -ltorch test_half.lua
cd -

cd ravi-torch7-nn
ravi -ltorch -lnn -e "nn.test()"
cd -

cd ravi-torch7-autograd/test
ravi test.lua
cd -

cd ravi-lpeglabel
ravi test.lua
ravi testlabel.lua
cd -

cd ravi-penlight/tests
ravi test-animal.lua
ravi test-args.lua
ravi test-array.lua
ravi test-class.lua
ravi test-compare-no-order.lua
ravi test-compat.lua
ravi test-comprehension.lua
ravi test-config.lua
ravi test-data.lua
ravi test-date.lua
ravi test-dir.lua
ravi test-executeex.lua
ravi test-fenv.lua
ravi test-func.lua
ravi test-import_into.lua
ravi test-job-query.lua
ravi test-klass.lua
ravi test-lapp.lua
ravi test-lexer.lua
ravi test-list.lua
ravi test-map.lua
ravi test-move.lua
ravi test-path.lua
ravi test-pretty-number.lua
ravi test-pretty.lua
ravi test-pylib.lua
ravi test-relpath.lua
ravi test-seq.lua
ravi test-set.lua
ravi test-sip.lua
ravi test-strict.lua
ravi test-stringio.lua
ravi test-stringx.lua
ravi test-super.lua
ravi test-tablex.lua
ravi test-template.lua
ravi test-text.lua
ravi test-types.lua
ravi test-tzone.lua
ravi test-url.lua
ravi test-utils.lua
ravi test-vector.lua
ravi test-xml.lua
cd -

cd ravi-libuv-luv
ravi tests/run.lua
cd -
