# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11-wm/plasma5-kwin/Makefile 10826 2015-07-01 11:36:33Z tcberner $

PORTNAME=	kwin
CATEGORIES=	x11-wm kde # kde-plasma

COMMENT=	Plasma5 window manager

LIB_DEPENDS=	libXcursor.so.1:${PORTSDIR}/x11/libXcursor \
		libepoxy.so:${PORTSDIR}/graphics/libepoxy

BUILD_DEPENDS=	${LOCALBASE}/include/linux/input.h:${PORTSDIR}/multimedia/v4l_compat

USE_GL=		egl

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

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

# TODO: this should not be needed, as std::log2 should be available with std=c++11... 
post-patch:
	${REINPLACE_CMD} -e 's/std::log2/log2/' \
		${WRKSRC}/effects/lookingglass/lookingglass.cpp

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

