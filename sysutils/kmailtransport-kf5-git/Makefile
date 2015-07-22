# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kmailtransport-kf5-git/Makefile 10931 2015-07-21 20:46:13Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.80.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE library to managing mail transport

LICENSE=	LGPL21

LIB_DEPENDS=	libKF5AkonadiCore.so:${PORTSDIR}/deskutils/kdepimlibs-kf5-git \
		libKF5Mime.so:${PORTSDIR}/sysutils/kmime-kf5-git

USE_KDE5=	ecm kcmutils kdelibs4support wallet
USE_QT5=	buildtools_build gui qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kmailtransport
KDE_GIT_REVISION=	1931f0fa5966a7a8f3083a7dd2c685b50e9cf32c

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
