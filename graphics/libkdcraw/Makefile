# Created by: Dima Panov <fluffy@FreeBSD.org>
# $FreeBSD: branches/plasma5/KDE/graphics/libkdcraw/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	libkdcraw
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	graphics kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	LibRaw interface for KDE

LIB_DEPENDS=	libjasper.so:${PORTSDIR}/graphics/jasper \
		libjpeg.so:${PORTSDIR}/graphics/jpeg \
		liblcms.so:${PORTSDIR}/graphics/lcms \
		libxml2.so:${PORTSDIR}/textproc/libxml2 \
		libraw.so:${PORTSDIR}/graphics/libraw

CMAKE_ARGS+=	-DWITH_OpenMP:BOOL=False \
		-DENABLE_RAWSPEED=True

USE_KDE4=	automoc4 kdeprefix kdelibs
USES=		cmake:outsource pkgconfig tar:xz
USE_QT4=	corelib gui moc_build qmake_build rcc_build uic_build
USE_LDCONFIG=	yes

pre-configure:
	${REINPLACE_CMD} -e '/pkgconfig/ s/$${LIB_INSTALL_DIR}/libdata/' \
		${WRKSRC}/libkdcraw/CMakeLists.txt

.include <bsd.port.mk>
