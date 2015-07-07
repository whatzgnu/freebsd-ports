# $FreeBSD: branches/plasma5/KDE/graphics/kamera/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	kamera
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	graphics kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Digital camera manager for KDE 4

LIB_DEPENDS=	libgphoto2.so:${PORTSDIR}/graphics/libgphoto2

USE_KDE4=	kdelibs kdeprefix automoc4
USES=		cmake:outsource tar:xz
USE_QT4=	moc_build qmake_build rcc_build uic_build

.include <bsd.port.mk>
