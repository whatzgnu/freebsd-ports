# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11-toolkits/kf5-kxmlgui/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kxmlgui
CATEGORIES=	x11-toolkits kde # kde-framework

COMMENT=	KF5 user configurable main windows

USE_QT5=	core dbus gui network printsupport widgets xml
USE_KDE5=	attica5 auth codecs completion config configwidgets \
		coreaddons dbusaddons ecm globalaccel guiaddons \
		i18n iconthemes itemviews kdeprefix service sonnet \
		textwidgets widgetsaddons windowsystem

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
