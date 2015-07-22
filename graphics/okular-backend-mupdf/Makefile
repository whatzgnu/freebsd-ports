# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/PORTS/graphics/okular-backend-mupdf/Makefile 10888 2015-07-08 20:47:24Z tcberner $

PORTNAME=	okular-backend-mupdf
PORTVERSION=	0.0.5
CATEGORIES=	graphics
DISTNAME=	${PORTNAME}-v${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Okular backend based on mupdf

LIB_DEPENDS=	libopenjpeg.so:${PORTSDIR}/graphics/openjpeg15
BUILD_DEPENDS=	mupdf>=1.7,1:${PORTSDIR}/graphics/mupdf \
		okular>=14.12.0:${PORTSDIR}/graphics/okular
RUN_DEPENDS=	mupdf>=1.7,1:${PORTSDIR}/graphics/mupdf \
		okular>=14.12.0:${PORTSDIR}/graphics/okular

USE_QT4=	corelib moc_build qmake_build rcc_build uic_build
USE_KDE4=	automoc4 kdelibs
USE_OPENSSL=	yes
USES=		cmake:outsource pkgconfig

USE_GITHUB=	yes
GH_ACCOUNT=	xylosper
GH_PROJECT=	okular-backend-mupdf
GH_TAGNAME=	4c6812f # we cannot use 0.0.5-tag, as mupdf is >=1.7.1

.include <bsd.port.mk>
