# Created by: bsam
# $FreeBSD: head/devel/linux-f10-allegro/Makefile 340722 2014-01-22 17:00:46Z mat $

PORTNAME=	allegro
PORTVERSION=	4.2.2
PORTREVISION=	1
CATEGORIES=	devel linux

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	Cross-platform game programming library (Linux Fedora 10)

CONFLICTS=	linux-allegro-[0-9]* linux-f8-allegro-[0-9]*

USES=		linux:f10
USE_LINUX_RPM=	yes
USE_LINUX=	xorglibs

RPMVERSION=	10.fc10
USE_LDCONFIG=	yes

DESCR=		${.CURDIR}/../${PORTNAME}/pkg-descr

.include <bsd.port.mk>
