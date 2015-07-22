# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kblog-kf5-git/Makefile 10929 2015-07-21 20:10:49Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.79.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE API for weblogging access

LICENSE=	LGPL21

LIB_DEPENDS=	libKF5CalendarCore.so:${PORTSDIR}/sysutils/kcalcore-kf5-git \
		libKF5Syndication.so:${PORTSDIR}/sysutils/syndication-kf5-git

USE_KDE5=	coreaddons ecm kdelibs4support kio xmlrpcclient
USE_QT5=	buildtools_build gui qmake_build webkit
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kblog
KDE_GIT_REVISION=	3cb1fba673db2caf6c00ad252f086eb55a109ef9

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
