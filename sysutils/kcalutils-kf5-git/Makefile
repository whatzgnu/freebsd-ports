# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kcalutils-kf5-git/Makefile 10924 2015-07-21 19:08:38Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.80.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE utility and user interface functions for accessing calendar

LICENSE=	LGPL21

LIB_DEPENDS=	libKF5CalendarCore.so:${PORTSDIR}/sysutils/kcalcore-kf5-git \
		libKF5IdentityManagement.so:${PORTSDIR}/sysutils/kidentitymanagement-kf5-git

USE_KDE5=	ecm codecs config coreaddons kdelibs4support i18n
USE_QT5=	buildtools_build qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kcalutils
KDE_GIT_REVISION=	d9469efae9683808a63e5de0cf658aa658ad9cfe

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
