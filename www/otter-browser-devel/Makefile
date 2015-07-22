# $FreeBSD: branches/plasma5/PORTS/www/otter-browser-devel/Makefile 10712 2015-05-31 12:55:06Z tcberner $

PORTNAME=	otter
PORTVERSION=	20150525
CATEGORIES=	www
# Avoid pkgname conflict with misc/otter
PKGNAMESUFFIX=	-browser
DISTNAME=	${PORTNAME}-v${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Browser based on Qt 5

CONFLICTS=	otter-browser-[0-9].*

USE_QT5=	concurrent core dbus gui multimedia network printsupport \
		script sql webkit widgets \
		buildtools_build qmake_build
USES=		cmake:outsource desktop-file-utils

USE_GITHUB=	yes
GH_ACCOUNT=	OtterBrowser
GH_PROJECT=	otter-browser
GH_TAGNAME=	${GH_COMMIT}
GH_COMMIT=	614a94d

.include <bsd.port.mk>
