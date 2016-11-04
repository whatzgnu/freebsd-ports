--- sys/fs/pefs/pefs_vnops.c.orig	2016-11-04 17:43:05 UTC
+++ sys/fs/pefs/pefs_vnops.c
@@ -320,7 +320,7 @@ pefs_flushkey(struct mount *mp, struct t
 	struct pefs_node *pn;
 	int error;
 
-	cache_purgevfs(mp);
+	cache_purgevfs(mp, true);
 	vflush(mp, 0, 0, td);
 	rootvp = VFS_TO_PEFS(mp)->pm_rootvp;
 #if __FreeBSD_version >= 1000025
@@ -2097,7 +2097,7 @@ lookupvpg:
 			vm_page_reference(m);
 			vm_page_lock(m);
 			VM_OBJECT_WUNLOCK(vp->v_object);
-			vm_page_busy_sleep(m, "pefsmr");
+			vm_page_busy_sleep(m, "pefsmr", true);
 			VM_OBJECT_WLOCK(vp->v_object);
 			goto lookupvpg;
 		}
@@ -2130,7 +2130,7 @@ lookupvpg:
 			vm_page_reference(m);
 			vm_page_lock(m);
 			VM_OBJECT_WUNLOCK(vp->v_object);
-			vm_page_busy_sleep(m, "pefsmr");
+			vm_page_busy_sleep(m, "pefsmr", true);
 			VM_OBJECT_WLOCK(vp->v_object);
 			goto lookupvpg;
 		}
@@ -2414,7 +2414,7 @@ lookupvpg:
 			vm_page_reference(m);
 			vm_page_lock(m);
 			VM_OBJECT_WUNLOCK(vp->v_object);
-			vm_page_busy_sleep(m, "pefsmw");
+			vm_page_busy_sleep(m, "pefsmw", true);
 			VM_OBJECT_WLOCK(vp->v_object);
 			goto lookupvpg;
 		}
