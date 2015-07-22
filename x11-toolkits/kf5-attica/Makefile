# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11-toolkits/kf5-attica/Makefile 10823 2015-06-30 18:21:18Z tcberner $

PORTNAME=	attica
CATEGORIES=	x11-toolkits kde # kde-framework

COMMENT=	Open Collaboration Services API library KDE5 version

USE_QT5=	core gui network widgets
USE_KDE5=	ecm kdeprefix

pre-configure:
	${REINPLACE_CMD} -e '/pkgconfig/ s/$${KDE_INSTALL_LIBDIR}/libdata/' \
		${WRKSRC}/src/CMakeLists.txt

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
