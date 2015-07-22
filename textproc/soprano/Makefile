# Created by: arved
# $FreeBSD: branches/plasma5/PORTS/textproc/soprano/Makefile 10697 2015-05-26 21:45:50Z tcberner $

PORTNAME=	soprano
PORTVERSION=	2.9.4
CATEGORIES=	textproc
MASTER_SITES=	SF/${PORTNAME}/Soprano/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Qt/C++ RDF framework

LIB_DEPENDS=	libraptor2.so:${PORTSDIR}/textproc/raptor2 \
		librdf.so:${PORTSDIR}/textproc/redland \
		libiodbc.so:${PORTSDIR}/databases/libiodbc

USE_QT4=	corelib dbus network qtestlib_build xml \
		qmake_build moc_build uic_build rcc_build
USES=		cmake:outsource pkgconfig tar:bz2
CMAKE_ARGS+=	-DSOPRANO_DISABLE_SESAME2_BACKEND=yes
USE_LDCONFIG=	yes

OPTIONS_DEFINE=	CLUCENE
OPTIONS_SUB=	yes

CLUCENE_DESC=		Build with CLucene text search engine
CLUCENE_CMAKE_OFF=	-DSOPRANO_DISABLE_CLUCENE_INDEX=yes
CLUCENE_LIB_DEPENDS=	libclucene-core.so:${PORTSDIR}/textproc/clucene

post-patch:
	@${REINPLACE_CMD} -e 's,$${LIB_SUFFIX}/pkgconfig,data/pkgconfig,' \
		${WRKSRC}/CMakeLists.txt
	@${REINPLACE_CMD} -e 's,soprano/cmake,cmake/Modules,' \
		${WRKSRC}/cmake/modules/CMakeLists.txt

.include <bsd.port.mk>
