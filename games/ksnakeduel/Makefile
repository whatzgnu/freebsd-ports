# $FreeBSD$

PORTNAME=	ksnakeduel
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${PORTNAME}_DESC}

USE_KDE4=	kdelibs kdeprefix libkdegames4 automoc4
USES=		cmake:outsource tar:xz
USE_QT4=	moc_build qmake_build rcc_build uic_build

.include <${.CURDIR}/../kdegames/Makefile.common>
.include <bsd.port.mk>
