# Copyright 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002,
# 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014,
# 2015, 2016, 2017, 2018, 2019, 2020
# University Corporation for Atmospheric Research/Unidata.

# See netcdf-c/COPYRIGHT file for more info.
# Process these files with m4.

SET(libsrc4_SOURCES nc4dispatch.c nc4attr.c nc4dim.c nc4grp.c
nc4internal.c nc4type.c nc4var.c ncfunc.c ncindex.c nc4cache.c)

add_library(netcdf4 OBJECT ${libsrc4_SOURCES})

IF(MPI_C_INCLUDE_PATH)
    target_include_directories(netcdf4 PUBLIC ${MPI_C_INCLUDE_PATH})
ENDIF(MPI_C_INCLUDE_PATH)

# Files for make dist
FILE(GLOB libsrc4_HEADERS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/*.h ${CMAKE_CURRENT_SOURCE_DIR}/*.sh)
SET(CUR_EXTRA_DIST CMakeLists.txt Makefile.am)
ADD_EXTRA_DIST("${libsrc4_SOURCES}")
ADD_EXTRA_DIST("${libsrc4_HEADERS}")
ADD_EXTRA_DIST("${CUR_EXTRA_DIST}")

###
# Options related to the man page generation.
###

###
# The C API man page.
###

set(man_MANS netcdf.3)

set(ARGS_MANPAGE -DAPI=C)

IF (USE_HDF5)
  SET(ARGS_MANPAGE ${ARGS_MANPAGE} -DNETCDF4=TRUE)
ENDIF(USE_HDF5)

IF (BUILD_DAP)
  SET(ARGS_MANPAGE ${ARGS_MANPAGE} -DDAP=TRUE)
ENDIF(BUILD_DAP)

IF (BUILD_PARALLEL)
  SET(ARGS_MANPAGE ${ARGS_MANPAGE} -DPARALLEL_IO=TRUE)
ENDIF(BUILD_PARALLEL)
