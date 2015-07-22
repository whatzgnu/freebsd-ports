# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/lang/kf5-kross/Makefile 10891 2015-07-10 21:11:49Z tcberner $

PORTNAME=	kross
CATEGORIES=	lang kde # kde-framework
MASTER_SITE_SUBDIR?=	stable/frameworks/${KDE_FRAMEWORKS_VERSION:R}/portingAids

COMMENT=	KF5 multi-language application scripting

USE_QT5=	core dbus gui network script uitools widgets xml
USE_KDE5=	archive attica5 auth bookmarks codecs completion config \
		configwidgets coreaddons dbusaddons doctools ecm \
		globalaccel guiaddons i18n iconthemes itemviews \
		jobwidgets kdeprefix kio notifications parts service \
		solid sonnet textwidgets widgetsaddons windowsystem \
		xmlgui

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
