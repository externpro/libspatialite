# libspatialite dependencies

|project|license [^_l]|description [dependencies]|version|source|diff [^_d]|
|-------|-------------|--------------------------|-------|------|----------|
|<a id='libspatialite' />[libspatialite](https://www.gaia-gis.it/fossil/libspatialite/home)|[MPL-1.1](https://www.gaia-gis.it/fossil/libspatialite/home 'MPL tri-license: choose MPL-1.1, GPL-2.0-or-later, LGPL-2.1-or-later')|extends capabilities of SQLite, enabling it to handle spatial data and perform spatial queries [deps: _geos, libiconv, sqlite3, zlib_]| | |  [auto]|
|<a id='geos' />[geos](https://libgeos.org)|[LPGL-2.1](https://trac.osgeo.org/geos/ 'LGPL version 2.1')|C/C++ library for computational geometry with a focus on algorithms used in geographic information systems (GIS) software|[xpv3.13.0.6](https://github.com/externpro/geos/releases/tag/xpv3.13.0.6 'release')|[repo](https://github.com/externpro/geos 'github.com/externpro/geos') [upstream](https://github.com/libgeos/geos 'github.com/libgeos/geos')|[diff](https://github.com/externpro/geos/compare/3.13.0...xpv3.13.0.6 'github.com/externpro/geos/compare/3.13.0...xpv3.13.0.6') [patch]|
|<a id='libiconv' />[libiconv](https://www.gnu.org/software/libiconv/)|[LGPL-2.1](https://savannah.gnu.org/projects/libiconv/ 'LGPL version 2.1')|character set conversion library|[xpv1.18.8](https://github.com/externpro/libiconv/releases/tag/xpv1.18.8 'release')|[repo](https://github.com/externpro/libiconv 'github.com/externpro/libiconv') [upstream](https://github.com/pffang/libiconv-for-Windows/releases/tag/1.18-eed6782 'github.com/pffang/libiconv-for-Windows/releases/tag/1.18-eed6782')|[diff](https://github.com/externpro/libiconv/compare/v0...xpv1.18.8 'github.com/externpro/libiconv/compare/v0...xpv1.18.8') [bin]|
|<a id='sqlite3' />[sqlite3](https://www.sqlite.org/index.html 'SQLite website')|[public domain](https://www.sqlite.org/copyright.html 'open-source, not open-contribution')|C-language library that implements a small, fast, self-contained, high-reliability, full-featured, SQL database engine|[xpv3.38.2.3](https://github.com/externpro/SQLite3/releases/tag/xpv3.38.2.3 'release')|[repo](https://github.com/externpro/SQLite3 'github.com/externpro/SQLite3') [upstream](https://github.com/azadkuh/sqlite-amalgamation 'github.com/azadkuh/sqlite-amalgamation')|[diff](https://github.com/externpro/SQLite3/compare/3.38.2...xpv3.38.2.3 'github.com/externpro/SQLite3/compare/3.38.2...xpv3.38.2.3') [patch]|
|<a id='zlib' />[zlib](https://zlib.net 'zlib website')|[permissive](https://zlib.net/zlib_license.html 'zlib/libpng license, see https://en.wikipedia.org/wiki/Zlib_License')|compression library|[xpv1.3.1.4](https://github.com/externpro/zlib/releases/tag/xpv1.3.1.4 'release')|[repo](https://github.com/externpro/zlib 'github.com/externpro/zlib') [upstream](https://github.com/madler/zlib 'github.com/madler/zlib')|[diff](https://github.com/externpro/zlib/compare/v1.3.1...xpv1.3.1.4 'github.com/externpro/zlib/compare/v1.3.1...xpv1.3.1.4') [patch]|

![deps](xprodeps.svg 'dependencies')

Dependency version check: all 4 parent-manifest versions match pinned versions.

|diff  |description|
|------|-----------|
|patch |diff modifies/patches existing cmake|
|intro |diff introduces cmake|
|auto  |diff adds cmake to replace autotools/configure/make|
|native|diff adds cmake but uses existing build system|
|bin   |diff adds cmake to repackage binaries built elsewhere|
|fetch |diff adds cmake and utilizes FetchContent|

[^_l]: see [SPDX License List](https://spdx.org/licenses/ '') for a list of commonly found licenses
[^_d]: see table above with description of diff
