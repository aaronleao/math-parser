cmake_minimum_required(VERSION 3.6)
include(ExternalProject)
project("Math Parser" DESCRIPTION "Simple math equation parser" LANGUAGES CXX)

include(cmake/set_target.cmake)
add_subdirectory("${CMAKE_SOURCE_DIR}/bin")
add_subdirectory("${CMAKE_SOURCE_DIR}/src")

