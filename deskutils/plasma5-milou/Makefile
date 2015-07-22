# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/deskutils/plasma5-milou/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	milou
CATEGORIES=	deskutils kde # kde-plasma

COMMENT=	Plasma5 search application built on top of Baloo

USE_QT5=	core dbus gui network qml script widgets xml
USE_KDE5=	attica5 auth bookmarks codecs completion config \
		configwidgets coreaddons dbusaddons \
		ecm globalaccel guiaddons i18n iconthemes \
 		itemviews jobwidgets kdeclarative kdeprefix kio plasma-framework \
		runner service solid sonnet textwidgets widgetsaddons \
		windowsystem xmlgui

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

CFLAGS+=	-I/usr/local/include/KF5/KService

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

