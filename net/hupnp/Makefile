# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/PORTS/net/hupnp/Makefile 10892 2015-07-12 13:18:43Z tcberner $

PORTNAME=	hupnp
CATEGORIES=	net devel

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Library for building UPnP devices and control points

USES=		gmake qmake tar:xz
USE_QT4=	corelib network xml dbus gui \
		moc_build rcc_build uic_build

QMAKE_ARGS=	"CONFIG+=DISABLE_AV DISABLE_AVTESTAPP DISABLE_TESTAPP"

.include "${.CURDIR}/../../net/hupnp/Makefile.common"
.include <bsd.port.mk>
