# Install script for directory: /home/bob/gr-filerepeater/python

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.12/dist-packages/filerepeater" TYPE FILE FILES
    "/home/bob/gr-filerepeater/python/__init__.py"
    "/home/bob/gr-filerepeater/python/state_and.py"
    "/home/bob/gr-filerepeater/python/state_or.py"
    "/home/bob/gr-filerepeater/python/StateToBool.py"
    "/home/bob/gr-filerepeater/python/MsgToFile.py"
    "/home/bob/gr-filerepeater/python/MetaToPair.py"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.12/dist-packages/filerepeater" TYPE FILE FILES
    "/home/bob/gr-filerepeater/build/python/__init__.pyc"
    "/home/bob/gr-filerepeater/build/python/state_and.pyc"
    "/home/bob/gr-filerepeater/build/python/state_or.pyc"
    "/home/bob/gr-filerepeater/build/python/StateToBool.pyc"
    "/home/bob/gr-filerepeater/build/python/MsgToFile.pyc"
    "/home/bob/gr-filerepeater/build/python/MetaToPair.pyc"
    "/home/bob/gr-filerepeater/build/python/__init__.pyo"
    "/home/bob/gr-filerepeater/build/python/state_and.pyo"
    "/home/bob/gr-filerepeater/build/python/state_or.pyo"
    "/home/bob/gr-filerepeater/build/python/StateToBool.pyo"
    "/home/bob/gr-filerepeater/build/python/MsgToFile.pyo"
    "/home/bob/gr-filerepeater/build/python/MetaToPair.pyo"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/bob/gr-filerepeater/build/python/bindings/cmake_install.cmake")

endif()

