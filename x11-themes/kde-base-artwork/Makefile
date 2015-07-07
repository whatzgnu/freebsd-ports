# Created by: Raphael Kubo da Costa <rakuco@FreeBSD.org>
# $FreeBSD: branches/plasma5/KDE/x11-themes/kde-base-artwork/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	kde-base-artwork
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	x11-themes kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Base artwork for the KDE Plasma Desktop

LICENSE=	GPLv2

USES=		cmake:outsource tar:xz
USE_KDE4=	automoc4 kdelibs kdeprefix
USE_QT4=	moc_build qmake_build rcc_build uic_build
NO_BUILD=	yes

.include <bsd.port.mk>
