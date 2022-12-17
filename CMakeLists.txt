cmake_minimum_required(VERSION 3.22.1)

project(cripto)

add_executable(${PROJECT_NAME} source/kript.cpp source/substitution.cpp source/galua_field.cpp source/affine.cpp source/affineRec.cpp source/tools.cpp)

SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ../)
