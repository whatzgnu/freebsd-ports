# Created by: Dima Panov <fluffy@FreeBSD.org>
# $FreeBSD: branches/plasma5/KDE/devel/grantlee5/Makefile 10846 2015-07-06 14:19:00Z tcberner $

# Some ports install files into versioned grantlee directory (GRANTLEE_VER)
# they must be fixed whenever grantlee gets version bump
# Known ports:
# deskutils/kdepim4
# devel/kdevplatform
# finance/skrooge
#

PORTNAME=	grantlee
PKGNAMESUFFIX=	5
DISTVERSION=	5.0.0
PORTREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://downloads.${PORTNAME}.org/

MAINTAINER=	kde@FreeBSD.org
COMMENT=	String template engine for Qt 5

LICENSE=	LGPL21

USE_QT5=	buildtools_build core gui qmake_build script
USES=		cmake:outsource
CMAKE_ARGS+=	-DBUILD_TESTS:BOOL=FALSE
USE_LDCONFIG=	yes

PLIST_SUB=	SHLIB_VER=${PORTVERSION} \
		GRANTLEE_VER=${PORTVERSION:R}

# fix the header-file location in the cmake generators (first one puts them
# to include/grantlee5, the second one ensures that include/grantlee5 gets
# added to CFLAGS for dependent ports).
post-patch:
	${REINPLACE_CMD} -e '/INCLUDE_INSTALL_DIR/  s#include#include/grantlee5#' \
		${WRKSRC}/CMakeLists.txt
	${REINPLACE_CMD} -e '/INCLUDES DESTINATION/ s#include#include/grantlee5#' \
		${WRKSRC}/templates/lib/CMakeLists.txt \
		${WRKSRC}/textdocument/lib/CMakeLists.txt

.include <bsd.port.mk>
