# $FreeBSD$

PORTNAME=	libkipiplugins
PORTVERSION=	${DIGIKAM_VER}
CATEGORIES=	graphics kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${KIPI_PLUGIN}_DESC}

KIPI_PLUGIN=	libkipiplugins
.include "${.CURDIR}/../digikam/Makefile.common"

USE_KDE4+=	libkdcraw libkexiv2 libkipi
USE_LDCONFIG=	yes
CMAKE_ARGS+=	-DKSANE_INCLUDE_DIR:PATH=${LOCALBASE}/include/kde4


.include <bsd.port.mk>
