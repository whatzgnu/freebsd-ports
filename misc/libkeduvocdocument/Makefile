# $FreeBSD: branches/plasma5/KDE/misc/libkeduvocdocument/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	libkeduvocdocument
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	misc kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Library for reading and writing vocabulary files

USE_KDE5=	archive ecm i18n kio
USES=		cmake:outsource gettext tar:xz
USE_QT5=	buildtools_build core gui qmake_build xml

.include <bsd.port.mk>
