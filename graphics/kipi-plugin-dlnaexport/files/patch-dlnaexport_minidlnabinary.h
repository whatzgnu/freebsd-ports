--- dlnaexport/minidlnabinary.h.orig	2015-07-12 14:02:54 UTC
+++ dlnaexport/minidlnabinary.h
@@ -38,7 +38,7 @@ class MinidlnaBinary : public KPBinaryIf
 public:
 
     MinidlnaBinary()
-        : KPBinaryIface(QString("minidlna"),
+        : KPBinaryIface(QString("minidlnad"),
                         QString("1.0.24"), 
                         QString("Version "),
                         0, 
