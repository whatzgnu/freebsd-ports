--- dlnaexport/extra/hupnp/src/socket/hmulticast_socket.cpp.orig	2014-09-21 14:11:29 UTC
+++ dlnaexport/extra/hupnp/src/socket/hmulticast_socket.cpp
@@ -32,6 +32,11 @@
 #include <arpa/inet.h>
 #endif
 
+#if defined(Q_OS_FREEBSD)
+#include <sys/types.h>
+#include <arpa/inet.h>
+#endif
+
 #include <QtNetwork/QNetworkProxy>
 
 namespace Herqq
