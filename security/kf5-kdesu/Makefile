# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/security/kf5-kdesu/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kdesu
CATEGORIES=	security kde # kde-framework

COMMENT=	KF5 integration with su for elevated privileges

USE_QT5=	core dbus xml
USE_KDE5=	config coreaddons dbusaddons ecm i18n kdeprefix pty service

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
