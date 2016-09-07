# Created by: bsam
# $FreeBSD: head/security/linux-f10-openssl/Makefile 362314 2014-07-20 12:06:46Z rene $

PORTNAME=	openssl
PORTVERSION=	0.9.8g
PORTREVISION=	1
CATEGORIES=	security linux

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	OpenSSL toolkit (Linux Fedora 10)

CONFLICTS=	linux-openssl-[0-9]* linux-c6-openssl-compat-[0-9]*

USES=		linux:f10
USE_LINUX_RPM=	yes

RPMVERSION=	14.fc10
USE_LDCONFIG=	yes

PLIST_SUB+=	PORTVERSION="${PORTVERSION}"
DESCR=		${.CURDIR}/../${PORTNAME}/pkg-descr

.include <bsd.port.mk>
