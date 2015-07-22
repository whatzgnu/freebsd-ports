# $FreeBSD$

PORTNAME=	ktux
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	x11-clocks kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Tux-in-a-Spaceship screen saver

USE_KDE4=	kdelibs kdeprefix workspace automoc4
USES=		cmake:outsource tar:xz
USE_QT4=	qt3support moc_build qmake_build rcc_build uic_build

.include <bsd.port.mk>
