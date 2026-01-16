cmake_minimum_required(VERSION 3.31)
set(CMAKE_PROJECT_TOP_LEVEL_INCLUDES .devcontainer/cmake/xproinc.cmake)
project(libspatialite VERSION 5.1.0)
option(BUILD_AUTOMAKE "build with automake" OFF)
if(BUILD_AUTOMAKE)
  include(ExternalProject)
  set_property(DIRECTORY PROPERTY "EP_BASE" ${CMAKE_BINARY_DIR}/epbase)
  ExternalProject_Add(${PROJECT_NAME}
    DOWNLOAD_COMMAND sudo dnf -y install --setopt=tsflags=nodocs epel-release && sudo dnf -y install geos-devel sqlite-devel
    SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR} BINARY_DIR ${CMAKE_CURRENT_LIST_DIR}
    CONFIGURE_COMMAND <SOURCE_DIR>/configure --prefix=<INSTALL_DIR> --disable-shared
      --disable-proj --disable-freexl --disable-geos3100 --disable-libxml2 --disable-minizip --disable-rttopo --disable-gcp
    )
else()
  xpFindPkg(PKGS geos libiconv sqlite3 zlib)
  include(cmake/configure.cmake)
  add_subdirectory(src)
  add_subdirectory(examples)
  add_subdirectory(spatialite)
endif()
