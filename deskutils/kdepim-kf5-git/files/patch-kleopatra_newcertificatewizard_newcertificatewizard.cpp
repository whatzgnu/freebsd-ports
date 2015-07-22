--- kleopatra/newcertificatewizard/newcertificatewizard.cpp.orig	2015-07-21 14:11:12 UTC
+++ kleopatra/newcertificatewizard/newcertificatewizard.cpp
@@ -61,7 +61,7 @@
 
 #include <gpgme++/global.h>
 #include <gpgme++/keygenerationresult.h>
-#include <gpgme.h>
+#include <gpgme/gpgme.h>
 
 #include <KConfigGroup>
 #include <KLocalizedString>
