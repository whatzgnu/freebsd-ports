# $FreeBSD$

PORTNAME=	kteatime
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	x11-clocks kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Handy timer for steeping tea

USE_KDE5=	config crash doctools ecm i18n \
		iconthemes notifications \
		notifyconfig textwidgets \
		widgetsaddons xmlgui
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core dbus gui qmake_build widgets

.include <bsd.port.mk>
