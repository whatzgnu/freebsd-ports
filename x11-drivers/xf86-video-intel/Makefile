# Created by: lesi@FreeBSD.org
# $FreeBSD$

PORTNAME=	xf86-video-intel
PORTVERSION=	2.99.917.20160614
CATEGORIES=	x11-drivers
MASTER_SITES=	LOCAL/kwm \
		http://rainbow-runner.nl/freebsd/

MAINTAINER=	x11@FreeBSD.org
COMMENT=	Driver for Intel integrated graphics chipsets

LIB_DEPENDS=	libxcb-util.so:x11/xcb-util \
		libpciaccess.so:devel/libpciaccess \
		libdrm.so:graphics/libdrm

ONLY_FOR_ARCHS=	amd64 i386
USE_GL=		gl

USE_LDCONFIG=	yes
XORG_CAT=	driver
USE_XORG=	glproto \
		pixman \
		x11 \
		xcb \
		xext \
		xf86driproto \
		xineramaproto \
		xrender \
		presentproto \
		xv \
		xvmc

USES+=		cpe
CPE_VENDOR=	x

INSTALL_TARGET=	install-strip

.include <bsd.port.mk>
