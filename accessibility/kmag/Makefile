# $FreeBSD$

PORTNAME=	kmag
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	accessibility kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE Screen magnifier

USE_KDE4=	kdelibs kdeprefix automoc4
USES=		cmake:outsource tar:xz
USE_QT4=	qmake_build moc_build rcc_build uic_build

# Somebody has to create port for libkdeaccessibilityclient first
CMAKE_ARGS+=	-DWITH_QAccessibilityClient=off

.include <bsd.port.mk>
