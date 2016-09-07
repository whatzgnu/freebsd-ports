# Created by: bsam
# $FreeBSD: head/security/linux-f10-nss/Makefile 362314 2014-07-20 12:06:46Z rene $

PORTNAME=	nss
PORTVERSION=	3.12.3.99.3
PORTREVISION=	2
CATEGORIES=	security linux

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	Network Security Services (Linux Fedora 10)

USES=		linux:f10
USE_LINUX_RPM=	yes
USE_LINUX=	nspr sqlite3

RPMVERSION=	2.10.6.fc10
USE_LDCONFIG=	yes

DESCR=		${.CURDIR}/../${PORTNAME}/pkg-descr

.include <bsd.port.mk>
