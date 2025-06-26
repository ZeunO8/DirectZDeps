@echo off

cmake -G Ninja -B build-windows -D CMAKE_BUILD_TYPE=Release -D CMAKE_C_COMPILER=clang-cl -D CMAKE_CXX_COMPILER=clang-cl -DLLVM_ENABLE_PDB=OFF -DCMAKE_EXE_LINKER_FLAGS="/LIBPATH:\"C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.43.34808/lib/onecore/x64\" /defaultlib:msdia140.lib ole32.lib oleaut32.lib" -DLLVM_ENABLE_PDB=OFF -DLLVM_INCLUDE_TESTS=OFF -DLLVM_INCLUDE_EXAMPLES=OFF -DLLVM_ENABLE_DIA_SDK=OFF
cmake --build build-windows --config Release