# $FreeBSD$

PORTNAME=	libksane
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	graphics kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	SANE library interface for KDE

LIB_DEPENDS=	libsane.so:${PORTSDIR}/graphics/sane-backends

USE_KDE4=	kdelibs kdeprefix automoc4
USES=		cmake:outsource tar:xz
USE_QT4=	moc_build qmake_build rcc_build uic_build
USE_LDCONFIG=	yes

pre-configure:
	${REINPLACE_CMD} -e '/pkgconfig/ s/$${LIB_INSTALL_DIR}/libdata/' \
		${WRKSRC}/libksane/CMakeLists.txt

.include <bsd.port.mk>
