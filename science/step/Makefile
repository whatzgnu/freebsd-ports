# $FreeBSD$

PORTNAME=	step
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	science kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE interactive physics simulator

BUILD_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/eigen3.pc:${PORTSDIR}/math/eigen3
LIB_DEPENDS=	libqalculate.so:${PORTSDIR}/math/libqalculate \
		libgsl.so:${PORTSDIR}/math/gsl

USE_KDE5=	config doctools ecm emoticons init itemmodels \
		kdelibs4support khtml newstuff plotting
USES=		cmake:outsource gettext pkgconfig tar:xz
USE_QT5=	buildtools_build core gui network opengl \
		printsupport qmake_build qml quick svg \
		widgets xml

pre-configure:
# Avoid building translations, should the user pass
# CURRENT_LANG to CMake.
	${REINPLACE_CMD} -e '/set(STEP_BUILD_TRANSLATIONS 1)/ d' \
		${WRKSRC}/${PORTNAME}/data/CMakeLists.txt

.include <bsd.port.mk>
