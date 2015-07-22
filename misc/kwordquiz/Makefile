# $FreeBSD$

PORTNAME=	kwordquiz
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	misc kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Flash card trainer for KDE 4

USE_KDE5=	ecm config configwidgets crash kdeclarative doctools emoticons \
		guiaddons i18n iconthemes init itemmodels itemviews kdelibs4support \
		kio newstuff notifications notifyconfig sonnet xmlgui \
		libkeduvocdocument
USES=		cmake:outsource gettext tar:xz
USE_QT5=	qmake_build buildtools_build \
		core printsupport widgets

.include <bsd.port.mk>
