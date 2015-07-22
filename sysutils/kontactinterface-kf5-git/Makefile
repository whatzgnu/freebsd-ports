# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/kontactinterface-kf5-git/Makefile 10934 2015-07-21 21:38:54Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.80.0
CATEGORIES=	sysutils kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE glue for embedding KParts into Kontact

LICENSE=	LGPL21

USE_KDE5=	ecm emoticons init itemmodels itemviews kdelibs4support
USE_QT5=	buildtools_build qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext tar:xz
USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kontactinterface
KDE_GIT_REVISION=	0ff10b4893548a2e9595e574eed481e5c415b99b

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
