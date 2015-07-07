# $FreeBSD: branches/plasma5/KDE/x11-themes/kde-icons-oxygen/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	oxygen
PORTVERSION=	15.04.0 # keep in sync with bsd.kde.mk
CATEGORIES=	x11-themes kde
MASTER_SITES=   KDE/stable/applications/${PORTVERSION}/src # keep in sync with bsd.kde.mk
PKGNAMEPREFIX=	kde-icons-
DISTNAME=	${PORTNAME}-icons-${PORTVERSION}
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	The Oxygen icon theme for KDE

USES=		cmake:outsource tar:xz
INSTALL_TARGET=	install
EXTRACT_AFTER_ARGS=	--exclude '${DISTNAME}/scalable'

.include <bsd.port.mk>
