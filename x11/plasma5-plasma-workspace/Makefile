# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11/plasma5-plasma-workspace/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	plasma-workspace
PORTREVISION=	1 # depend on libdebusmenu-qt5
CATEGORIES=	x11 kde # kde-plasma

COMMENT=	Plasma5 Plasma workspace

RUN_DEPENDS=	iceauth:${PORTSDIR}/x11/iceauth \
		xsetroot:${PORTSDIR}/x11/xsetroot \
		xset:${PORTSDIR}/x11/xset \
		xmessage:${PORTSDIR}/x11/xmessage \
		${LOCALBASE}/libdata/pkgconfig/xkeyboard-config.pc:${PORTSDIR}/x11/xkeyboard-config

LIB_DEPENDS=	libdbusmenu-qt5.so:${PORTSDIR}/devel/libdbusmenu-qt5

USE_QT5=	core dbus gui network qdbus qml paths phonon4 quick \
		quickcontrols script scripttools webkit widgets xml
USE_KDE5=	attica5 auth baloo5 bookmarks codecs completion \
		config configwidgets coreaddons dbusaddons ecm \
		globalaccel guiaddons i18n iconthemes idletime \
		itemviews jobwidgets jsembed kdeprefix kded kdesu kio \
		ksysguard kwin libkscreen notifyconfig plasma-framework \
		runner service solid sonnet texteditor textwidgets \
		threadweaver wayland widgetsaddons windowsystem \
		xmlgui xmlrpcclient

USE_XORG=	xft xkbfile

CMAKE_ARGS+=	-DBUILD_TESTING:BOOL=OFF

OPTIONS_DEFINE= DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

