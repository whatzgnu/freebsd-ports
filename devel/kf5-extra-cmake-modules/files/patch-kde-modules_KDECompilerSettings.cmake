Do not set -std=c++0x by default. Set it using the ports frameworks compiler option to c++11 where needed.

--- kde-modules/KDECompilerSettings.cmake.orig	2015-07-01 06:55:14 UTC
+++ kde-modules/KDECompilerSettings.cmake
@@ -179,7 +179,7 @@ if ("${CMAKE_C_COMPILER_ID}" STREQUAL "G
     set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS} -std=iso9899:1990")
 endif()
 if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU" OR "${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
-    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
+    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
 elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Intel" AND NOT WIN32)
     set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
 endif()
