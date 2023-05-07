# CMake generated Testfile for 
# Source directory: N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C
# Build directory: N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/examples/C
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(C_tests_simple_xy_wr "/C_tests_simple_xy_wr")
set_tests_properties(C_tests_simple_xy_wr PROPERTIES  FOLDER "tests/" _BACKTRACE_TRIPLES "N:/Development/Dev_Base/netcdf-c-4.9.2/CMakeLists.txt;2161;ADD_TEST;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;15;add_bin_test;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;0;")
add_test(C_tests_simple_xy_rd "/C_tests_simple_xy_rd")
set_tests_properties(C_tests_simple_xy_rd PROPERTIES  DEPENDS "C_tests_simple_xy_wr" FOLDER "tests/" _BACKTRACE_TRIPLES "N:/Development/Dev_Base/netcdf-c-4.9.2/CMakeLists.txt;2161;ADD_TEST;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;15;add_bin_test;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;0;")
add_test(C_tests_sfc_pres_temp_wr "/C_tests_sfc_pres_temp_wr")
set_tests_properties(C_tests_sfc_pres_temp_wr PROPERTIES  FOLDER "tests/" _BACKTRACE_TRIPLES "N:/Development/Dev_Base/netcdf-c-4.9.2/CMakeLists.txt;2161;ADD_TEST;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;15;add_bin_test;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;0;")
add_test(C_tests_sfc_pres_temp_rd "/C_tests_sfc_pres_temp_rd")
set_tests_properties(C_tests_sfc_pres_temp_rd PROPERTIES  DEPENDS "C_tests_sfc_pres_temp_wr" FOLDER "tests/" _BACKTRACE_TRIPLES "N:/Development/Dev_Base/netcdf-c-4.9.2/CMakeLists.txt;2161;ADD_TEST;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;15;add_bin_test;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;0;")
add_test(C_tests_pres_temp_4D_wr "/C_tests_pres_temp_4D_wr")
set_tests_properties(C_tests_pres_temp_4D_wr PROPERTIES  FOLDER "tests/" _BACKTRACE_TRIPLES "N:/Development/Dev_Base/netcdf-c-4.9.2/CMakeLists.txt;2161;ADD_TEST;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;15;add_bin_test;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;0;")
add_test(C_tests_pres_temp_4D_rd "/C_tests_pres_temp_4D_rd")
set_tests_properties(C_tests_pres_temp_4D_rd PROPERTIES  DEPENDS "C_tests_pres_temp_4D_wr" FOLDER "tests/" _BACKTRACE_TRIPLES "N:/Development/Dev_Base/netcdf-c-4.9.2/CMakeLists.txt;2161;ADD_TEST;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;15;add_bin_test;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;0;")
add_test(C_tests_format "/C_tests_format")
set_tests_properties(C_tests_format PROPERTIES  FOLDER "tests/" _BACKTRACE_TRIPLES "N:/Development/Dev_Base/netcdf-c-4.9.2/CMakeLists.txt;2161;ADD_TEST;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;15;add_bin_test;N:/Development/Dev_Base/netcdf-c-4.9.2/examples/C/CMakeLists.txt;0;")
