cmake_minimum_required(VERSION 3.31)
set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/.devcontainer/cmake ${CMAKE_CURRENT_LIST_DIR}/cmake)
include(preproject)
project(libspatialite VERSION 5.1.0.3)
include(flags)
include(GNUInstallDirs)
if(TRUE)
  xpFindPkg(PKGS geos libiconv sqlite3 zlib)
  include(configure)
  add_subdirectory(src)
  add_subdirectory(examples)
  add_subdirectory(spatialite)
else()
  include(ExternalProject)
  set_property(DIRECTORY PROPERTY "EP_BASE" ${CMAKE_BINARY_DIR}/epbase)
  ExternalProject_Add(${PROJECT_NAME}
    DOWNLOAD_COMMAND sudo dnf -y install --setopt=tsflags=nodocs epel-release && sudo dnf -y install geos-devel sqlite-devel
    SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR} BINARY_DIR ${CMAKE_CURRENT_LIST_DIR}
    CONFIGURE_COMMAND <SOURCE_DIR>/configure --prefix=<INSTALL_DIR> --disable-shared
      --disable-proj --disable-freexl --disable-geos3100 --disable-libxml2 --disable-minizip --disable-rttopo --disable-gcp
    )
endif()
