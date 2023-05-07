# CMake generated Testfile for 
# Source directory: N:/Development/Dev_Base/netcdf-c-4.9.2/ncdap_test
# Build directory: N:/Development/Dev_Base/netcdf-c-4.9.2/msvc/ncdap_test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ncdap_test_varm3 "/ncdap_test_varm3")
set_tests_properties(ncdap_test_varm3 PROPERTIES  FOLDER "tests/" _BACKTRACE_TRIPLES "N:/Development/Dev_Base/netcdf-c-4.9.2/CMakeLists.txt;2161;ADD_TEST;N:/Development/Dev_Base/netcdf-c-4.9.2/ncdap_test/CMakeLists.txt;69;add_bin_test;N:/Development/Dev_Base/netcdf-c-4.9.2/ncdap_test/CMakeLists.txt;0;")
add_test(ncdap_test_nstride_cached "/ncdap_test_nstride_cached")
set_tests_properties(ncdap_test_nstride_cached PROPERTIES  FOLDER "tests/" _BACKTRACE_TRIPLES "N:/Development/Dev_Base/netcdf-c-4.9.2/CMakeLists.txt;2161;ADD_TEST;N:/Development/Dev_Base/netcdf-c-4.9.2/ncdap_test/CMakeLists.txt;70;add_bin_test;N:/Development/Dev_Base/netcdf-c-4.9.2/ncdap_test/CMakeLists.txt;0;")
subdirs("testdata3")
subdirs("expected3")
subdirs("expectremote3")
