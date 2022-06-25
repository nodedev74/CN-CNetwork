###############################
### Author: nodedev74
### Created: 25-06-22
### Purpose: source CMakeLists
###############################

add_executable ("${PROJ_NAME}Compiler")

# compiler include directory

target_include_directories (
    "${PROJ_NAME}Compiler"
    PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../include/compiler")

# compiler source file

target_sources (
    "${PROJ_NAME}Compiler"
    PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/${PROJ_NAME}Compiler.cpp")


# setup properties

set_target_properties (
    "${PROJ_NAME}Compiler" PROPERTIES
    OUTPUT_NAME "cn"
    RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_CURRENT_SOURCE_DIR}/../bin")
