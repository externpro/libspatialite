set(lib_name ${CMAKE_PROJECT_NAME})
########################################
set(connection_cache_srcs
  connection_cache/alloc_cache.c
  connection_cache/gg_sequence.c
  connection_cache/generator/code_generator.c
  )
source_group(connection_cache FILES ${connection_cache_srcs})
list(APPEND ${lib_name}_libsrcs ${connection_cache_srcs})
########################################
set(control_points_srcs
  control_points/gaia_control_points.c
  control_points/grass_crs.h
  control_points/grass_crs3d.c
  control_points/grass_georef.c
  control_points/grass_georef_tps.c
  )
source_group(control_points FILES ${control_points_srcs})
list(APPEND ${lib_name}_libsrcs ${control_points_srcs})
########################################
set(cutter_srcs
  cutter/gaia_cutter.c
  )
source_group(cutter FILES ${cutter_srcs})
list(APPEND ${lib_name}_libsrcs ${cutter_srcs})
########################################
set(dxf_srcs
  dxf/Makefile.am
  dxf/Makefile.in
  dxf/dxf_load_distinct.c
  dxf/dxf_load_mixed.c
  dxf/dxf_loader.c
  dxf/dxf_parser.c
  dxf/dxf_private.h
  dxf/dxf_writer.c
  )
source_group(dxf FILES ${dxf_srcs})
list(APPEND ${lib_name}_libsrcs ${dxf_srcs})
########################################
set(gaiaaux_srcs
  gaiaaux/Makefile.am
  gaiaaux/Makefile.in
  gaiaaux/gg_sqlaux.c
  gaiaaux/gg_utf8.c
  )
source_group(gaiaaux FILES ${gaiaaux_srcs})
list(APPEND ${lib_name}_libsrcs ${gaiaaux_srcs})
########################################
set(gaiaexif_srcs
  gaiaexif/Makefile.am
  gaiaexif/Makefile.in
  gaiaexif/gaia_exif.c
  )
source_group(gaiaexif FILES ${gaiaexif_srcs})
list(APPEND ${lib_name}_libsrcs ${gaiaexif_srcs})
########################################
set(gaiageo_srcs
  gaiageo/Makefile.am
  gaiageo/Makefile.in
  gaiageo/gg_advanced.c
  gaiageo/gg_endian.c
  gaiageo/gg_ewkt.c
  gaiageo/gg_extras.c
  gaiageo/gg_geoJSON.c
  gaiageo/gg_geodesic.c
  gaiageo/gg_geometries.c
  gaiageo/gg_geoscvt.c
  gaiageo/gg_gml.c
  gaiageo/gg_kml.c
  gaiageo/gg_matrix.c
  gaiageo/gg_relations.c
  gaiageo/gg_relations_ext.c
  gaiageo/gg_rttopo.c
  gaiageo/gg_shape.c
  gaiageo/gg_transform.c
  gaiageo/gg_vanuatu.c
  gaiageo/gg_voronoj.c
  gaiageo/gg_wkb.c
  gaiageo/gg_wkt.c
  gaiageo/gg_xml.c
  )
source_group(gaiageo FILES ${gaiageo_srcs})
list(APPEND ${lib_name}_libsrcs ${gaiageo_srcs})
########################################
set(gaiageo_flex_gen_srcs # FLEX generated code
  gaiageo/lex.Ewkt.c # included by gg_ewkt.c
  gaiageo/lex.GeoJson.c # included by gg_geoJSON.c
  gaiageo/lex.Gml.c # included by gg_gml.c
  gaiageo/lex.Kml.c # included by gg_kml.c
  gaiageo/lex.VanuatuWkt.c # included by gg_vanuatu.c
  )
source_group(gaiageo\\flex_gen FILES ${gaiageo_flex_gen_srcs})
########################################
set(gaiageo_lemon_gen_srcs # LEMON generated code
  gaiageo/Ewkt.c # included by gg_ewkt.c
  gaiageo/Ewkt.h
  gaiageo/Gml.c # included by gg_gml.c
  gaiageo/Gml.h
  gaiageo/Kml.c # included by gg_kml.c
  gaiageo/Kml.h
  gaiageo/geoJSON.c # included by gg_geoJSON.c
  gaiageo/geoJSON.h
  gaiageo/vanuatuWkt.c # included by gg_vanuatu.c
  gaiageo/vanuatuWkt.h
  )
