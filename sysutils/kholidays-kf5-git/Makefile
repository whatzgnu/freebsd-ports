# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kholidays-kf5-git/Makefile 10927 2015-07-21 19:56:33Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.79.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE library for calendar holidays

LICENSE=	LGPL21

USE_KDE5=	ecm emoticons kdelibs4support init itemmodels itemviews
USE_QT5=	buildtools_build core gui qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB+=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kholidays
KDE_GIT_REVISION=	5628f8627430fac399e7a63b72bf8735d4df841a

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
