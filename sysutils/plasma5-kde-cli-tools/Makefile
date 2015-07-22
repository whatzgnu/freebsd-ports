# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/plasma5-kde-cli-tools/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	kde-cli-tools
CATEGORIES=	sysutils kde # kde-plasma

COMMENT=	Plasma5 tools interact with the system.

USE_QT5=	core dbus gui svg widgets x11extras
USE_KDE5=	config ecm emoticons i18n iconthemes \
		init  itemmodels kcmutils \
		kdelibs4support kdesu windowsystem

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

