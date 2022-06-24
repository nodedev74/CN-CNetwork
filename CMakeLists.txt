############################
### Author: nodedev74
### Created: 23-06-22
### Purpose: root CMakeLists
############################

cmake_minimum_required (VERSION 3.8)

# include cmake modules

include ("cmake/modules/version.cmake")
include ("cmake/modules/argument.cmake")

# VERSION components

set (MAJOR_VERSION 1)
set (MINOR_VERSION 0)
set (RELEASE_NUMBER 0)

# project NAME, VERSION

set (PROJ_NAME "CN")
set (PROJ_VERSION 
    "${MAJOR_VERSION}.${MINOR_VERSION}.${RELEASE_NUMBER}")

# define VERSION in C-Header

update_version(
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake/version.h.in"
    "${CMAKE_CURRENT_SOURCE_DIR}/include/cn/version.h"
)

project (${PROJ_NAME} VERSION ${PROJ_VERSION})