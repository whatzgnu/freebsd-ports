# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/PORTS/graphics/prison-kf5-git/Makefile 10904 2015-07-20 17:34:46Z tcberner $

PORTNAME=	prison-kf5
PORTVERSION=	1.2.0
CATEGORIES=	graphics kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	API to prodcue barcodes - git version

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libdmtx.so:${PORTSDIR}/graphics/libdmtx \
		libqrencode.so:${PORTSDIR}/graphics/libqrencode

USE_KDE5=	ecm
USE_QT5=	buildtools_build core gui qmake_build widgets
USES=		cmake:outsource tar:xz

KDE_GIT_PROJECT=	prison
KDE_GIT_REVISION=	8f25e5a557ca402d3df538c6d0bdad4481b26656

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
