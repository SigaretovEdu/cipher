cmake_minimum_required(VERSION 3.22.1)

project(aff_analysis)
SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ../)
add_executable(${PROJECT_NAME} aff_analysis.cpp tools.cpp galua_field.cpp)
