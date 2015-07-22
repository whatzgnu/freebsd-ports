# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kmbox-kf5-git/Makefile 10919 2015-07-21 18:21:29Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.79.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE library for accessing mail storages in MBox format

LICENSE=	LGPL21

LIB_DEPENDS=	libKF5Mime.so:${PORTSDIR}/sysutils/kmime-kf5-git

USE_KDE5=	ecm
USE_QT5=	buildtools_build gui qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB+=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kmbox
KDE_GIT_REVISION=	0b5a05687904679a584833c940cf66bbb0b90435

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
