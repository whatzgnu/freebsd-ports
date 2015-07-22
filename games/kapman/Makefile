# $FreeBSD$

PORTNAME=	kapman
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${PORTNAME}_DESC}

USE_KDE5=	ecm coreaddons config windowsystem i18n configwidgets xmlgui notifyconfig libkdegames
USES=		cmake:outsource gettext tar:xz
USE_QT5=	core gui svg widgets xml \
		qmake_build buildtools_build

.include <${.CURDIR}/../kdegames/Makefile.common>
.include <bsd.port.mk>
