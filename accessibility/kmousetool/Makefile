# $FreeBSD$

PORTNAME=	kmousetool
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	accessibility kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Automatic mouse click tool for KDE

USE_KDE4=	kdelibs kdeprefix automoc4
USES=		cmake:outsource tar:xz
USE_QT4=	qmake_build moc_build rcc_build uic_build
USE_XORG=	xtst

.include <bsd.port.mk>
