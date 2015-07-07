# $FreeBSD$

PORTNAME=	kiten
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	japanese kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Japanese reference/study tool for KDE

USE_KDE5=	archive completion config configwidgets coreaddons \
		doctools ecm khtml xmlgui
USES=		cmake:outsource gettext tar:xz
USE_QT5=	core buildtools_build qmake_build widgets
USE_LDCONFIG=	yes

.include <bsd.port.mk>
