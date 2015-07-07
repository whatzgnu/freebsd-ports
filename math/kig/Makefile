# $FreeBSD$

PORTNAME=	kig
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	math kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE 4 interactive geometry application

LIB_DEPENDS=	libboost_python.so:${PORTSDIR}/devel/boost-python-libs

USE_KDE5=	archive configwidgets doctools ecm emoticons \
		i18n iconthemes init itemmodels kdelibs4support \
		parts texteditor xmlgui
USES=		cmake:outsource gettext compiler:c++11-lib tar:xz
USE_QT5=	buildtools_build core gui printsupport qmake_build svg widgets

.include <bsd.port.mk>
