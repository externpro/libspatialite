# libspatialite dependencies

|project|license [^_l]|description [dependencies]|version|source|diff [^_d]|
|-------|-------------|--------------------------|-------|------|----------|
|<a id='libspatialite' />[libspatialite](https://www.gaia-gis.it/fossil/libspatialite/home)|[MPL-1.1](https://www.gaia-gis.it/fossil/libspatialite/home 'MPL tri-license: choose MPL-1.1, GPL-2.0-or-later, LGPL-2.1-or-later')|extends capabilities of SQLite, enabling it to handle spatial data and perform spatial queries [deps: _SQLite3, geos, libiconv, zlib_]| | |  [auto]|
|<a id='SQLite3' />[SQLite3](https://www.sqlite.org/index.html 'SQLite website')|[SQLite](https://www.sqlite.org/copyright.html 'public domain dedication - no license required')|C-language library that implements a small, fast, self-contained, high-reliability, full-featured, SQL database engine|[xpv3.38.2.4](https://github.com/externpro/SQLite3/releases/tag/xpv3.38.2.4 'release')|[repo](https://github.com/externpro/SQLite3 'github.com/externpro/SQLite3') [upstream](https://github.com/azadkuh/sqlite-amalgamation 'github.com/azadkuh/sqlite-amalgamation')|[diff](https://github.com/externpro/SQLite3/compare/3.38.2...xpv3.38.2.4 'github.com/externpro/SQLite3/compare/3.38.2...xpv3.38.2.4') [patch]|
|<a id='geos' />[geos](https://libgeos.org)|[LGPL-2.1-only](https://trac.osgeo.org/geos/ 'LGPL version 2.1')|C/C++ library for computational geometry with a focus on algorithms used in geographic information systems (GIS) software|[xpv3.14.1.1](https://github.com/externpro/geos/releases/tag/xpv3.14.1.1 'release')|[repo](https://github.com/externpro/geos 'github.com/externpro/geos') [upstream](https://github.com/libgeos/geos 'github.com/libgeos/geos')|[diff](https://github.com/externpro/geos/compare/3.14.1...xpv3.14.1.1 'github.com/externpro/geos/compare/3.14.1...xpv3.14.1.1') [patch]|
|<a id='libiconv' />[libiconv](https://www.gnu.org/software/libiconv/)|[LGPL-2.1-or-later](https://savannah.gnu.org/projects/libiconv/ 'GNU Lesser General Public License v2.1 or later')|character set conversion library|[xpv1.18.9](https://github.com/externpro/libiconv/releases/tag/xpv1.18.9 'release')|[repo](https://github.com/externpro/libiconv 'github.com/externpro/libiconv') [upstream](https://github.com/pffang/libiconv-for-Windows/releases/tag/1.18-eed6782 'github.com/pffang/libiconv-for-Windows/releases/tag/1.18-eed6782')|[diff](https://github.com/externpro/libiconv/compare/v0...xpv1.18.9 'github.com/externpro/libiconv/compare/v0...xpv1.18.9') [bin]|
|<a id='zlib' />[zlib](https://zlib.net/ 'zlib website')|[Zlib](https://zlib.net/zlib_license.html 'zlib/libpng license, see https://en.wikipedia.org/wiki/Zlib_License')|a general-purpose lossless data-compression library|[xpv1.3.2.1](https://github.com/externpro/zlib/releases/tag/xpv1.3.2.1 'release')|[repo](https://github.com/externpro/zlib 'github.com/externpro/zlib') [upstream](https://github.com/madler/zlib 'github.com/madler/zlib')|[diff](https://github.com/externpro/zlib/compare/v1.3.2...xpv1.3.2.1 'github.com/externpro/zlib/compare/v1.3.2...xpv1.3.2.1') [patch]|

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
