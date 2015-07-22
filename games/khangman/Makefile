# $FreeBSD$

PORTNAME=	khangman
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Hangman game for KDE 4

USE_KDE5=	completion config configwidgets coreaddons \
		crash doctools ecm i18n kdeclarative \
		libkeduvocdocument newstuff notifications xmlgui
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core gui network qmake_build \
		qml quick svg widgets

USE_LDCONFIG=	yes

.include <bsd.port.mk>
