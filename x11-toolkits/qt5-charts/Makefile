# $FreeBSD$

PORTNAME=	charts
DISTVERSION=	2.1.0
CATEGORIES=	x11-toolkits
PKGNAMEPREFIX=	qt5-
DISTVERSIONPREFIX=	release-

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Qt 5 charts module

USES=		qmake
USE_GL=		gl
USE_QT5=	core network gui widgets qml quick designer \
		buildtools_build qmake_build

DESCR=		${.CURDIR:H:H}/devel/${_QT_RELNAME}/pkg-descr

USE_GITHUB=	yes
GH_ACCOUNT=	qt
GH_PROJECT=	qtcharts

pre-configure:
	# manuall run syncqt
	mkdir -p ${CONFIGURE_WRKSRC}
	cd ${CONFIGURE_WRKSRC} && ${QT_BINDIR}/syncqt.pl -version ${PORTVERSION}

.include <bsd.port.mk>
