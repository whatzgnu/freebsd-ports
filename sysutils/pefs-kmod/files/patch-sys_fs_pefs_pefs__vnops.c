--- sys/fs/pefs/pefs_vnops.c.orig	2016-06-11 16:45:20.000000000 -0400
+++ sys/fs/pefs/pefs_vnops.c	2016-12-19 15:25:02.086967000 -0500
@@ -320,7 +320,7 @@
 	struct pefs_node *pn;
 	int error;
 
-	cache_purgevfs(mp);
+	cache_purgevfs(mp, true);
 	vflush(mp, 0, 0, td);
 	rootvp = VFS_TO_PEFS(mp)->pm_rootvp;
 #if __FreeBSD_version >= 1000025
@@ -2057,13 +2057,7 @@
 	if (object == NULL)
 		return (0);
 
-	if (object->resident_page_count > 0 ||
-#if __FreeBSD_version >= 1000030
-	    !vm_object_cache_is_empty(object)
-#else
-	    object->cache != NULL
-#endif
-	    )
+	if (object->resident_page_count > 0 )
 		return (1);
 	return (0);
 }
@@ -2097,7 +2091,7 @@
 			vm_page_reference(m);
 			vm_page_lock(m);
 			VM_OBJECT_WUNLOCK(vp->v_object);
-			vm_page_busy_sleep(m, "pefsmr");
+			vm_page_busy_sleep(m, "pefsmr", true);
 			VM_OBJECT_WLOCK(vp->v_object);
 			goto lookupvpg;
 		}
@@ -2130,7 +2124,7 @@
 			vm_page_reference(m);
 			vm_page_lock(m);
 			VM_OBJECT_WUNLOCK(vp->v_object);
-			vm_page_busy_sleep(m, "pefsmr");
+			vm_page_busy_sleep(m, "pefsmr", true);
 			VM_OBJECT_WLOCK(vp->v_object);
 			goto lookupvpg;
 		}
@@ -2414,7 +2408,7 @@
 			vm_page_reference(m);
 			vm_page_lock(m);
 			VM_OBJECT_WUNLOCK(vp->v_object);
-			vm_page_busy_sleep(m, "pefsmw");
+			vm_page_busy_sleep(m, "pefsmw", true);
 			VM_OBJECT_WLOCK(vp->v_object);
 			goto lookupvpg;
 		}
@@ -2440,11 +2434,6 @@
 		}
 		return (EJUSTRETURN);
 	}
-	if (vm_page_is_cached(vp->v_object, idx)) {
-		PEFSDEBUG("pefs_write: free cache: 0x%jx\n",
-		    uio->uio_offset - moffset);
-		vm_page_cache_free(vp->v_object, idx, idx + 1);
-	}
 	MPASS(m == NULL ||
 	    !vm_page_is_valid(m, moffset, bsize - moffset));
 	VM_OBJECT_WUNLOCK(vp->v_object);
@@ -2516,16 +2505,6 @@
 		}
 		return (EJUSTRETURN);
 	}
-#if __FreeBSD_version >= 1000030
-	if (vm_page_is_cached(vp->v_object, idx))
-#else
-	if (__predict_false(vp->v_object->cache != NULL))
-#endif
-	{
-		PEFSDEBUG("pefs_write: free cache: 0x%jx\n",
-		    uio->uio_offset - moffset);
-		vm_page_cache_free(vp->v_object, idx, idx + 1);
-	}
 	MPASS(m == NULL ||
 	    !vm_page_is_valid(m, moffset, bsize - moffset));
 #if __FreeBSD_version >= 1000030
