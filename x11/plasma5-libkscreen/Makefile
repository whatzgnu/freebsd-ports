# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11/plasma5-libkscreen/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	libkscreen
CATEGORIES=	x11 kde # kde-plasma

COMMENT=	Plasma5 screen management library

USE_XORG=	x11 xrandr

USE_QT5=	core gui x11extras
USE_KDE5=	ecm kdeprefix

pre-configure:
	${REINPLACE_CMD} -e '/pkgconfig/ s/$${LIB_INSTALL_DIR}/libdata/' \
		${WRKSRC}/src/CMakeLists.txt

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

