# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11/kf5-kded/Makefile 10891 2015-07-10 21:11:49Z tcberner $

PORTNAME=	kded
CATEGORIES=	x11 kde # kde-framework

COMMENT=	KF5 extensible deamon for providing system level services

USE_QT5=	core dbus gui widgets xml
USE_KDE5=	archive config coreaddons crash dbusaddons doctools ecm i18n \
		init kdeprefix service windowsystem

OPTIONS_DEFINE=	DOCS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
