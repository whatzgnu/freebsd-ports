# $FreeBSD$

PORTNAME=	lokalize
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	devel kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Computer-aided translation system

LIB_DEPENDS=	libhunspell-1.3.so:${PORTSDIR}/textproc/hunspell

USE_KDE5=	config coreaddons doctools ecm \
		i18n kio kross notifications \
		sonnet xmlgui
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build qmake_build sql

.include <bsd.port.mk>
