cmake_minimum_required(VERSION 3.30)
project(modules_ex CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_COMPILER /usr/bin/gcc)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -lstdc++")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin" )

add_executable(modules_ex)

target_sources(modules_ex
    PUBLIC
    main.cpp
)
target_sources(modules_ex
  PUBLIC
    FILE_SET all_my_modules TYPE CXX_MODULES FILES
    mymodule.cpp
)
