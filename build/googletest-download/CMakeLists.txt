cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

project(googletest-download NONE)

include(ExternalProject)
ExternalProject_Add(googletest
  GIT_REPOSITORY    https://github.com/google/googletest.git
  GIT_TAG           master
  SOURCE_DIR        "/home/abel/Escritorio/git/garbage_collector/source/googletest/googletest-src"
  BINARY_DIR        "/home/abel/Escritorio/git/garbage_collector/source/googletest/googletest-build"
  CONFIGURE_COMMAND ""
  BUILD_COMMAND     ""
  INSTALL_COMMAND   ""
  TEST_COMMAND      ""
)
