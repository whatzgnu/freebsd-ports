# $FreeBSD$
#
# handle dependency depends on desktop-file-utils and package regen
#
# Feature:	desktop-file-utils
# Usage:	USES=desktop-file-utils
# Valid ARGS:	does not require args
#
# MAINTAINER: gnome@FreeBSD.org

.if !defined(_INCLUDE_USES_DESKTOP_FILE_UTILS_MK)
_INCLUDE_USES_DESKTOP_FILE_UTILS_MK=	yes

.if !empty(desktop-file-utils_ARGS)
IGNORE=	USES=desktop-file-utils does not require args
.endif

# Disable this on the TrueOS repo (7/26/16 - Ken Moore)
#  This basically elevates GTK2 as a requirement for all graphical pkgs
#  and this behaviour (updating *.desktop databases) is *not* needed for 
#  many non-GNOME DE's.
#
#  Re-evaluate this functionality if we can find an alternative C/C++  tool

#BUILD_DEPENDS+=	update-desktop-database:devel/desktop-file-utils
#RUN_DEPENDS+=	update-desktop-database:devel/desktop-file-utils
#PLIST_FILES+=	"@desktop-file-utils"

.endif
