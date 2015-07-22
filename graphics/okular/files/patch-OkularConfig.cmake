--- OkularConfig.cmake.orig	2015-07-07 00:14:01 UTC
+++ OkularConfig.cmake
@@ -7,7 +7,7 @@ get_filename_component( _okularBaseDir  
 
 # find the full paths to the library and the includes:
 find_path(OKULAR_INCLUDE_DIR okular/core/document.h
-          HINTS ${_okularBaseDir}/include
+          HINTS ${_okularBaseDir}/include/kde4
           NO_DEFAULT_PATH)
 
 find_library(OKULAR_CORE_LIBRARY okularcore 
