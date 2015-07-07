# $FreeBSD$

PORTNAME=	kstars
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	astro kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE 4 desktop planetarium

LIB_DEPENDS=	libcfitsio.so:${PORTSDIR}/astro/cfitsio \
		libwcs.so:${PORTSDIR}/astro/wcslib
BUILD_DEPENDS=	${LOCALBASE}/libdata/pkgconfig/eigen3.pc:${PORTSDIR}/math/eigen3 \
		xplanet:${PORTSDIR}/astro/xplanet
RUN_DEPENDS=	xplanet:${PORTSDIR}/astro/xplanet

USE_KDE5=	config dbusaddons doctools ecm guiaddons \
		i18n iconthemes init jobwidgets kio \
		newstuff plotting texteditor \
		widgetsaddons windowsystem xmlgui
USES=		cmake:outsource gettext compiler:c++11-lib tar:xz
USE_QT5=	buildtools_build core gui multimedia \
		network opengl printsupport qmake_build \
		qml quick sql svg widgets xml

OPTIONS_DEFINE=	PYKDE

PYKDE_DESC=	Support for updating supernovae data
PYKDE_USE=	KDE4=pykde4_run

.include <bsd.port.mk>