source_group(gaiageo\\lemon_gen FILES ${gaiageo_lemon_gen_srcs})
########################################
set(gaiageo_flex_srcs
  gaiageo/flex/Makefile.am
  gaiageo/flex/Makefile.in
  gaiageo/flex/ReadMe.txt
  gaiageo/flex/ewktLexer.l
  gaiageo/flex/geoJsonLexer.l
  gaiageo/flex/gmlLexer.l
  gaiageo/flex/kmlLexer.l
  gaiageo/flex/vanuatuLexer.l
  )
########################################
set(gaiageo_lemon_srcs
  gaiageo/lemon/Ewkt.y
  gaiageo/lemon/Gml.y
  gaiageo/lemon/Kml.y
  gaiageo/lemon/Makefile.am
  gaiageo/lemon/Makefile.in
  gaiageo/lemon/ReadMe.txt
  gaiageo/lemon/geoJSON.y
  gaiageo/lemon/lemon_src
  gaiageo/lemon/vanuatuWkt.y
  )
########################################
set(geopackage_srcs
  geopackage/Makefile.am
  geopackage/Makefile.in
  geopackage/gaia_cvt_gpkg.c
  geopackage/geopackage_internal.h
  geopackage/gpkgAddGeometryColumn.c
  geopackage/gpkgBinary.c
  geopackage/gpkgCreateBaseTables.c
  geopackage/gpkgCreateTilesTable.c
  geopackage/gpkgCreateTilesZoomLevel.c
  geopackage/gpkgGetImageType.c
  geopackage/gpkgInsertEpsgSRID.c
  geopackage/gpkgMakePoint.c
  geopackage/gpkg_add_geometry_triggers.c
  geopackage/gpkg_add_spatial_index.c
  geopackage/gpkg_add_tile_triggers.c
  geopackage/gpkg_get_normal_row.c
  geopackage/gpkg_get_normal_zoom.c
  )
source_group(geopackage FILES ${geopackage_srcs})
list(APPEND ${lib_name}_libsrcs ${geopackage_srcs})
########################################
set(headers_srcs
  headers/Makefile.am
  headers/Makefile.in
  headers/spatialite.h
  headers/spatialite_private.h
  )
source_group(headers FILES ${headers_srcs})
list(APPEND ${lib_name}_libsrcs ${headers_srcs})
########################################
set(headers_spatialite_srcs
  ${CMAKE_BINARY_DIR}/cmake/spatialite/gaiaconfig${msvc}.h
  headers/spatialite/control_points.h
  headers/spatialite/debug.h
  headers/spatialite/gaia_network.h
  headers/spatialite/gaia_topology.h
  headers/spatialite/gaiaaux.h
  headers/spatialite/gaiaconfig-msvc.h.in
  headers/spatialite/gaiaconfig.h.in
  headers/spatialite/gaiaexif.h
  headers/spatialite/gaiageo.h
  headers/spatialite/gaiamatrix.h
  headers/spatialite/geojson.h
  headers/spatialite/geopackage.h
  headers/spatialite/gg_advanced.h
  headers/spatialite/gg_const.h
  headers/spatialite/gg_core.h
  headers/spatialite/gg_dxf.h
  headers/spatialite/gg_dynamic.h
  headers/spatialite/gg_formats.h
  headers/spatialite/gg_mbr.h
  headers/spatialite/gg_sequence.h
  headers/spatialite/gg_structs.h
  headers/spatialite/gg_wfs.h
  headers/spatialite/gg_xml.h
  headers/spatialite/spatialite_ext.h
  headers/spatialite/sqlite.h
  headers/spatialite/stored_procedures.h
  )
source_group(headers\\spatialite FILES ${headers_spatialite_srcs})
list(APPEND ${lib_name}_libsrcs ${headers_spatialite_srcs})
########################################
set(md5_srcs
  md5/Makefile.am
  md5/Makefile.in
  md5/gaia_md5.c
  md5/md5.c
  md5/md5.h
  )
source_group(md5 FILES ${md5_srcs})
list(APPEND ${lib_name}_libsrcs ${md5_srcs})
########################################
set(shapefiles_srcs
  shapefiles/Makefile.am
  shapefiles/Makefile.in
  shapefiles/shapefiles.c
  shapefiles/validator.c
  )
