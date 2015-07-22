# $FreeBSD$

PORTNAME=	bovo
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${PORTNAME}_DESC}

USE_KDE5=	ecm coreaddons xmlgui newstuff kdeclarative\
		libkdegames
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build qmake_build \
		core concurrent gui network qml quick svg widgets

.include <${.CURDIR}/../kdegames/Makefile.common>
.include <bsd.port.mk>
