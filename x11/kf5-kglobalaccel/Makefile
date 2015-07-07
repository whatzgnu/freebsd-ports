# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11/kf5-kglobalaccel/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kglobalaccel
CATEGORIES=	x11 kde # kde-framework

COMMENT=	KF5 library to add support for global workspace shortcuts

USE_QT5=	core dbus gui linguisttools widgets x11extras
USE_KDE5=	ecm config coreaddons crash dbusaddons i18n kdeprefix

# hopefully fix segfault -- still necessary? TODO
CXXFLAGS+=	-fno-use-cxa-atexit

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
