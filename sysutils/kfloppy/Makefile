# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD$

PORTNAME=	kfloppy
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	sysutils kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Floppy disk formatter for KDE

USE_KDE4=	kdeprefix automoc4 kdelibs
USES=		cmake:outsource tar:xz
USE_QT4=	qmake_build moc_build rcc_build uic_build

.include <bsd.port.mk>
