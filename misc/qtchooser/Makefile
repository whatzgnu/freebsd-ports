# $FreeBSD$

PORTNAME=	qtchooser
PORTVERSION=	39
CATEGORIES=	misc
MASTER_SITES=	http://macieira.org/${PORTNAME}/
DIST_SUBDIR=	KDE
DISTNAME=	${PORTNAME}-${PORTVERSION}-${GIT_REV}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Qt tool wrapper

LICENSE=	GPLv3 LGPL21
LICENSE_COMB=	dual

GIT_REV=	g4717841

USES=		gmake
DESTDIRNAME=	INSTALL_ROOT
MAKE_ARGS=	prefix=${PREFIX}

post-patch:
	@${REINPLACE_CMD} -e 's,/etc/xdg,${LOCALBASE}/etc/xdg,' \
		${WRKSRC}/src/${PORTNAME}/main.cpp

.include <bsd.port.mk>
