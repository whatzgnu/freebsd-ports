# $FreeBSD: branches/plasma5/KDE/net-im/telepathy-logger-qt5/Makefile 10714 2015-05-31 13:01:36Z tcberner $

PORTNAME=	telepathy-logger-qt5
PORTVERSION=	15.04.0
CATEGORIES=	net-im
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR=	stable/${PORTNAME:C/5$//}/${PORTVERSION:R}/src
DISTNAME=	${PORTNAME:C/5$//}-${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Qt binding for Telepathy Logger

LICENSE=	LGPL21

CONFLICTS=	telepathy-logger-qt4

LIB_DEPENDS=	libdbus-1.so:${PORTSDIR}/devel/dbus \
		libdbus-glib-1.so:${PORTSDIR}/devel/dbus-glib \
		libtelepathy-glib.so:${PORTSDIR}/net-im/telepathy-glib \
		libtelepathy-logger.so:${PORTSDIR}/net-im/telepathy-logger \
		libtelepathy-qt5.so:${PORTSDIR}/net-im/telepathy-qt5

USE_GNOME=	glib20 libxml2
USE_KDE5=	ecm
USE_QT5=	core buildtools_build dbus network qmake_build xml
USES=		bison:build cmake pkgconfig python:build tar:xz
CMAKE_ARGS=	-DUSE_COMMON_CMAKE_PACKAGE_CONFIG_DIR:BOOL=True
USE_LDCONFIG=	yes

.include <bsd.port.mk>
