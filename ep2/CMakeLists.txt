cmake_minimum_required(VERSION 3.6)
project(ep2)

set(CMAKE_CXX_STANDARD 11)
include_directories(Eigen)
set(SOURCE_FILES
    gradient.cpp
    gradient.h
    main.cpp
    main.h
    SOR.cpp
    SOR.h)

add_executable(ep2 ${SOURCE_FILES})