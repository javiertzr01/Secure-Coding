cmake_minimum_required(VERSION 3.4.3)
project("Z3-Example")

if (DEFINED LLVM_DIR)
    set(ENV{LLVM_DIR} "${LLVM_DIR}")
endif()
if (DEFINED ENV{LLVM_DIR})
    # We need to match the build environment for LLVM:
    # In particular, we need C++11 and the -fno-rtti flag
    set(CMAKE_CXX_STANDARD 14)
    if(CMAKE_BUILD_TYPE MATCHES "Debug")
        set(CMAKE_CXX_FLAGS "-fPIC -std=gnu++14 -O0 -fno-rtti -Wno-deprecated")
    else()
        set(CMAKE_CXX_FLAGS "-fPIC -std=gnu++14 -O3 -fno-rtti -Wno-deprecated")
    endif()
    set(CMAKE_C_FLAGS "-fPIC")

    find_package(LLVM REQUIRED CONFIG)

    list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
    include(AddLLVM)

    add_definitions(${LLVM_DEFINITIONS})
    include_directories(${LLVM_INCLUDE_DIRS})

else()
    message(FATAL_ERROR "\
WARNING: The LLVM_DIR var was not set (required for an out-of-source build)!\n\
Please set this to environment variable to point to the LLVM build directory\
(e.g. on linux: export LLVM_DIR=/path/to/llvm/build/dir)")
endif()

if (EXISTS "${SVF_DIR}")
else()
    set(SVF_DIR $ENV{SVF_DIR})
    if(EXISTS "${SVF_DIR}")
    else()
        message(FATAL_ERROR "\
WARNING: The SVF_DIR var was not set (required for an out-of-source build)!\n\
Please set this to environment variable to point to the SVF_DIR directory or set this variable to cmake configuration\n
(e.g. on linux: export SVF_DIR=/path/to/SVF/dir) \n or \n \n(make the project via: cmake -DSVF_DIR=your_path_to_SVF) ")
    endif()
endif()

if(CMAKE_BUILD_TYPE MATCHES "Debug")
    MESSAGE (STATUS "building SVF in debug mode")
    if (EXISTS "${SVF_DIR}/Debug-build")
        set(SVF_BIN "${SVF_DIR}/Debug-build")
    else()
        set(SVF_BIN "${SVF_DIR}/Release-build")
    endif()
else()
    MESSAGE (STATUS "building SVF in release mode")
    set(SVF_BIN "${SVF_DIR}/Release-build")
endif()
set(SVF_HEADER "${SVF_DIR}/svf/include")
set(SVF_LLVM_HEADER "${SVF_DIR}/svf-llvm/include")
set(SVF_LIB "${SVF_BIN}/svf-llvm/libSvfLLVM.a")
set(SVF_BIN_HEADER "${SVF_BIN}/include")
include_directories(${SVF_HEADER}
                    ${SVF_LLVM_HEADER}
                    ${SVF_BIN_HEADER})

# set z3 env
if (DEFINED Z3_DIR)
    set(ENV{Z3_DIR} "${Z3_DIR}")
endif()
if(CMAKE_BUILD_TYPE MATCHES "Debug")
    if(EXISTS "${Z3_DIR}/src")
        find_package(Z3
                REQUIRED
                CONFIG
                NO_DEFAULT_PATH
                )
        include_directories(${Z3_CXX_INCLUDE_DIRS})
    else()
        find_library(Z3_LIBRARIES NAMES libz3.a
                HINTS $ENV{Z3_DIR}
                PATH_SUFFIXES lib bin)
        find_path(Z3_INCLUDES NAMES z3++.h
                HINTS $ENV{Z3_DIR}
                PATH_SUFFIXES include z3)
        if(NOT Z3_LIBRARIES OR NOT Z3_INCLUDES)
            message(FATAL_ERROR "Z3 not found!")
        endif()
        include_directories(${Z3_INCLUDES})
        LINK_DIRECTORIES(${Z3_DIR}/bin)
    endif()
else()
    find_library(Z3_LIBRARIES NAMES libz3.a
            HINTS $ENV{Z3_DIR}
            PATH_SUFFIXES lib bin)
    find_path(Z3_INCLUDES NAMES z3++.h
            HINTS $ENV{Z3_DIR}
            PATH_SUFFIXES include z3)
    if(NOT Z3_LIBRARIES OR NOT Z3_INCLUDES)
        message(FATAL_ERROR "Z3 not found!")
    endif()
    include_directories(${Z3_INCLUDES})
    LINK_DIRECTORIES(${Z3_DIR}/bin)
endif()

add_subdirectory(HelloWorld)
add_subdirectory(SVFIR)
add_subdirectory(Assignment-1)
add_subdirectory(Assignment-2)
add_subdirectory(Assignment-3)
add_subdirectory(Assignment-4)

# checks if the test-suite is present, if it is then build bc files and add testing to cmake build
if(EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/Test-Suite")
    include_directories(${CMAKE_CURRENT_SOURCE_DIR}/Test-Suite)
    enable_testing()
    add_subdirectory(Test-Suite)
    include(CTest)
endif()
