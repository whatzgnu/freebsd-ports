--- cmake/FindLibIcal.cmake.orig	2015-07-21 13:22:09 UTC
+++ cmake/FindLibIcal.cmake
@@ -47,7 +47,7 @@ set(LibIcal_LIBRARIES ${LibIcal_LIBRARY}
 
 if(LibIcal_INCLUDE_DIRS AND LibIcal_LIBRARIES)
   set(FIND_LibIcal_VERSION_SOURCE
-    "#include <libical/ical.h>\n int main()\n {\n printf(\"%s\",ICAL_VERSION);return 1;\n }\n")
+    "#include <ical.h>\n int main()\n {\n printf(\"%s\",ICAL_VERSION);return 1;\n }\n")
   set(FIND_LibIcal_VERSION_SOURCE_FILE ${CMAKE_BINARY_DIR}/CMakeTmp/FindLIBICAL.cxx)
   file(WRITE "${FIND_LibIcal_VERSION_SOURCE_FILE}" "${FIND_LibIcal_VERSION_SOURCE}")
 
