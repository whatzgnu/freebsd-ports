# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/kf5-kdeclarative/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kdeclarative
CATEGORIES=	devel kde # kde-framework

COMMENT=	KF5 library providing integration of QML and KDE Frameworks

LIB_DEPENDS=	libepoxy.so:${PORTSDIR}/graphics/libepoxy

USE_QT5=	core dbus gui network qml quick widgets xml
USE_KDE5=	attica5 auth bookmarks codecs completion config configwidgets \
		coreaddons dbusaddons ecm globalaccel guiaddons i18n \
		iconthemes itemviews jobwidgets kdeprefix kio kpackage service solid \
		sonnet textwidgets widgetsaddons windowsystem xmlgui

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
