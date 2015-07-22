# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/syndication-kf5-git/Makefile 10921 2015-07-21 18:32:44Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.79.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE RSS feed handling library

LICENSE=	LGPL21

USE_KDE5=	codecs ecm kio
USE_QT5=	buildtools_build gui qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	syndication
KDE_GIT_REVISION=	be768476024d18f971167c79cfaa38f7ec33490a

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
