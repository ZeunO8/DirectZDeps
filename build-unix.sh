#!/bin/bash

cmake -G Ninja -B build-unix -D CMAKE_BUILD_TYPE=Release -D CMAKE_C_COMPILER=clang -D CMAKE_CXX_COMPILER=clang++ -DLLVM_INCLUDE_TESTS=OFF -DLLVM_INCLUDE_EXAMPLES=OFF -DLLVM_ENABLE_DIA_SDK=OFF -D CMAKE_INSTALL_PREFIX=install-unix
cmake --build build-unix --config Release
