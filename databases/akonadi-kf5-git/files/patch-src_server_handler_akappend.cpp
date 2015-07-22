--- src/server/handler/akappend.cpp.orig	2015-07-20 20:20:51 UTC
+++ src/server/handler/akappend.cpp
@@ -31,6 +31,8 @@
 #include "storage/parthelper.h"
 #include "storage/selectquerybuilder.h"
 
+#include <numeric> //std::accumulate
+
 using namespace Akonadi;
 using namespace Akonadi::Server;
 
