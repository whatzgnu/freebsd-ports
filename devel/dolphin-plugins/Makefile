# $FreeBSD$

PORTNAME=	dolphin-plugins
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	devel kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Plugins for Dolphin file manager

USES=		cmake:outsource tar:xz
USE_KDE4=	kdelibs libkonq kdeprefix automoc4
USE_QT4=	moc_build qmake_build rcc_build uic_build

.include <bsd.port.mk>
