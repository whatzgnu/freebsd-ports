--- lib/cmake/libattica.pc.cmake.orig	2015-05-02 09:00:45 UTC
+++ lib/cmake/libattica.pc.cmake
@@ -1,12 +1,12 @@
 prefix=${CMAKE_INSTALL_PREFIX}
 exec_prefix=${CMAKE_INSTALL_PREFIX}/bin
 libdir=${LIB_DESTINATION}
-includedir=${CMAKE_INSTALL_PREFIX}/include
+includedir=${CMAKE_INSTALL_PREFIX}/include/attica4
 
 Name: libattica
 Description: Qt library to access Open Collaboration Services
 #Requires:
 Version: ${CMAKE_LIBATTICA_VERSION_MAJOR}.${CMAKE_LIBATTICA_VERSION_MINOR}.${CMAKE_LIBATTICA_VERSION_PATCH}
 Libs: -L${LIB_DESTINATION} -lattica
-Cflags: -I${CMAKE_INSTALL_PREFIX}/include
+Cflags: -I${CMAKE_INSTALL_PREFIX}/include/attica4
 
