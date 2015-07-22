# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kalarmcal-kf5-git/Makefile 10928 2015-07-21 19:57:08Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.79.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE API for KAlarm alarms

LICENSE=	LGPL21

LIB_DEPENDS=	libKF5AkonadiCore.so:${PORTSDIR}/deskutils/kdepimlibs-kf5-git \
		libKF5Holidays.so:${PORTSDIR}/sysutils/kholidays-kf5-git \
		libKF5IdentityManagement.so:${PORTSDIR}/sysutils/kidentitymanagement-kf5-git

USE_KDE5=	ecm kdelibs4support
USE_QT5=	buildtools_build gui qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB+=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kalarmcal
KDE_GIT_REVISION=	685af727f884d13fb5494d73473d52a6f1be4b4a

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
