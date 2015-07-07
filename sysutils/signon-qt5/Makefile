# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/signon-qt5/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	signon
PORTVERSION=	8.57
CATEGORIES=	sysutils kde
MASTER_SITES=	https://sources.archlinux.org/other/packages/${PORTNAME}/ # TODO: github

MAINTAINER=	kde@FreeBSD.org
COMMENT=	TODO

# # TODO: do not build/install doc -- done, see files/patch-signon.pro
# BUILD_DEPENDS=	doxygen:${PORTSDIR}/devel/doxygen \
# 		dot:${PORTSDIR}/graphics/graphviz

USES=		gettext pathfix pkgconfig python qmake tar:bz2
USE_QT5=	buildtools_build core dbus gui network qmake_build sql testlib xml

pre-configure:
	#fix pkgconfig location
	${REINPLACE_CMD} -e 's,$$$${INSTALL_LIBDIR},${LOCALBASE}/libdata,' \
		${WRKSRC}/common-pkgconfig.pri
	#make it find qdbusxml2ccp (as ${QT_BINDIR} is not in PATH)
	${REINPLACE_CMD} -e 's,qdbusxml2cpp,${QT_BINDIR}/qdbusxml2cpp,' \
		${WRKSRC}/src/signond/signond.pro
	#correctly install signond.conf
	${REINPLACE_CMD} -e '/conf_file.path/ s,/etc/,${LOCALBASE}/etc/,' \
		${WRKSRC}/src/signond/signond.pro
	#find moved signond.conf
	${REINPLACE_CMD} -e 's,/etc,${LOCALBASE}/etc,' \
		${WRKSRC}/src/signond/signondaemon.cpp
.include <bsd.port.mk>
