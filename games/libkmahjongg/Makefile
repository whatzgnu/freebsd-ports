# $FreeBSD$

PORTNAME=	libkmahjongg
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Library for the Mahjongg Solitaire for KDE 5

USE_KDE5=	completion config configwidgets coreaddons ecm i18n widgetsaddons
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core gui qmake_build svg widgets

USE_LDCONFIG=	yes

.include <bsd.port.mk>
