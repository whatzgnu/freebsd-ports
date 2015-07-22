# $FreeBSD$

PORTNAME=	ksystemlog
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	sysutils kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE system log application

USE_KDE4=	kdelibs kdeprefix automoc4
USES=		cmake:outsource tar:xz
USE_QT4=	moc_build qmake_build rcc_build uic_build

.include <bsd.port.mk>
