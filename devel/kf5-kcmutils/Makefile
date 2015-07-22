# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/kf5-kcmutils/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kcmutils
CATEGORIES=	devel kde # kde-framework

COMMENT=	KF5 utilities for working with KCModules

USE_QT5=	core dbus gui qml quick widgets xml
USE_KDE5=	attica5 auth codecs completion config configwidgets coreaddons \
		dbusaddons ecm globalaccel guiaddons i18n iconthemes \
		itemviews kdeclarative kdeprefix service sonnet textwidgets \
		widgetsaddons windowsystem xmlgui

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
