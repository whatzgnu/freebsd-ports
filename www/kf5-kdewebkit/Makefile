# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/www/kf5-kdewebkit/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kdewebkit
CATEGORIES=	www kde # kde-framework

COMMENT=	KF5 library providing integration of QtWebKit

USE_QT5=	core dbus gui network opengl printsupport qml quick webkit \
		widgets xml
USE_KDE5=	attica5 auth bookmarks codecs completion config configwidgets \
		coreaddons dbusaddons ecm globalaccel guiaddons i18n \
		iconthemes itemviews jobwidgets kdeprefix kio notifications \
		parts service solid sonnet textwidgets wallet widgetsaddons \
		windowsystem xmlgui

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
