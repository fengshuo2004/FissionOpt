@ECHO OFF
:: Make sure emscripten is installed then run this script to build
em++ -v --bind -sMODULARIZE -sEXPORT_NAME=FissionOpt -sALLOW_MEMORY_GROWTH ^
-o FissionOpt.js -std=c++17 -flto -O3 ^
Bindings.cpp ../Fission.cpp ../OptFission.cpp ../FissionNet.cpp ^
../OverhaulFission.cpp ../OptOverhaulFission.cpp ../OverhaulFissionNet.cpp -I..
