# $FreeBSD$

PORTNAME=	blinken
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Memory enhancement game for KDE

USE_KDE5=	ecm i18n xmlgui guiaddons doctools dbusaddons
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core gui qmake_build svg widgets phonon4

.include <bsd.port.mk>
