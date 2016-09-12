# Created by: bsam
# $FreeBSD: head/lang/linux-f10-tcl85/Makefile 340722 2014-01-22 17:00:46Z mat $

PORTNAME=	tcl
PORTVERSION=	8.5.3
PORTREVISION=	2
CATEGORIES=	lang linux
PKGNAMESUFFIX=	85

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	Tool Command Language (Linux Fedora 10)

CONFLICTS=	linux-f8-tcl84-[0-9]* linux-c6-tcl85-[0-9]*

USES=		linux:f10
USE_LINUX_RPM=	yes
USE_LINUX_RPM_BAD_PERMS=	yes
RPMVERSION=	1.fc10
USE_LDCONFIG=	yes

DESCR=		${.CURDIR}/../${PORTNAME}${PKGNAMESUFFIX}/pkg-descr

.include <bsd.port.mk>
