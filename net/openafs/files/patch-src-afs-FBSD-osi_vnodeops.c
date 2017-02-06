From 11852be1d702794f341c586212f324ce47921e5c Mon Sep 17 00:00:00 2001
From: Benjamin Kaduk <kaduk@mit.edu>
Date: Wed, 27 May 2015 16:13:13 -0400
Subject: [PATCH] afs: Do not supply bogus poll vnodeops for FBSD

We currently provide one which just always returns 1, but the
kernel provides a vop_nopoll which conceptually is the same thing.
That one, however, provides some feature checks and fails when
consumers ask for fancy features that are not portable.

Change-Id: Iba03904aac2883e18a1abdd4f09289b6c6f907c0
---

diff --git src/afs/FBSD/osi_vnodeops.c.orig src/afs/FBSD/osi_vnodeops.c
index 0e55cc1..b2f5956 100644
--- src/afs/FBSD/osi_vnodeops.c.orig
+++ src/afs/FBSD/osi_vnodeops.c
@@ -79,7 +79,6 @@
 static vop_mknod_t	afs_vop_mknod;
 static vop_open_t	afs_vop_open;
 static vop_pathconf_t	afs_vop_pathconf;
-static vop_poll_t	afs_vop_poll;
 static vop_print_t	afs_vop_print;
 static vop_putpages_t	afs_vop_putpages;
 static vop_read_t	afs_vop_read;
@@ -120,7 +119,6 @@
 	.vop_mknod =		afs_vop_mknod,
 	.vop_open =		afs_vop_open,
 	.vop_pathconf =		afs_vop_pathconf,
-	.vop_poll =		afs_vop_poll,
 	.vop_print =		afs_vop_print,
 	.vop_putpages =		afs_vop_putpages,
 	.vop_read =		afs_vop_read,
@@ -157,7 +155,6 @@
 int afs_vop_putpages(struct vop_putpages_args *);
 int afs_vop_ioctl(struct vop_ioctl_args *);
 static int afs_vop_pathconf(struct vop_pathconf_args *);
-int afs_vop_poll(struct vop_poll_args *);
 int afs_vop_fsync(struct vop_fsync_args *);
 int afs_vop_remove(struct vop_remove_args *);
 int afs_vop_link(struct vop_link_args *);
@@ -200,7 +197,7 @@
     {&vop_mknod_desc, (vop_t *) afs_vop_mknod},	/* mknod */
     {&vop_open_desc, (vop_t *) afs_vop_open},	/* open */
     {&vop_pathconf_desc, (vop_t *) afs_vop_pathconf},	/* pathconf */
-    {&vop_poll_desc, (vop_t *) afs_vop_poll},	/* select */
+    {&vop_poll_desc, (vop_t *) vop_nopoll},	/* select */
     {&vop_print_desc, (vop_t *) afs_vop_print},	/* print */
     {&vop_read_desc, (vop_t *) afs_vop_read},	/* read */
     {&vop_readdir_desc, (vop_t *) afs_vop_readdir},	/* readdir */
@@ -1079,22 +1076,6 @@
 	/* No-op call; just return. */
 	return (ENOTTY);
     }
-}
-
-/* ARGSUSED */
-int
-afs_vop_poll(ap)
-     struct vop_poll_args	/* {
-				 * struct vnode *a_vp;
-				 * int  a_events;
-				 * struct ucred *a_cred;
-				 * struct thread *td;
-				 * } */ *ap;
-{
-    /*
-     * We should really check to see if I/O is possible.
-     */
-    return (1);
 }
 
 int
