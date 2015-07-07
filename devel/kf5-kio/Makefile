# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/kf5-kio/Makefile 10826 2015-07-01 11:36:33Z tcberner $

PORTNAME=	kio
PORTREVISION=	3
CATEGORIES=	devel kde # kde-framework

COMMENT=	KF5 resource and network access abstraction

USES=		desktop-file-utils

USE_QT5=	concurrent core dbus gui network script widgets xml
USE_KDE5=	archive attica5 auth bookmarks codecs completion config \
		configwidgets coreaddons dbusaddons doctools ecm globalaccel \
		guiaddons i18n iconthemes itemviews jobwidgets kdeprefix \
		notifications service solid sonnet textwidgets wallet \
		widgetsaddons windowsystem xmlgui

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
