# $FreeBSD$

PORTNAME=	bomber
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${PORTNAME}_DESC}

USE_KDE5=	ecm coreaddons config dbusaddons i18n configwidgets xmlgui kio libkdegames
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build qmake_build core gui widgets qml quick phonon4

.include <${.CURDIR}/../kdegames/Makefile.common>
.include <bsd.port.mk>
