# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11/plasma5-kwayland/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	kwayland
CATEGORIES=	x11 kde # kde-plasma

COMMENT=	Plasma5 wrapper library for the Wayland libraries

LIB_DEPENDS=	libepoxy.so:${PORTSDIR}/graphics/libepoxy \
		libwayland-client.so:${PORTSDIR}/x11/wayland
USE_GL=		egl
USE_XORG=	xcursor

BUILD_DEPENDS=	${LOCALBASE}/include/linux/input.h:${PORTSDIR}/multimedia/v4l_compat

USE_QT5=	concurrent core dbus gui multimedia network qml \
		quick script uitools widgets x11extras xml
USE_KDE5=	activities archive attica5 auth bookmarks codecs \
		completion config configwidgets coreaddons crash \
		dbusaddons decoration doctools ecm \
		globalaccel guiaddons i18n iconthemes init \
		itemviews jobwidgets kcmutils kdeclarative kdeprefix kio \
		newstuff notifications plasma-framework service \
		solid sonnet textwidgets widgetsaddons \
		windowsystem xmlgui

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