source_group(shapefiles FILES ${shapefiles_srcs})
list(APPEND ${lib_name}_libsrcs ${shapefiles_srcs})
########################################
set(spatialite_srcs
  spatialite/Makefile.am
  spatialite/Makefile.in
  spatialite/create_routing.c
  spatialite/dbobj_scopes.c
  spatialite/extra_tables.c
  spatialite/mbrcache.c
  spatialite/metatables.c
  spatialite/pause.c
  spatialite/se_helpers.c
  spatialite/spatialite.c
  spatialite/spatialite_init.c
  spatialite/srid_aux.c
  spatialite/statistics.c
  spatialite/table_cloner.c
  spatialite/virtualXL.c
  spatialite/virtualbbox.c
  spatialite/virtualdbf.c
  spatialite/virtualelementary.c
  spatialite/virtualfdo.c
  spatialite/virtualgeojson.c
  spatialite/virtualgpkg.c
  spatialite/virtualknn.c
  spatialite/virtualknn2.c
  spatialite/virtualnetwork.c
  spatialite/virtualrouting.c
  spatialite/virtualshape.c
  spatialite/virtualspatialindex.c
  spatialite/virtualxpath.c
  )
source_group(spatialite FILES ${spatialite_srcs})
list(APPEND ${lib_name}_libsrcs ${spatialite_srcs})
########################################
set(srsinit_srcs
  srsinit/Makefile.am
  srsinit/Makefile.in
  srsinit/epsg_inlined_00.c
  srsinit/epsg_inlined_01.c
  srsinit/epsg_inlined_02.c
  srsinit/epsg_inlined_03.c
  srsinit/epsg_inlined_04.c
  srsinit/epsg_inlined_05.c
  srsinit/epsg_inlined_06.c
  srsinit/epsg_inlined_07.c
  srsinit/epsg_inlined_08.c
  srsinit/epsg_inlined_09.c
  srsinit/epsg_inlined_10.c
  srsinit/epsg_inlined_11.c
  srsinit/epsg_inlined_12.c
  srsinit/epsg_inlined_13.c
  srsinit/epsg_inlined_14.c
  srsinit/epsg_inlined_15.c
  srsinit/epsg_inlined_16.c
  srsinit/epsg_inlined_17.c
  srsinit/epsg_inlined_18.c
  srsinit/epsg_inlined_19.c
  srsinit/epsg_inlined_20.c
  srsinit/epsg_inlined_21.c
  srsinit/epsg_inlined_22.c
  srsinit/epsg_inlined_23.c
  srsinit/epsg_inlined_24.c
  srsinit/epsg_inlined_25.c
  srsinit/epsg_inlined_26.c
  srsinit/epsg_inlined_27.c
  srsinit/epsg_inlined_28.c
  srsinit/epsg_inlined_29.c
  srsinit/epsg_inlined_30.c
  srsinit/epsg_inlined_31.c
  srsinit/epsg_inlined_32.c
  srsinit/epsg_inlined_33.c
  srsinit/epsg_inlined_34.c
  srsinit/epsg_inlined_35.c
  srsinit/epsg_inlined_36.c
  srsinit/epsg_inlined_37.c
  srsinit/epsg_inlined_38.c
  srsinit/epsg_inlined_39.c
  srsinit/epsg_inlined_40.c
  srsinit/epsg_inlined_41.c
  srsinit/epsg_inlined_42.c
  srsinit/epsg_inlined_43.c
  srsinit/epsg_inlined_44.c
  srsinit/epsg_inlined_45.c
  srsinit/epsg_inlined_46.c
  srsinit/epsg_inlined_47.c
  srsinit/epsg_inlined_48.c
  srsinit/epsg_inlined_49.c
  srsinit/epsg_inlined_50.c
  srsinit/epsg_inlined_51.c
  srsinit/epsg_inlined_52.c
  srsinit/epsg_inlined_53.c
  srsinit/epsg_inlined_54.c
  srsinit/epsg_inlined_55.c
  srsinit/epsg_inlined_56.c
  srsinit/epsg_inlined_57.c
  srsinit/epsg_inlined_58.c
  srsinit/epsg_inlined_59.c
  srsinit/epsg_inlined_60.c
  srsinit/epsg_inlined_61.c
  srsinit/epsg_inlined_62.c
  srsinit/epsg_inlined_63.c
  srsinit/epsg_inlined_extra.c
  srsinit/epsg_inlined_prussian.c
  srsinit/epsg_inlined_wgs84_00.c
  srsinit/epsg_inlined_wgs84_01.c
  srsinit/srs_init.c
  )
