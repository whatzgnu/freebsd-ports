# Created by: Tobias C. Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/net-im/kaccounts-providers/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	kaccounts-providers
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	net-im kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	TODO

LIB_DEPENDS=	libaccounts-glib.so:${PORTSDIR}/net-im/libaccounts-glib

USES=		cmake:outsource pkgconfig tar:xz
USE_GNOME=	intltool
USE_KDE5=	ecm # pull in ecm for version numbers 

#install to ${LOCALBASE}:
pre-configure:
	${REINPLACE_CMD} -e 's,/etc,${LOCALBASE}/etc,' \
		${WRKSRC}/webkit-options/CMakeLists.txt


.include <bsd.port.mk>
