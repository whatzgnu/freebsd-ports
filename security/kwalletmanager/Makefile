# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD$

PORTNAME=	kwalletmanager
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	security kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Password manager for KDE

USE_KDE4=	kdeprefix automoc4 kdelibs
USES=		cmake:outsource gmake tar:xz
USE_QT4=	qmake_build moc_build rcc_build uic_build

.include <bsd.port.mk>
