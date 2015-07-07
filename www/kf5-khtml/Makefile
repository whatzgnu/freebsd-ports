# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/www/kf5-khtml/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	khtml
CATEGORIES=	www kde # kde-framework
MASTER_SITE_SUBDIR?=	stable/frameworks/${KDE_FRAMEWORKS_VERSION:R}/portingAids

COMMENT=	KF5 KTHML rendering engine

USE_QT5=	core dbus gui network printsupport widgets x11extras xml
USE_KDE5=	archive attica5 auth bookmarks codecs completion config \
		configwidgets coreaddons dbusaddons ecm globalaccel guiaddons \
		i18n iconthemes itemviews jobwidgets js kdeprefix kio \
		notifications parts service solid sonnet textwidgets wallet \
		widgetsaddons windowsystem xmlgui

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
