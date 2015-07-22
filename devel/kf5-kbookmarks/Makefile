# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/kf5-kbookmarks/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kbookmarks
CATEGORIES=	devel kde # kde-frameworks

COMMENT=	KF5 library for bookmarks and the XBEL format

USE_QT5=	core dbus gui linguisttools widgets xml
USE_KDE5=	attica5 auth codecs completion config configwidgets coreaddons \
		dbusaddons ecm globalaccel guiaddons i18n iconthemes \
		itemviews kdeprefix service sonnet textwidgets widgetsaddons \
		windowsystem xmlgui

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
