--- libgraphtheory/fileformats/dot/dotgrammar.cpp.orig	2015-06-24 12:17:48 UTC
+++ libgraphtheory/fileformats/dot/dotgrammar.cpp
@@ -46,9 +46,11 @@ using namespace GraphTheory;
 #define SKIPPER space | confix("//", eol)[*(char_ - eol)] | confix("/*", "*/")[*(char_ - "*/")]
 
 // workaround for linking boost
-void boost::throw_exception(std::exception const & e)
-{
-    qCritical() << "Exception:" << e.what();
+namespace boost{ 
+    void throw_exception(std::exception const & e)
+    {
+        qCritical() << "Exception:" << e.what();
+    }
 }
 
 // create distinct parser for dot keywords
