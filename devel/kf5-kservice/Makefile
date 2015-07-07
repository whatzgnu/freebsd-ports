# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/kf5-kservice/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kservice
PORTREVISION=	1
CATEGORIES=	devel kde # kde-framework

COMMENT=	KF5 advanced plugin and service introspection

USE_QT5=	concurrent core dbus gui widgets xml
USE_KDE5=	archive config coreaddons crash dbusaddons \
		doctools ecm i18n kdeprefix windowsystem

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
