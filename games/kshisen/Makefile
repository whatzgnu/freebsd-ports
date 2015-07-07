# $FreeBSD$

PORTNAME=	kshisen
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${PORTNAME}_DESC}

LIB_DEPENDS=	libKF5KMahjongglib.so:${PORTSDIR}/games/libkmahjongg

USE_KDE5=	completion config configwidgets coreaddons \
		dnssd ecm i18n kdeclarative kio libkdegames \
		newstuff widgetsaddons xmlgui
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core gui qmake_build svg widgets

.include <${.CURDIR}/../kdegames/Makefile.common>
.include <bsd.port.mk>
