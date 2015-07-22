# $FreeBSD$

PORTNAME=	ksaneplugin
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	graphics kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE 4 plugin for scanning through libksane

USE_KDE4=	kdelibs kdeprefix libksane automoc4
USES=		cmake:outsource tar:xz
USE_QT4=	moc_build qmake_build rcc_build uic_build

.include <bsd.port.mk>
