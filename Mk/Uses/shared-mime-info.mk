# $FreeBSD$
#
# handle dependency depends on shared-mime-info and package regen
#
# Feature:	shared-mime-info
# Usage:	USES=shared-mime-info
# Valid ARGS:	does not require args
#
# MAINTAINER: gnome@FreeBSD.org

.if !defined(_INCLUDE_USES_SHARED_MIME_INFO_MK)
_INCLUDE_USES_SHARED_MIME_INFO_MK=	yes

.if !empty(shared-mime-info_ARGS)
IGNORE=	USES=shared-mime-info does not require args
.endif

# Disable this on the TrueOS repo (7/26/16 - Ken Moore)
#  This basically elevates GTK2 as a requirement for all graphical pkgs
#  and this behaviour (updating *.desktop databases) is *not* needed for 
#  many non-GNOME DE's.
#
#  Re-evaluate this functionality if we can find an alternative C/C++  tool

#BUILD_DEPENDS+=	update-mime-database:misc/shared-mime-info
#RUN_DEPENDS+=	update-mime-database:misc/shared-mime-info
#PLIST_FILES+=	"@shared-mime-info share/mime"

.endif
