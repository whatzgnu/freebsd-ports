--- cmake/modules/KDevPlatformMacros.cmake.orig	2015-07-12 17:31:45 UTC
+++ cmake/modules/KDevPlatformMacros.cmake
@@ -63,7 +63,7 @@ macro(kdevplatform_create_template_archi
         else(APPLE)
             add_custom_command(OUTPUT ${_template}
                 COMMAND tar ARGS -c -C ${CMAKE_CURRENT_SOURCE_DIR}/${_templateName}
-                    --exclude .kdev_ignore --exclude .svn --owner=root --group=root --numeric-owner
+                    --exclude .kdev_ignore --exclude .svn --uname root --gname wheel --numeric-owner
                     -j -f ${_template} .
                 DEPENDS ${_deps}
             )
