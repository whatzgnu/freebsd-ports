--- libgraphtheory/fileformats/gml/gmlgrammar.cpp.orig	2015-06-24 12:17:48 UTC
+++ libgraphtheory/fileformats/gml/gmlgrammar.cpp
@@ -29,9 +29,12 @@
 using namespace GraphTheory;
 
 // workaround for linking boost
-void boost::throw_exception(std::exception const & e)
+namespace boost
 {
-    qCritical() << "Exception:" << e.what();
+    void throw_exception(std::exception const & e)
+    {
+        qCritical() << "Exception:" << e.what();
+    }
 }
 
 namespace GmlParser
