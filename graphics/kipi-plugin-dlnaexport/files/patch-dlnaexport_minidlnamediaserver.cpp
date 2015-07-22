--- dlnaexport/minidlnamediaserver.cpp.orig	2015-06-15 09:29:05 UTC
+++ dlnaexport/minidlnamediaserver.cpp
@@ -54,7 +54,9 @@ public:
         rootContainer      = "P";
         modelNo            = "1";
         filePath           = "";
-        minidlnaBinaryPath = "minidlna";
+        minidlnaBinaryPath = "/usr/local/sbin/minidlnad"; /* FreeBSD: fix the binary path */
+        logDirectory       = "/tmp";                      /* FreeBSD: normal users do not have rights in /var/log */
+        dbDirectory        = "/tmp";                      /* FreeBSD: normal users do not have rights in /var/db */ 
     }
 
     QString port;
@@ -68,6 +70,8 @@ public:
     QString filePath;
     QStringList directories;
     QString minidlnaBinaryPath;
+    QString logDirectory;
+    QString dbDirectory;
 };
 
 MinidlnaServer::MinidlnaServer(QObject* const parent)
@@ -102,7 +106,8 @@ void MinidlnaServer::generateConfigFile(
     out << "serial=" << d->serial << "\n";
     out << "model_number=" << d->modelNo << "\n";
     out << "root_container=" << d->rootContainer << "\n";
-
+    out << "log_dir=" << d->logDirectory << "\n";
+    out << "db_dir=" << d->dbDirectory << "\n";     
     file.close();
 }
 
