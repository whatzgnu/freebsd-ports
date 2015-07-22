# $FreeBSD$

PORTNAME=	analitza
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	math kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Library from KDE Education project

USE_KDE5=	ecm
USES=		cmake:outsource tar:xz
USE_QT5=	buildtools_build core qmake_build opengl qml quick svg widgets xml
USE_GL=		glu
USE_LDCONFIG=	yes

.include <bsd.port.mk>
