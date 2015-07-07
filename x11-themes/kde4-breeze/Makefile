# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11-themes/kde4-breeze/Makefile 10761 2015-06-04 18:47:34Z tcberner $

PORTNAME=	breeze
PKGNAMEPREFIX=	kde4-
PORTVERSION=	${KDE_PLASMA_VERSION}
MASTER_SITES=	KDE/${KDE_PLASMA_BRANCH}/plasma/${KDE_PLASMA_VERSION}
DIST_SUBDIR=	KDE/${PORTVERSION}

CATEGORIES=	x11-themes kde # kde-plasma
COMMENT=	KDE4 breeze

USE_QT4=	corelib moc_build qmake_build rcc_build uic_build 
USE_KDE4=	kdelibs kdeprefix automoc4
USES=		cmake pkgconfig tar:xz
USE_GCC=	4.9+

CMAKE_ARGS=	-DUSE_KDE4:BOOL=TRUE

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include <bsd.port.mk>
