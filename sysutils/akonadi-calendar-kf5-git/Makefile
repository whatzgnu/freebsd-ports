# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/akonadi-calendar-kf5-git/Makefile 10932 2015-07-21 20:46:59Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.80.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Akonadi Calendar Integration

LICENSE=	LGPL21

LIB_DEPENDS=	libKF5AkonadiCore.so:${PORTSDIR}/deskutils/kdepimlibs-kf5-git \
		libKF5CalendarCore.so:${PORTSDIR}/sysutils/kcalcore-kf5-git \
		libKF5CalendarUtils.so:${PORTSDIR}/sysutils/kcalutils-kf5-git \
		libKF5IdentityManagement.so:${PORTSDIR}/sysutils/kidentitymanagement-kf5-git \
		libKF5MailTransport.so:${PORTSDIR}/sysutils/kmailtransport-kf5-git

USE_KDE5=	codecs ecm kdelibs4support kio wallet
USE_QT5=	buildtools_build qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	akonadi-calendar
KDE_GIT_REVISION=	7286129e575c15e4a80cd9ffb90e50d9eb7253dc

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
