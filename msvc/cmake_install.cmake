# Install script for directory: N:/Development/Dev_Base/netcdf-c-4.9.2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/netCDF")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Enterprise/VC/Redist/MSVC/14.29.30133/x64/Microsoft.VC142.CRT/msvcp140.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Enterprise/VC/Redist/MSVC/14.29.30133/x64/Microsoft.VC142.CRT/msvcp140_1.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Enterprise/VC/Redist/MSVC/14.29.30133/x64/Microsoft.VC142.CRT/msvcp140_2.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Enterprise/VC/Redist/MSVC/14.29.30133/x64/Microsoft.VC142.CRT/msvcp140_atomic_wait.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Enterprise/VC/Redist/MSVC/14.29.30133/x64/Microsoft.VC142.CRT/msvcp140_codecvt_ids.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Enterprise/VC/Redist/MSVC/14.29.30133/x64/Microsoft.VC142.CRT/vcruntime140_1.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Enterprise/VC/Redist/MSVC/14.29.30133/x64/Microsoft.VC142.CRT/vcruntime140.dll"
    "C:/Program Files (x86)/Microsoft Visual Studio/2019/Enterprise/VC/Redist/MSVC/14.29.30133/x64/Microsoft.VC142.CRT/concrt140.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE DIRECTORY FILES "")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/netcdf.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xutilitiesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/nc-config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xlibrariesx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/libnetcdf.settings")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/netCDF/netCDFTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/netCDF/netCDFTargets.cmake"
         "N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/CMakeFiles/Export/lib/cmake/netCDF/netCDFTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/netCDF/netCDFTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/netCDF/netCDFTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/netCDF" TYPE FILE FILES "N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/CMakeFiles/Export/lib/cmake/netCDF/netCDFTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/netCDF" TYPE FILE FILES "N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/CMakeFiles/Export/lib/cmake/netCDF/netCDFTargets-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/netCDF" TYPE FILE FILES "N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/CMakeFiles/Export/lib/cmake/netCDF/netCDFTargets-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/netCDF" TYPE FILE FILES "N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/CMakeFiles/Export/lib/cmake/netCDF/netCDFTargets-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/netCDF" TYPE FILE FILES "N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/CMakeFiles/Export/lib/cmake/netCDF/netCDFTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/netCDF" TYPE FILE FILES "N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/netCDFConfig.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xheadersx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/netCDF" TYPE FILE FILES "N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/netCDF/netCDFConfigVersion.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/include/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/libdispatch/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/libsrc/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/libsrc4/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/libhdf5/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/libhdf4/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/hdf4_test/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/oc2/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/libdap2/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/libdap4/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/libncxml/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/libncpoco/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/libnczarr/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/liblib/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/plugins/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/ncgen/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/ncgen3/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/ncdump/cmake_install.cmake")
  include("N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/docs/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
