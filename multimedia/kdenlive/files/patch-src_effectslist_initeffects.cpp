--- src/effectslist/initeffects.cpp.orig	2015-04-08 18:41:11 UTC
+++ src/effectslist/initeffects.cpp
@@ -30,6 +30,7 @@
 #include <QStandardPaths>
 
 #include <klocalizedstring.h>
+#include <locale.h>
 
 initEffectsThumbnailer::initEffectsThumbnailer() :
     QThread()
