--- hupnp/src/socket/hmulticast_socket.cpp.orig	2012-02-06 20:35:31 UTC
+++ hupnp/src/socket/hmulticast_socket.cpp
@@ -25,9 +25,11 @@
 #ifdef Q_OS_WIN
 #include <winsock2.h>
 #include <ws2tcpip.h>
-#elif Q_OS_SYMBIAN || Q_OS_FREEBSD
+#elif defined(Q_OS_SYMBIAN) || defined(Q_OS_FREEBSD)
+#include <arpa/inet.h>
 #include <netinet/in.h>
 #include <sys/socket.h>
+#include <sys/types.h>
 #else
 #include <arpa/inet.h>
 #endif
