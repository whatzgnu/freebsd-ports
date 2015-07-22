# $FreeBSD$

PORTNAME=	kturtle
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	lang kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Educational programming environment for KDE 4

USE_KDE5=	ecm emoticons i18n init itemmodels \
		kdelibs4support kio newstuff
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core gui qmake_build svg widgets xml

.include <bsd.port.mk>
