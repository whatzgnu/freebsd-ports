# $FreeBSD: branches/plasma5/KDE/graphics/libkexiv2/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	libkexiv2
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	graphics kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Exiv2 library interface for KDE

LIB_DEPENDS=	libexiv2.so:${PORTSDIR}/graphics/exiv2

USE_KDE4=	automoc4 kdeprefix kdelibs
USES=		cmake:outsource tar:xz
USE_QT4=	corelib gui xml \
		moc_build qmake_build rcc_build uic_build
USE_LDCONFIG=	yes

pre-configure:
	${REINPLACE_CMD} -e '/pkgconfig/ s/$${LIB_INSTALL_DIR}/libdata/' \
		${WRKSRC}/libkexiv2/CMakeLists.txt

.include <bsd.port.mk>
