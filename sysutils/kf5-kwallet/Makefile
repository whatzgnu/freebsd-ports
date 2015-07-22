# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kf5-kwallet/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kwallet
CATEGORIES=	sysutils kde # kde-framework

COMMENT=	KF5 secure and unified container for user passwords

USE_QT5=	core dbus gui widgets xml
USE_KDE5=	auth codecs config configwidgets coreaddons \
		dbusaddons ecm guiaddons i18n iconthemes \
		itemviews kdeprefix notifications service \
		widgetsaddons windowsystem

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
