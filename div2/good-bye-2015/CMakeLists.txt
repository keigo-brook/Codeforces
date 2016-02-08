cmake_minimum_required(VERSION 3.3)
project(good_bye_2015)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES c.cpp)
add_executable(good_bye_2015 ${SOURCE_FILES})