# $FreeBSD$

PORTNAME=	kipi-plugin-${KIPI_PLUGIN}
PORTVERSION=	${DIGIKAM_VER}
CATEGORIES=	graphics kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${KIPI_PLUGIN}_DESC}

LIB_DEPENDS=	libopencv_legacy.so:${PORTSDIR}/graphics/opencv

KIPI_PLUGIN=	removeredeyes
.include "${.CURDIR}/../digikam/Makefile.common"
.include <bsd.port.mk>
