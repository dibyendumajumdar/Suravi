# set -x
source ~/ravi/bin/ravienv.sh

cd ravi/ravi-tests && ravi ravi_tests1.ravi && cd -
cd ravi/lua-tests && ravi -e"_port=1" all.lua && cd -
cd ravi-torch7/test && ravi -ltorch -e "t=torch.test(); if t.errors[1] then os.exit(1) end" && cd -
cd ravi-torch7/test && ravi -ltorch test_qr.lua && cd -
cd ravi-torch7/test && ravi -ltorch test_aliasMultinomial.lua && cd -
cd ravi-torch7/test && ravi -ltorch test_half.lua && cd -
cd ravi-torch7-nn && ravi -ltorch -lnn -e "nn.test()" && cd -
cd ravi-torch7-autograd/test && ravi test.lua && cd -