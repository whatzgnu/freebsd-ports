# $FreeBSD$

PORTNAME=	klettres
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	misc kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Alphabet learning tool for KDE

USE_KDE5=	completion configwidgets coreaddons \
		doctools ecm emoticons i18n init \
		itemmodels kdelibs4support newstuff \
		widgetsaddons
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core gui qmake_build svg

.include <bsd.port.mk>
