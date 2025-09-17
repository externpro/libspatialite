include(xpcfg)
set(geosTarget xpro::geos_c)
set(libiconvTarget xpro::libiconv)
set(sqliteTarget xpro::SQLite3)
set(zlibTarget xpro::zlibstatic)
foreach(lib geos libiconv sqlite zlib)
  if(TARGET ${${lib}Target})
    get_target_property(${lib}Includes ${${lib}Target} INTERFACE_INCLUDE_DIRECTORIES)
    if(NOT "${${lib}Includes}" MATCHES "-NOTFOUND")
      list(APPEND reqIncs ${${lib}Includes})
    endif()
  endif()
endforeach()
cmake_push_check_state(RESET)
set(CMAKE_REQUIRED_INCLUDES ${reqIncs})
xpcfgCheckIncludeFile(dlfcn.h HAVE_DLFCN_H)
xpcfgCheckIncludeFile(fcntl.h HAVE_FCNTL_H)
xpcfgCheckIncludeFile(float.h HAVE_FLOAT_H)
xpcfgCheckIncludeFile(freexl.h HAVE_FREEXL_H)
xpcfgCheckIncludeFile(geos_c.h HAVE_GEOS_C_H)
xpcfgCheckIncludeFile(iconv.h HAVE_ICONV_H)
xpcfgCheckIncludeFile(inttypes.h HAVE_INTTYPES_H)
xpcfgCheckIncludeFile(librttopo.h HAVE_LIBRTTOPO_H)
xpcfgCheckIncludeFile(math.h HAVE_MATH_H)
xpcfgCheckIncludeFile(memory.h HAVE_MEMORY_H)
xpcfgCheckIncludeFile(minizip/unzip.h HAVE_MINIZIP_UNZIP_H)
xpcfgCheckIncludeFile(proj_api.h HAVE_PROJ_API_H)
xpcfgCheckIncludeFile(proj.h HAVE_PROJ_H)
xpcfgCheckIncludeFile(sqlite3ext.h HAVE_SQLITE3EXT_H)
xpcfgCheckIncludeFile(sqlite3.h HAVE_SQLITE3_H)
xpcfgCheckIncludeFile(stddef.h HAVE_STDDEF_H)
xpcfgCheckIncludeFile(stdint.h HAVE_STDINT_H)
xpcfgCheckIncludeFile(stdio.h HAVE_STDIO_H)
xpcfgCheckIncludeFile(stdlib.h HAVE_STDLIB_H)
xpcfgCheckIncludeFile(strings.h HAVE_STRINGS_H)
xpcfgCheckIncludeFile(string.h HAVE_STRING_H)
xpcfgCheckIncludeFile(sys/stat.h HAVE_SYS_STAT_H)
xpcfgCheckIncludeFile(sys/time.h HAVE_SYS_TIME_H)
xpcfgCheckIncludeFile(sys/types.h HAVE_SYS_TYPES_H)
xpcfgCheckIncludeFile(unistd.h HAVE_UNISTD_H)
xpcfgCheckIncludeFile(zlib.h HAVE_ZLIB_H)
xpcfgCheckSymFnExists(SQLITE_INDEX_CONSTRAINT_LIKE HAVE_DECL_SQLITE_INDEX_CONSTRAINT_LIKE)
xpcfgCheckSymFnExists(ftruncate HAVE_FTRUNCATE)
xpcfgCheckSymFnExists(fdatasync HAVE_FDATASYNC)
xpcfgCheckSymFnExists(getcwd HAVE_GETCWD)
xpcfgCheckSymFnExists(gettimeofday HAVE_GETTIMEOFDAY)
xpcfgCheckSymFnExists(localtime_r HAVE_LOCALTIME_R)
xpcfgCheckSymFnExists(memmove HAVE_MEMMOVE)
xpcfgCheckSymFnExists(memset HAVE_MEMSET)
xpcfgCheckSymFnExists(sqrt HAVE_SQRT)
xpcfgCheckSymFnExists(strcasecmp HAVE_STRCASECMP)
xpcfgCheckSymFnExists(strerror HAVE_STRERROR)
xpcfgCheckSymFnExists(strftime HAVE_STRFTIME)
xpcfgCheckSymFnExists(strncasecmp HAVE_STRNCASECMP)
xpcfgCheckSymFnExists(strstr HAVE_STRSTR)
xpcfgCheckLibraryExists(${sqliteTarget} sqlite3_version HAVE_LIBSQLITE3)
xpcfgCheckLibraryExists(${zlibTarget} inflateInit_ HAVE_LIBZ)
xpcfgFnEmptyStringBug(lstat, HAVE_LSTAT_EMPTY_STRING_BUG)
xpcfgFnEmptyStringBug(stat, HAVE_STAT_EMPTY_STRING_BUG)
xpcfgLstatFollowsSlashedSymlink(LSTAT_FOLLOWS_SLASHED_SYMLINK)
xpcfgStdcHeaders(STDC_HEADERS)
xpcfgTimeWithSysTime(TIME_WITH_SYS_TIME)
xpcfgTmInHdr(sys/time.h TM_IN_SYS_TIME)
xpcfgLtObjdir(LT_OBJDIR)
set(NDEBUG 1) # Must be defined in order to disable debug mode.
set(PACKAGE_BUGREPORT a.furieri@lqt.it)
set(PACKAGE_NAME ${CMAKE_PROJECT_NAME})
set(PACKAGE_STRING "${CMAKE_PROJECT_NAME} ${CMAKE_PROJECT_VERSION}")
set(PACKAGE_TARNAME ${CMAKE_PROJECT_NAME})
set(PACKAGE_URL https://www.gaia-gis.it/fossil/libspatialite/home)
set(PACKAGE_VERSION ${CMAKE_PROJECT_VERSION})
xpcfgHugeFileSupport()
xpcfgConst()
xpcfgCheckTypeSize()
if(NOT HAVE_SIZEOF_OFF_T)
  set(off_t "long int") # Define to `long int' if <sys/types.h> does not define. */
endif()
if(NOT HAVE_SIZEOF_SIZE_T)
  set(size_t "unsigned int") # Define to `unsigned int' if <sys/types.h> does not define.
endif()
xpcfgVolatile(volatile)
cmake_pop_check_state()
if(WIN32)
  set(msvc -msvc)
endif()
xpcfgDotinFile("config.h.in" "cmake/config${msvc}.h")
file(READ "${CMAKE_BINARY_DIR}/cmake/config${msvc}.h" configContent)
string(REPLACE "./src/headers/spatialite/gaiaconfig.h" "spatialite/gaiaconfig${msvc}.h" configContent "${configContent}")
file(WRITE "${CMAKE_BINARY_DIR}/cmake/config${msvc}.h" "${configContent}")
########################################
set(ENABLE_GCP FALSE) # --enable-gcp : enables Control Points (from Grass GIS)
set(ENABLE_GEOPACKAGE TRUE) # --enable-geopackage : enables GeoPackage support
set(ENABLE_LIBXML2 FALSE) # --enable-libxml2 : enables libxml2 inclusion # TODO find package
set(ENABLE_MINIZIP FALSE) # --enable-minizip : enables MiniZIP inclusion # TODO find package
set(ENABLE_RTTOPO ${HAVE_LIBRTTOPO_H}) # --enable-rttopo : enables RTTOPO support
set(GEOS_370 ${HAVE_GEOS_C_H}) # --enable-geos370 : enables GEOS 3.7.0 features
set(GEOS_3100 ${HAVE_GEOS_C_H}) # --enable-geos3100 : enables GEOS 3.10.0 features
set(GEOS_3110 ${HAVE_GEOS_C_H}) # --enable-geos3110 # enables GEOS 3.11.0 features
set(GEOS_ADVANCED ${HAVE_GEOS_C_H}) # enable geosadvanced, libgeos_c >= v.3.4.0
set(GEOS_ONLY_REENTRANT FALSE) # --with-geosonlyreentrant
set(GEOS_REENTRANT ${HAVE_GEOS_C_H}) # --enable-geosreentrant : enables GEOS reentrant (fully thread safe)
set(OMIT_EPSG FALSE) # --enable-epsg : enables full EPSG dataset support
set(OMIT_FREEXL TRUE) # --enable-freexml : enables FreeXL inclusion
set(OMIT_GEOCALLBACKS FALSE) # TODO search
if(HAVE_GEOS_C_H)
  set(OMIT_GEOS FALSE) # --enable-geos : enables GEOS inclusion
else()
  set(OMIT_GEOS TRUE)
endif()
if(HAVE_ICONV_H)
  set(OMIT_ICONV FALSE) # --enable-iconv : enables ICONV inclusion
else()
  set(OMIT_ICONV TRUE)
endif()
set(OMIT_KNN FALSE) # TODO search
set(OMIT_MATHSQL FALSE) # --enable-mathsql : enables SQL math functions
set(OMIT_PROJ TRUE) # --enable-proj : enables PROJ.4 inclusion
set(PROJ_NEW FALSE) # associated with --enable-proj
xpcfgSetDefineList(ENABLE_GCP ENABLE_GEOPACKAGE ENABLE_LIBXML2 ENABLE_MINIZIP ENABLE_RTTOPO
  GEOS_370 GEOS_3100 GEOS_3110 GEOS_ADVANCED GEOS_ONLY_REENTRANT GEOS_REENTRANT
  OMIT_EPSG OMIT_FREEXL OMIT_GEOCALLBACKS OMIT_GEOS OMIT_ICONV OMIT_KNN OMIT_MATHSQL OMIT_PROJ PROJ_NEW
  )
xpcfgTargetCpu(SPATIALITE_TARGET_CPU)
set(SPATIALITE_VERSION ${CMAKE_PROJECT_VERSION})
xpcfgDotinFile("src/headers/spatialite/gaiaconfig.h.in" "cmake/spatialite/gaiaconfig${msvc}.h")
