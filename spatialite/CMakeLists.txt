set(exe spatialite)
add_executable(${exe} shell.c)
target_link_libraries(${exe} PRIVATE libspatialite ${libiconvTarget})
target_compile_definitions(${exe} PRIVATE SQLITE_OMIT_TRACE)
