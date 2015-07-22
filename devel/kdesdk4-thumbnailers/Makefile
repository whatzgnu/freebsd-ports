# $FreeBSD$

PORTNAME=	kdesdk-thumbnailers
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	devel kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE thumbnail generator for gettext po files

USES=		cmake:outsource gettext tar:xz
USE_KDE4=	kdelibs kdeprefix automoc4
USE_QT4=	moc_build qmake_build rcc_build uic_build

.include <bsd.port.mk>
