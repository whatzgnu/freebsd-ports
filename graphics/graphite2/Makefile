# $FreeBSD: head/graphics/graphite2/Makefile 410185 2016-03-05 15:42:31Z jbeich $

PORTNAME=	graphite2
PORTVERSION=	1.3.6
CATEGORIES=	graphics print
MASTER_SITES=	SF/silgraphite/${PORTNAME}
DISTFILES=	graphite-${DISTVERSION}${EXTRACT_SUFX}

MAINTAINER=	office@FreeBSD.org
COMMENT=	Rendering capabilities for complex non-Roman writing systems

LICENSE=	GPLv2 LGPL21 MPL
LICENSE_COMB=	dual

USES=		cmake tar:tgz
USE_LDCONFIG=	yes

post-patch:
	@${REINPLACE_CMD} -e 's,/pkgconfig,data/pkgconfig,g' ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
