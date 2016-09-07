# Created by: bsam
# $FreeBSD: head/audio/linux-f10-openal/Makefile 362027 2014-07-16 03:47:05Z adamw $

PORTNAME=	openal
PORTVERSION=	0.0.9
CATEGORIES=	audio linux

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	3D positional spatialized sound library (Linux Fedora 10)

CONFLICTS=	linux-openal-[0-9]* linux-f8-openal-[0-9]*

USES=		linux:f10
USE_LINUX_RPM=	yes
USE_LINUX=	alsalib arts esound libaudiofile libvorbis sdl12

RPMVERSION=	0.15.20060204cvs.fc9
USE_LDCONFIG=	yes

PLIST_FILES=	etc/openalrc usr/lib/libopenal.so.0 usr/lib/libopenal.so.0.0.0
PORTDOCS=	AUTHORS COPYING ChangeLog NOTES README TODO
DESCR=		${.CURDIR}/../${PORTNAME}/pkg-descr

.include <bsd.port.mk>
