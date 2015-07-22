# Created by: Dima Panov <fluffy@FreeBSD.org>
# $FreeBSD: branches/plasma5/KDE/graphics/libkipi/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	libkipi
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	graphics kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE Image Plugin Interface

USE_KDE4=	automoc4 kdeprefix kdelibs
USES=		cmake:outsource tar:xz
USE_QT4=	gui moc_build qmake_build rcc_build uic_build
USE_LDCONFIG=	yes

pre-configure:
	${REINPLACE_CMD} -e '/pkgconfig/ s/$${LIB_INSTALL_DIR}/libdata/' \
		${WRKSRC}/libkipi/CMakeLists.txt
# remove BOM:
	${REINPLACE_CMD} -e '1 s|^.*/|/|g' \
		${WRKSRC}/tests/kipitestmainwindow.cpp

.include <bsd.port.mk>
