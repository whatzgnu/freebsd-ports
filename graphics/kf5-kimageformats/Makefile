# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/graphics/kf5-kimageformats/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	kimageformats
CATEGORIES=	graphics kde # kde-framework

COMMENT=	KF5 library providing support for additional image formats

LIB_DEPENDS=	libIlmImf.so:${PORTSDIR}/graphics/OpenEXR

USE_QT5=	core gui printsupport widgets
USE_KDE5=	ecm kdeprefix

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
