# Created by: tcberner
# $FreeBSD: branches/plasma5/KDE/databases/kf5-akonadi/Makefile 10826 2015-07-01 11:36:33Z tcberner $

PORTNAME=	akonadi
PKGNAMEPREFIX=	kf5-
PORTVERSION=	1.13.1 # from git -- the first official release should come with 15.10
PORTREVISION=	2 # strip out binaries/interface definitions
CATEGORIES=	databases kde
MASTER_SITES=	KDE/stable/${PORTNAME}/src
DIST_SUBDIR=	KDE
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Storage server for KDE-Pim

LICENSE=	LGPL21

LIB_DEPENDS=	libboost_thread.so:${PORTSDIR}/devel/boost-libs
# Let process generate meaningful backtrace on core dump.
BUILD_DEPENDS=	xsltproc:${PORTSDIR}/textproc/libxslt
RUN_DEPENDS=	akonadiserver:${PORTSDIR}/databases/akonadi # pull in databases/akonadi for the stuff stripped out

USE_KDE5=	ecm
USES=		cmake:outsource execinfo compiler:c++11-lib tar:xz
USE_QT5=	buildtools_build core dbus gui network qmake_build sql widgets xml
CMAKE_ARGS+=	-DAKONADI_BUILD_TESTS:BOOL=FALSE \
		-DCMAKE_REQUIRED_INCLUDES:STRING="${LOCALBASE}/include" \
		-DQT5_BUILD:BOOL=TRUE \
		-DWITH_SOPRANO:BOOL=FALSE

USE_LDCONFIG=	yes

.include <bsd.port.mk>
