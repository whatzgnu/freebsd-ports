# Created by: Dima Panov <fluffy@FreeBSD.org>
# $FreeBSD: branches/plasma5/KDE/devel/grantlee/Makefile 10672 2015-04-25 19:17:13Z tcberner $

# Some ports install files into versioned grantlee directory (GRANTLEE_VER)
# they must be fixed whenever grantlee gets version bump
# Known ports:
# deskutils/kdepim4
# devel/kdevplatform
# finance/skrooge
#

PORTNAME=	grantlee
PORTVERSION=	0.5.1
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://downloads.${PORTNAME}.org/ \
		http://www.loegria.net/${PORTNAME}/

MAINTAINER=	kde@FreeBSD.org
COMMENT=	String template engine for Qt 4

LICENSE=	LGPL21

USE_QT4=	corelib gui qtestlib_build script \
		qmake_build moc_build rcc_build uic_build
USES=		cmake:outsource
CMAKE_ARGS+=	-DBUILD_TESTS:BOOL=FALSE
USE_LDCONFIG=	yes

PLIST_SUB=	SHLIB_VER=${PORTVERSION} \
		GRANTLEE_VER=${PORTVERSION:R}

.include <bsd.port.mk>
