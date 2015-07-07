# $FreeBSD$

PORTNAME=	klines
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${PORTNAME}_DESC}

USE_KDE5=	config configwidgets coreaddons dbusaddons ecm guiaddons i18n iconthemes itemviews kio libkdegames newstuff service widgetsaddons xmlgui
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core gui network qmake_build qml quick svg widgets


.include <${.CURDIR}/../kdegames/Makefile.common>
.include <bsd.port.mk>
