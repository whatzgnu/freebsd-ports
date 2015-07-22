# $FreeBSD: branches/plasma5/KDE/net-im/ktp-auth-handler/Makefile 10854 2015-07-06 20:36:26Z tcberner $

PORTNAME=	ktp-auth-handler
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	net-im kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KWallet integration module for KDE Telepathy

LIB_DEPENDS=	libqca-qt5.so:${PORTSDIR}/devel/qca-qt5 \
		libtelepathy-qt5.so:${PORTSDIR}/net-im/telepathy-qt5 \
		libKTpCommonInternals.so:${PORTSDIR}/net-im/ktp-common-internals \
		libaccounts-qt5.so:${PORTSDIR}/net-im/libaccounts-qt5 \
		libkaccounts.so:${PORTSDIR}/net-im/kaccounts-integration

USE_KDE5=	ecm i18n kdewebkit kio wallet widgetsaddons
USE_QT5=	buildtools_build core dbus gui network qmake_build webkit

USES=		cmake gettext tar:xz

.include <bsd.port.mk>
