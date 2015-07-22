# $FreeBSD: branches/plasma5/KDE/net-im/ktp-kded-module/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	ktp-kded-module
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	net-im kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Module for integration of instant messaging into KDE Workspaces

LIB_DEPENDS=	libtelepathy-qt5.so:${PORTSDIR}/net-im/telepathy-qt5 \
		libKTpCommonInternals.so:${PORTSDIR}/net-im/ktp-common-internals

USE_KDE5=	config configwidgets dbusaddons i18n idletime \
		kcmutils kio notifications widgetsaddons
USE_QT5=	buildtools_build core qmake_build
USES=		cmake gettext tar:xz

.include <bsd.port.mk>
