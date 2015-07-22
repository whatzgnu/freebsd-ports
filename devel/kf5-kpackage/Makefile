# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/kf5-kpackage/Makefile 10891 2015-07-10 21:11:49Z tcberner $

PORTNAME=	kpackage
CATEGORIES=	devel kde # kde-framework

COMMENT=	KF5 library to load and install packages

USE_QT5=	core gui linguisttools xml
USE_KDE5=	archive config coreaddons doctools ecm i18n kdeprefix

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
