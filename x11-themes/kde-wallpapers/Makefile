# $FreeBSD: branches/plasma5/KDE/x11-themes/kde-wallpapers/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	kde-wallpapers
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	x11-themes kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Set of wallpapers for the KDE Plasma workspace

USE_KDE4=	automoc4 kdelibs kdeprefix
USES=		cmake:outsource tar:xz
USE_QT4=	moc_build qmake_build rcc_build uic_build

NO_BUILD=	yes

.include <bsd.port.mk>
