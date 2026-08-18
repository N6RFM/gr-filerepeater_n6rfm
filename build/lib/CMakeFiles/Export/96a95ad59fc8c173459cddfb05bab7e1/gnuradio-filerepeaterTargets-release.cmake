#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "gnuradio::gnuradio-filerepeater" for configuration "Release"
set_property(TARGET gnuradio::gnuradio-filerepeater APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(gnuradio::gnuradio-filerepeater PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libgnuradio-filerepeater.so.g7b62b92"
  IMPORTED_SONAME_RELEASE "libgnuradio-filerepeater.so.3.9.0git"
  )

list(APPEND _cmake_import_check_targets gnuradio::gnuradio-filerepeater )
list(APPEND _cmake_import_check_files_for_gnuradio::gnuradio-filerepeater "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libgnuradio-filerepeater.so.g7b62b92" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
