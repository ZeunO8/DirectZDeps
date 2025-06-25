cmake_minimum_required(VERSION 3.2.1...4.8.8)

if(POLICY CMP0169)
	cmake_policy(SET CMP0169 OLD)
endif()

if(POLICY CMP0148)
	cmake_policy(SET CMP0148 NEW)
endif()

include(cmake/Version.cmake)

project(DirectZDeps VERSION ${DZD_V_MAJ}.${DZD_V_MIN}.${DZD_V_PAT}.${DZD_V_TWE})

set(FETCHCONTENT_QUIET OFF)

include(FetchContent)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -w")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -w")

message(STATUS "FetchContent: llvm-project")
FetchContent_Declare(llvm
	GIT_REPOSITORY https://github.com/llvm/llvm-project.git
	GIT_TAG main)
FetchContent_GetProperties(llvm)
if(NOT llvm_POPULATED)
    FetchContent_Populate(llvm)
endif()

set(LLVM_ENABLE_PROJECTS "clang;lld")
set(LLVM_ENABLE_ASSERTIONS ON)

add_subdirectory(${llvm_SOURCE_DIR}/llvm)