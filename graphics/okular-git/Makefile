# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/graphics/okular-git/Makefile 10899 2015-07-20 14:38:54Z tcberner $

PORTNAME=	okular
PORTVERSION=	1.0.0
CATEGORIES=	graphics kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE universal document viewer - git version

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	libKF5KExiv2.so:${PORTSDIR}/graphics/libkexiv2-kf5-git \
		libchm.so:${PORTSDIR}/misc/chmlib \
		libdjvulibre.so:${PORTSDIR}/graphics/djvulibre \
		libepub.so:${PORTSDIR}/textproc/ebook-tools \
		libjpeg.so:${PORTSDIR}/graphics/jpeg \
		libpoppler-qt5.so:${PORTSDIR}/graphics/poppler-qt5 \
		libqca-qt5.so:${PORTSDIR}/devel/qca-qt5 \
		libspectre.so:${PORTSDIR}/print/libspectre \
		libtiff.so:${PORTSDIR}/graphics/tiff

CONFLICTS=	okular-[0-9]*

USE_KDE5=	activities archive bookmarks config configwidgets coreaddons \
		dbusaddons js kdelibs4support khtml kio parts pty \
		threadweaver wallet emoticons itemmodels init ecm libkscreen
USE_QT5=	core dbus gui network printsupport qml quick svg \
		widgets buildtools_build qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext pkgconfig tar:xz

OPTIONS_DEFINE=	DOCS
OPTIONS_SUB=	YES

KDE_GIT_REVISION=	c2fc0199b8f7cf1f0a4bfee0568fa68ec8d1d6ab

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
