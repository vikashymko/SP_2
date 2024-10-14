cmake_minimum_required(VERSION 3.10)
project(calc)

set(CMAKE_CXX_STANDARD 11)
include_directories(.)

add_library(calculator STATIC calculator.cpp)
add_executable(calc main.cpp)

target_link_libraries(calc calculator)