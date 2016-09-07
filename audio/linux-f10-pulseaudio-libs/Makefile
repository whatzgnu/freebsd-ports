# Created by: avg
# $FreeBSD: head/audio/linux-f10-pulseaudio-libs/Makefile 340722 2014-01-22 17:00:46Z mat $

PORTNAME=	pulseaudio-libs
PORTVERSION=	0.9.14
CATEGORIES=	audio linux
MASTER_SITES=	LOCAL/netchild/rpms/fedora10

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	Libraries for PulseAudio clients (Linux Fedora 10)

USES=		linux:f10
USE_LINUX_RPM=	yes
USE_LINUX=	libasyncns xorglibs

RPMVERSION=	4.fc10
SRC_DISTFILES=	${PORTNAME:S/-libs//}-${PORTVERSION}-${RPMVERSION}${SRC_SUFX}:SOURCE
USE_LDCONFIG=	yes

post-extract:
	@(cd ${WRKSRC}/etc/pulse && ${MV} client.conf client.conf.sample)

post-patch:
	@${FIND} ${WRKSRC} -name "*.orig" -delete

.include <bsd.port.mk>
