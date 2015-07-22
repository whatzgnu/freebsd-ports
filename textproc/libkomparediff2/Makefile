# $FreeBSD$

PORTNAME=	libkomparediff2
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	textproc kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Library to compare files and strings

USES=		cmake:outsource gettext tar:xz
USE_KDE5=	codecs config coreaddons ecm i18n kio parts xmlgui
USE_QT5=	buildtools_build core qmake_build widgets
USE_LDCONFIG=	yes

.include <bsd.port.mk>
