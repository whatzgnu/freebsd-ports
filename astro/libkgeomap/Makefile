# $FreeBSD: branches/plasma5/KDE/astro/libkgeomap/Makefile 10687 2015-05-10 08:12:48Z tcberner $

PORTNAME=	libkgeomap
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	astro kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE4 library for browsing photos on a map

BUILD_DEPENDS=	${LOCALBASE}/include/boost/graph/buffer_concepts.hpp:${PORTSDIR}/devel/boost-libs
LIB_DEPENDS=	libopencv_legacy.so:${PORTSDIR}/graphics/opencv

USE_KDE4=	automoc4 kdeprefix kdelibs marble
USE_QT4=  	corelib qmake_build moc_build rcc_build uic_build
USES=		cmake pkgconfig tar:xz

USE_LDCONFIG=	yes

post-patch:
	${REINPLACE_CMD} -e '/pkgconfig/s|$${LIB_INSTALL_DIR}|libdata|' \
		${WRKSRC}/libkgeomap/CMakeLists.txt

.include <bsd.port.mk>
