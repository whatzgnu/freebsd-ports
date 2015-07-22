# $FreeBSD$

PORTNAME=	rocs
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	math kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE Graph theory IDE

LIB_DEPENDS=	libboost_thread.so:${PORTSDIR}/devel/boost-libs \
		libGrantlee_Templates.so:${PORTSDIR}/devel/grantlee5

USE_KDE5=	ecm doctools config coreaddons kdeclarative texteditor
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core qmake_build quick scripttools svg webkit

USE_LDCONFIG=	yes

.include <bsd.port.mk>
