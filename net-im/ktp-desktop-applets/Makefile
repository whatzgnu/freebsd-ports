# $FreeBSD: branches/plasma5/KDE/net-im/ktp-desktop-applets/Makefile 10766 2015-06-04 21:08:59Z tcberner $

PORTNAME=	ktp-desktop-applets
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
PORTREVISION=	1
CATEGORIES=	net-im kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE instant messaging plasma widgets

LIB_DEPENDS=	libKTpCommonInternals.so:${PORTSDIR}/net-im/ktp-common-internals

USE_KDE5=	ecm plasma-framework windowsystem
USE_QT5=	buildtools_build core qmake_build
USES=		cmake gettext tar:xz

.include <bsd.port.mk>
