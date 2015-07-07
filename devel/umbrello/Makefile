# $FreeBSD$

PORTNAME=	umbrello
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	devel kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	UML modeller for KDE

LIB_DEPENDS=	libboost_thread.so:${PORTSDIR}/devel/boost-libs

USE_KDE4=	kdelibs kdeprefix automoc4
USE_GNOME=	libxml2 libxslt
USES=		cmake:outsource tar:xz
USE_QT4=	moc_build qmake_build rcc_build uic_build

.include <bsd.port.mk>
