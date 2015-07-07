# $FreeBSD$

PORTNAME=	ktimer
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	x11-clocks kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Countdown launcher for KDE

USE_KDE5=	dbusaddons doctools ecm i18n iconthemes \
		kio notifications widgetsaddons xmlgui
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core gui qmake_build widgets

.include <bsd.port.mk>
