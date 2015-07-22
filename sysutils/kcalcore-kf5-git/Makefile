# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kcalcore-kf5-git/Makefile 10923 2015-07-21 19:04:16Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.81.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE calendar access library

LICENSE=	LGPL21

LIB_DEPENDS=	libical.so:${PORTSDIR}/devel/libical

USE_KDE5=	ecm emoticons init itemmodels itemviews kdelibs4support
USE_QT5=	buildtools_build gui qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kcalcore
KDE_GIT_REVISION=	5542f1b05f2a36083039622ff8dae6c13caf8897

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
