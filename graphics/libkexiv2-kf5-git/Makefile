# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/graphics/libkexiv2-kf5-git/Makefile 10899 2015-07-20 14:38:54Z tcberner $

PORTNAME=	libkexiv2-kf5
DISTVERSION=	5.0.0
CATEGORIES=	graphics kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Exiv2 library interface for KDE

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	libexiv2.so:${PORTSDIR}/graphics/exiv2

USE_KDE5=	ecm coreaddons i18n textwidgets
USE_QT5=	buildtools_build core gui qmake_build widgets xml
USES=		cmake:outsource compiler:c++11-lib gettext pkgconfig tar:xz

KDE_GIT_PROJECT=	libkexiv2
KDE_GIT_REVISION=	4ce56dd6ea7514cf2da2e63a9b4416cb4fa30cf7

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
