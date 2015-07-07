# $FreeBSD$

PORTNAME=	granatier
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${PORTNAME}_DESC}

USE_KDE5=	config coreaddons dbusaddons ecm guiaddons i18n iconthemes \
		itemviews kio libkdegames newstuff notifyconfig widgetsaddons \
		xmlgui
USES=		cmake:outsource gettext tar:xz
USE_QT5=	core gui xml buildtools_build qmake_build widgets svg qml quick

.include <${.CURDIR}/../kdegames/Makefile.common>
.include <bsd.port.mk>
