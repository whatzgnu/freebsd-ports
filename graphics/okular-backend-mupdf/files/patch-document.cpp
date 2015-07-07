--- document.cpp.orig	2015-04-22 00:17:12 UTC
+++ document.cpp
@@ -11,6 +11,7 @@
 #include "page.hpp"
 #include <QtCore/QFile>
 #include <cstring>
+#include <clocale>
 extern "C" {
 #include <mupdf/fitz.h>
 #include <mupdf/pdf.h>
