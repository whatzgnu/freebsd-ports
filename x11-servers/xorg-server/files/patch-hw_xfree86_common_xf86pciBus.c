--- hw/xfree86/common/xf86pciBus.c.orig	2016-07-19 15:07:12 UTC
+++ hw/xfree86/common/xf86pciBus.c
@@ -1192,6 +1192,7 @@ xf86VideoPtrToDriverList(struct pci_devi
 #ifdef __linux__
         driverList[idx++] = "nouveau";
 #endif
+        driverList[idx++] = "nvidia";
         driverList[idx++] = "nv";
         break;
     }
