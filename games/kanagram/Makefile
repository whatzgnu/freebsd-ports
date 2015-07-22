# $FreeBSD$

PORTNAME=	kanagram
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Letter order game for KDE 4

USE_KDE5=	ecm i18n sonnet config configwidgets crash coreaddons kdeclarative doctools kio newstuff libkeduvocdocument
USES=		cmake:outsource gettext tar:xz
USE_QT5=	core gui opengl qml quick svg widgets xml \
		qmake_build buildtools_build

.include <bsd.port.mk>
