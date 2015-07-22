# $FreeBSD$

PORTNAME=	kipi-plugin-${KIPI_PLUGIN}
PORTVERSION=	${DIGIKAM_VER}
CATEGORIES=	graphics kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${KIPI_PLUGIN}_DESC}

LIB_DEPENDS=	libMagickCore-6.so:${PORTSDIR}/graphics/ImageMagick \
		libQtGLib-2.0.so:${PORTSDIR}/multimedia/gstreamer1-qt4

KIPI_PLUGIN=	videoslideshow
.include "${.CURDIR}/../digikam/Makefile.common"
.include <bsd.port.mk>
