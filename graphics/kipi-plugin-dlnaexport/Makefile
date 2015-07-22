# $FreeBSD$

PORTNAME=	kipi-plugin-${KIPI_PLUGIN}
PORTVERSION=	${DIGIKAM_VER}
CATEGORIES=	graphics kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	${${KIPI_PLUGIN}_DESC}

LIB_DEPENDS=	libHUpnp.so:${PORTSDIR}/net/hupnp \
		libHUpnpAv.so:${PORTSDIR}/net/hupnpav

KIPI_PLUGIN=	dlnaexport
.include "${.CURDIR}/../digikam/Makefile.common"

# The minidlna backend of this plugins automatically creates a minidlna.conf
# on every execution in ~/.kde4/share/apps/kipi/minidlna.conf. To get it working
# you have to manually chnage the following to the desired network interface.
MINIDLNA_NETWOK_INTERFACES?=	em0

OPTIONS_DEFINE=		MINIDLNA
OPTIONS_DEFAULT=	MINIDLNA
MINIDLNA_RUN_DEPENDS=	minidlnad:${PORTSDIR}/net/minidlna
MINIDLNA_DESC=		Use minilna as dlna backend

post-patch:
	${REINPLACE_CMD} "s#/usr/include#${LOCALBASE}/include#g" \
		${WRKSRC}/cmake/modules/FindHupnp.cmake
	${REINPLACE_CMD} -e "/networkInterfaces/  s/eth0,eth1/${MINIDLNA_NETWOK_INTERFACES}/g" \
		${WRKSRC}/dlnaexport/minidlnamediaserver.cpp

.include <bsd.port.mk>