source_group(srsinit FILES ${srsinit_srcs})
list(APPEND ${lib_name}_libsrcs ${srsinit_srcs})
########################################
set(srsinit_epsg_update_srcs
  srsinit/epsg_update/Makefile.am
  srsinit/epsg_update/Makefile.in
  srsinit/epsg_update/README-PROJ6.txt
  srsinit/epsg_update/README-obsolete.txt
  srsinit/epsg_update/README.txt
  srsinit/epsg_update/auto_epsg.c
  srsinit/epsg_update/auto_epsg_ext.c
  srsinit/epsg_update/check_srid_spatialite.sh
  srsinit/epsg_update/epsg-proj4
  srsinit/epsg_update/epsg_from_gdal-proj6.c
  srsinit/epsg_update/epsg_from_gdal.c
  )
source_group(srsinit\\epsg_update FILES ${srsinit_epsg_update_srcs})
#list(APPEND ${lib_name}_libsrcs ${srsinit_epsg_update_srcs})
########################################
set(stored_procedures_srcs
  stored_procedures/Makefile.am
  stored_procedures/Makefile.in
  stored_procedures/stored_procedures.c
  )
source_group(stored_procedures FILES ${stored_procedures_srcs})
list(APPEND ${lib_name}_libsrcs ${stored_procedures_srcs})
########################################
set(topology_srcs
  topology/Makefile.am
  topology/Makefile.in
  topology/gaia_auxnet.c
  topology/gaia_auxtopo.c
  topology/gaia_auxtopo_table.c
  topology/gaia_netstmts.c
  topology/gaia_network.c
  topology/gaia_topology.c
  topology/gaia_topostmts.c
  topology/lwn_network.c
  topology/lwn_network.h
  topology/lwn_network_private.h
  topology/net_callbacks.c
  topology/network_private.h
  topology/topo_callbacks.c
  topology/topology_private.h
  )
source_group(topology FILES ${topology_srcs})
list(APPEND ${lib_name}_libsrcs ${topology_srcs})
########################################
set(versioninfo_srcs
  versioninfo/version.c
  )
source_group(versioninfo FILES ${versioninfo_srcs})
list(APPEND ${lib_name}_libsrcs ${versioninfo_srcs})
########################################
set(virtualtext_srcs
  virtualtext/Makefile.am
  virtualtext/Makefile.in
  virtualtext/virtualtext.c
  )
source_group(virtualtext FILES ${virtualtext_srcs})
list(APPEND ${lib_name}_libsrcs ${virtualtext_srcs})
########################################
set(wfs_srcs
  wfs/Makefile.am
  wfs/Makefile.in
  wfs/wfs_in.c
  )
source_group(wfs FILES ${wfs_srcs})
list(APPEND ${lib_name}_libsrcs ${wfs_srcs})
########################################
add_library(${lib_name} STATIC ${${lib_name}_libsrcs})
target_include_directories(${lib_name} PUBLIC $<BUILD_INTERFACE:${CMAKE_BINARY_DIR}/cmake> $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/headers> $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)
target_link_libraries(${lib_name} PUBLIC xpro::SQLite3
  PRIVATE xpro::zlibstatic # target_link_libraries
  )
if(NOT HAVE_UNISTD_H)
  target_compile_definitions(${lib_name} PRIVATE YY_NO_UNISTD_H)
endif()
set_target_properties(${lib_name} PROPERTIES
  PREFIX "" # strip off the "lib" prefix, since it's already libspatialite
  )
########################################
if(NOT DEFINED XP_INSTALL_CMAKEDIR)
  set(XP_INSTALL_CMAKEDIR ${CMAKE_INSTALL_DATADIR}/cmake)
endif()
if(NOT DEFINED XP_NAMESPACE)
  set(XP_NAMESPACE xpro)
endif()
set(targetsFile ${CMAKE_PROJECT_NAME}-targets)
xpPackageDevel(TARGETS_FILE ${targetsFile} DEPS sqlite3 zlib LIBRARIES ${XP_NAMESPACE}::${lib_name})
install(TARGETS ${lib_name} EXPORT ${targetsFile}
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
  ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  )
install(FILES headers/spatialite.h DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
install(FILES ${headers_spatialite_srcs} DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/spatialite)
install(EXPORT ${targetsFile} DESTINATION ${XP_INSTALL_CMAKEDIR} NAMESPACE ${XP_NAMESPACE}::)
