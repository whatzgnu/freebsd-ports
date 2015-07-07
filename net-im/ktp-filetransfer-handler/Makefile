# $FreeBSD: branches/plasma5/KDE/net-im/ktp-filetransfer-handler/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	ktp-filetransfer-handler
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	net-im kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE instant messaging file transfer handler

LIB_DEPENDS=	libtelepathy-qt5.so:${PORTSDIR}/net-im/telepathy-qt5 \
		libKTpCommonInternals.so:${PORTSDIR}/net-im/ktp-common-internals

USE_KDE5=	config coreaddons ecm i18n kio
USE_QT5=	buildtools_build core dbus qmake_build widgets 
USES=		cmake gettext tar:xz

.include <bsd.port.mk>
