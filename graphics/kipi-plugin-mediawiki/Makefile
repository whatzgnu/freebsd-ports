# $FreeBSD$

PORTNAME=	kipi-plugin-${KIPI_PLUGIN}
PORTVERSION=	${DIGIKAM_VER}
CATEGORIES=	graphics kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${KIPI_PLUGIN}_DESC}

LIB_DEPENDS=	libmediawiki.so:${PORTSDIR}/net/libmediawiki

KIPI_PLUGIN=	mediawiki
.include "${.CURDIR}/../digikam/Makefile.common"
.include <bsd.port.mk>
