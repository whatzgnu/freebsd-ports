# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/kf5-kauth/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kauth
CATEGORIES=	devel kde # kde-framework

COMMENT=	KF5 abstraction to system policy and authentication features

LIB_DEPENDS=	libpolkit-qt5-core-1.so:${PORTSDIR}/sysutils/polkit-qt5

USE_QT5=	core dbus gui linguisttools widgets
USE_KDE5=	coreaddons ecm kdeprefix

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
