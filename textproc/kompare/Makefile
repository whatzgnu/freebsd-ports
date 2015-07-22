# $FreeBSD$

PORTNAME=	kompare
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	textproc kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Diff/Patch Frontend

LIB_DEPENDS=	libkomparediff2.so:${PORTSDIR}/textproc/libkomparediff2

USE_KDE5=	ecm codecs doctools config coreaddons texteditor
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build qmake_build

.include <bsd.port.mk>
