# $FreeBSD: branches/plasma5/KDE/net-im/ktp-contact-list/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	ktp-contact-list
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	net-im kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE instant messaging contact list application

LIB_DEPENDS=	libtelepathy-qt5.so:${PORTSDIR}/net-im/telepathy-qt5 \
		libtelepathy-logger-qt.so:${PORTSDIR}/net-im/telepathy-logger-qt5 \
		libKTpCommonInternals.so:${PORTSDIR}/net-im/ktp-common-internals

USE_KDE5=	dbusaddons ecm i18n iconthemes kcmutils kio notifications notifyconfig people windowsystem xmlgui
USE_QT5=	buildtools_build core gui qmake_build widgets xml
USES=		cmake gettext tar:xz

.include <bsd.port.mk>
