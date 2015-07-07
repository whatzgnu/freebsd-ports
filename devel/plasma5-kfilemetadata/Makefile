# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/plasma5-kfilemetadata/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	kfilemetadata
PORTVERSION=	5.9.2
CATEGORIES=	devel kde # kde-plasma

COMMENT=	Plasma5 library for extracting file metadata

LIB_DEPENDS=	libpoppler-qt5.so:${PORTSDIR}/graphics/poppler-qt5 \
		libtag.so:${PORTSDIR}/audio/taglib \
		libexiv2.so:${PORTSDIR}/graphics/exiv2 \
		libavutil.so:${PORTSDIR}/multimedia/ffmpeg \
		libepub.so:${PORTSDIR}/textproc/ebook-tools

USE_QT5=	core dbus xml
USE_KDE5=	archive config coreaddons dbusaddons ecm i18n kdeprefix service

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

PLIST_SUB+=	PORTVERSION="${PORTVERSION}"

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

