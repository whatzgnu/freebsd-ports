# $FreeBSD$

PORTNAME=	kgeography
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	misc kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE geography trainer

USE_KDE5=	configwidgets coreaddons doctools ecm i18n iconthemes \
		itemviews service widgetsaddons xmlgui
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build gui qmake_build widgets xml

.include <bsd.port.mk>
