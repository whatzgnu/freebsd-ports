# $FreeBSD$

PORTNAME=	kmplot
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	math kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Mathematical function plotter for KDE 4

USE_KDE5=	ecm guiaddons emoticons i18n init itemmodels kdelibs4support parts widgetsaddons
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core gui printsupport qmake_build svg widgets

.include <bsd.port.mk>
