# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/ktnef-kf5-git/Makefile 10925 2015-07-21 19:25:08Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.79.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE API for the handling of TNEF data

LICENSE=	LGPL21

LIB_DEPENDS=	libKF5CalendarCore.so:${PORTSDIR}/sysutils/kcalcore-kf5-git \
		libKF5CalendarUtils.so:${PORTSDIR}/sysutils/kcalutils-kf5-git \
		libKF5Contacts.so:${PORTSDIR}/sysutils/kcontacts-kf5-git

USE_KDE5=	ecm kdelibs4support
USE_QT5=	buildtools_build gui qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	ktnef
KDE_GIT_REVISION=	3a791a51119899e70ea37a49629a6ea6df58a8e4

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
