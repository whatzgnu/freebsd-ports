# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11/kf5-plasma-framework/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	plasma-framework
PORTREVISION=	1
CATEGORIES=	x11 kde # kde-framework

COMMENT=	KF5 plugin based UI runtime used to write user interfaces

LIB_DEPENDS=	libXrandr.so.2:${PORTSDIR}/x11/libXrandr

USE_QT5=	core dbus gui network qml quick script sql svg \
		widgets x11extras xml
USE_KDE5=	activities archive attica5 auth bookmarks codecs \
		completion config configwidgets coreaddons \
		dbusaddons doctools ecm globalaccel \
		guiaddons i18n iconthemes itemviews jobwidgets \
		kdeclarative kdeprefix kio kpackage service solid sonnet \
		textwidgets widgetsaddons windowsystem xmlgui

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
