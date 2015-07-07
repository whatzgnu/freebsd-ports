# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11/kf5-frameworkintegration/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	frameworkintegration
CATEGORIES=	x11 kde # kde-framework

COMMENT=	KF5 workspace and cross-framework integration plugins

USE_QT5=	core dbus gui network widgets x11extras xml
USE_KDE5=	attica5 auth bookmarks codecs completion config configwidgets \
		coreaddons dbusaddons ecm globalaccel guiaddons i18n \
		iconthemes itemviews jobwidgets kdeprefix kio notifications \
		oxygen-fonts service solid sonnet textwidgets widgetsaddons \
		windowsystem xmlgui
USE_XORG=	xcursor

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
