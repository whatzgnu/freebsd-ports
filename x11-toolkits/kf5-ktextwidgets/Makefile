# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11-toolkits/kf5-ktextwidgets/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	ktextwidgets
CATEGORIES=	x11-toolkits kde # kde-framework

COMMENT=	KF5 advanced text editing widgets

USE_QT5=	core dbus gui widgets xml
USE_KDE5=	auth codecs completion config configwidgets \
		coreaddons dbusaddons ecm guiaddons i18n \
		iconthemes itemviews kdeprefix service sonnet \
		widgetsaddons windowsystem

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
