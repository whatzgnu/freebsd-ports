# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/libkgapi-kf5-git/Makefile 10930 2015-07-21 20:23:48Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.74.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE based library to access google services

LICENSE=	LGPL21

LIB_DEPENDS=	libKF5CalendarCore.so:${PORTSDIR}/sysutils/kcalcore-kf5-git \
		libKF5Contacts.so:${PORTSDIR}/sysutils/kcontacts-kf5-git

USE_KDE5=	coreaddons ecm kio windowsystem
USE_QT5=	buildtools_build core gui qmake_build webkit widgets xml
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	libkgapi
KDE_GIT_REVISION=	0062ea1d8f202254622daf0f3abe056681e3f8af

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
