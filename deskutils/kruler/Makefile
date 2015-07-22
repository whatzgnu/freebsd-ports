# $FreeBSD$

PORTNAME=	kruler
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	deskutils kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE screen ruler

USE_KDE5=	ecm doctools i18n notifications windowsystem xmlgui
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core gui qmake_build x11extras   widgets
USE_XORG=	x11

.include <bsd.port.mk>
