--- messageviewer/viewer/objecttreeparser.cpp.orig	2015-07-21 14:11:12 UTC
+++ messageviewer/viewer/objecttreeparser.cpp
@@ -79,7 +79,7 @@
 #include <gpgme++/decryptionresult.h>
 #include <gpgme++/key.h>
 #include <gpgme++/keylistresult.h>
-#include <gpgme.h>
+#include <gpgme/gpgme.h>
 #include <kmime/kmime_message.h>
 #include <kmime/kmime_headers.h>
 
