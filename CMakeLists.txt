cmake_minimum_required (VERSION 3.28)
project (satcmm)

# setup for correctly linking to shared libraries
SET(CMAKE_SKIP_BUILD_RPATH  FALSE)
SET(CMAKE_BUILD_WITH_INSTALL_RPATH FALSE)
SET(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")
SET(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)
SET(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib")

# find Z3
find_library(Z3_LIB
        NAMES libz3.a libz3.so libz3.dylib
        DOC "Directory of the Z3 library")
FIND_PATH(Z3_H
        z3.h
        DOC "Path to main Z3 header file z3.h"
        )
IF (Z3_LIB AND Z3_H)
    message(STATUS "Found Z3: ${Z3_LIB} and ${Z3_H}")
    add_definitions(-DUSE_Z3)
ELSE (Z3_LIB AND Z3_H)
    message(STATUS "Could not find Z3 (${Z3_LIB} and ${Z3_H}). Please specify path by including it in CMAKE_PREFIX_PATH (-DCMAKE_PREFIX_PATH=...)")
ENDIF (Z3_LIB AND Z3_H)

# find CaDiCaL
find_library(CADICAL_LIB
        NAMES libcadical.so libcadical.a libcadical.dylib
        DOC "Directory of the CaDiCaL library")
FIND_PATH(CADICAL_H
        cadical.hpp
        DOC "Path to main CaDiCaL header file cadical.hpp"
        )
IF (CADICAL_LIB AND CADICAL_H)
    message(STATUS "Found CaDiCaL: ${CADICAL_LIB} and ${CADICAL_H}")
    add_definitions(-DUSE_CADICAL)
ELSE (CADICAL_LIB AND CADICAL_H)
    message(STATUS "Could not find CaDiCaL (${CADICAL_LIB} and ${CADICAL_H}). Please specify path by including it in CMAKE_PREFIX_PATH (-DCMAKE_PREFIX_PATH=...)")
ENDIF (CADICAL_LIB AND CADICAL_H)

# find kissat
find_library(KISSAT_LIB
        NAMES libkissatpp.so libkissatpp.a libkissatpp.dylib
        DOC "Directory of the kissat library")
FIND_PATH(KISSAT_H
        kissatpp.hpp
        DOC "Path to main kissat header file kissatpp.hpp"
        )
IF (KISSAT_LIB AND KISSAT_H)
    message(STATUS "Found kissat: ${KISSAT_LIB} and ${KISSAT_H}")
    add_definitions(-DUSE_KISSAT)
ELSE (KISSAT_LIB AND KISSAT_H)
    message(STATUS "Could not find kissat (${KISSAT_LIB} and ${KISSAT_H}). Please specify path by including it in CMAKE_PREFIX_PATH (-DCMAKE_PREFIX_PATH=...)")
ENDIF (KISSAT_LIB AND KISSAT_H)

# set C++ standard
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

# specify sources
file(GLOB lib_sources
        # adder graph construction
        src/adder_graph.cpp

        # base class
        src/cmm.cpp

        # derived classes
        src/cmm_cadical.cpp
        src/cmm_kissat.cpp
        src/cmm_z3.cpp
        src/cmm_executable.cpp
        )

file(GLOB header_sources
        # adder graph construction
        src/adder_graph.h

        # base class
        src/cmm.h

        # derived classes
        src/cmm_cadical.h
        src/cmm_kissat.h
        src/cmm_z3.h
        src/cmm_executable.h
        )

# compilation settings
add_compile_options(-O3)

# create library
add_library(satcmm-lib ${lib_sources})
set_target_properties(satcmm-lib PROPERTIES OUTPUT_NAME "satcmm")

# include directories
target_include_directories(satcmm-lib PUBLIC ${CMAKE_SOURCE_DIR}/src)
if(Z3_H)
    target_include_directories(satcmm-lib PUBLIC ${Z3_H})
ENDIF(Z3_H)
if(CADICAL_H)
    target_include_directories(satcmm-lib PUBLIC ${CADICAL_H})
ENDIF(CADICAL_H)
if(KISSAT_H)
    target_include_directories(satcmm-lib PUBLIC ${KISSAT_H})
ENDIF(KISSAT_H)

# link libraries
if(Z3_LIB)
    target_link_libraries(satcmm-lib PUBLIC ${Z3_LIB})
ENDIF(Z3_LIB)
if(CADICAL_LIB)
    target_link_libraries(satcmm-lib PUBLIC ${CADICAL_LIB})
ENDIF(CADICAL_LIB)
if(KISSAT_LIB)
    target_link_libraries(satcmm-lib PUBLIC ${KISSAT_LIB})
ENDIF(KISSAT_LIB)

# create executable, set name and link it to library
add_executable(satcmm-bin main.cpp)
set_target_properties(satcmm-bin PROPERTIES OUTPUT_NAME "satcmm")
target_link_libraries(satcmm-bin PUBLIC satcmm-lib)

# define install paths
set(bin_dest "bin/")
set(include_dest "include/")
set(lib_dest "lib/")

# install binary
install(TARGETS satcmm-bin DESTINATION "${bin_dest}")

# install lib
install(TARGETS satcmm-lib DESTINATION "${lib_dest}")

# install header files
install(FILES ${header_sources} DESTINATION "${include_dest}")
