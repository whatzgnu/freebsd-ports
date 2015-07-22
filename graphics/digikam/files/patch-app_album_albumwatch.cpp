--- app/album/albumwatch.cpp.orig	2015-02-26 07:53:00 UTC
+++ app/album/albumwatch.cpp
@@ -278,7 +278,7 @@ void AlbumWatch::slotAlbumAdded(Album* a
             // Disable file watch for OS X and Windows and hope for future
             // improvement (possibly with the improvements planned for
             // QFileSystemWatcher in Qt 5.1)
-#if defined(Q_WS_MAC) || defined(Q_WS_WIN)
+#if defined(Q_WS_MAC) || defined(Q_WS_WIN) || defined(Q_OS_FREEBSD)
             d->dirWatch->addDir(dir, KDirWatch::WatchDirOnly);
 #else
             d->dirWatch->addDir(dir, KDirWatch::WatchFiles | KDirWatch::WatchDirOnly);
