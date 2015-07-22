# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11/kf5-kdelibs4support/Makefile 10891 2015-07-10 21:11:49Z tcberner $

PORTNAME=	kdelibs4support
CATEGORIES=	x11 kde # kde-framework
MASTER_SITE_SUBDIR?=	stable/frameworks/${KDE_FRAMEWORKS_VERSION:R}/portingAids

COMMENT=	KF5 porting aid from KDELibs4

USE_QT5=	concurrent core dbus designer gui network printsupport svg \
		widgets x11extras xml
USE_KDE5=	archive attica5 auth bookmarks codecs completion config \
		configwidgets coreaddons crash dbusaddons designerplugin \
		doctools ecm globalaccel guiaddons i18n iconthemes itemviews \
		jobwidgets kdeprefix kio notifications parts pty service \
		solid sonnet textwidgets unitconversion widgetsaddons \
		windowsystem xmlgui

BUILD_DEPENDS=	p5-URI>=0:${PORTSDIR}/net/p5-URI

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
