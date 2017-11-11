cmake_minimum_required(VERSION 3.6)
project(numerical)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp main.h coordinates/Coord.cpp coordinates/Coord.h coordinates/CoordList.cpp coordinates/CoordList.h numericalAlgorithms/SplineDiff.cpp numericalAlgorithms/SplineDiff.h numericalAlgorithms/spline.cpp)
add_executable(numerical ${SOURCE_FILES})