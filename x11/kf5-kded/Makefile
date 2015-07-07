# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11/kf5-kded/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kded
PORTREVISION=	1
CATEGORIES=	x11 kde # kde-framework

COMMENT=	KF5 extensible deamon for providing system level services

USE_QT5=	core dbus gui widgets xml
USE_KDE5=	archive config coreaddons crash dbusaddons doctools ecm i18n \
		init kdeprefix service windowsystem

OPTIONS_DEFINE=	DOCS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
