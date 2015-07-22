# $FreeBSD: branches/plasma5/KDE/net-im/ktp-common-internals/Makefile 10854 2015-07-06 20:36:26Z tcberner $

PORTNAME=	ktp-common-internals
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	net-im kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE Telepathy internal library

LIB_DEPENDS=	libtelepathy-qt5.so:${PORTSDIR}/net-im/telepathy-qt5 \
		libtelepathy-logger-qt.so:${PORTSDIR}/net-im/telepathy-logger-qt5 \
		libotr.so:${PORTSDIR}/security/libotr \
		libaccounts-qt5.so:${PORTSDIR}/net-im/libaccounts-qt5 \
		libkaccounts.so:${PORTSDIR}/net-im/kaccounts-integration

RUN_DEPENDS=	${LOCALBASE}/libexec/mission-control-5:${PORTSDIR}/net-im/telepathy-mission-control

USE_KDE5=	config coreaddons ecm iconthemes kcmutils kio notifications notifyconfig people texteditor wallet widgetsaddons windowsystem
USE_QT5=	buildtools_build core network qmake_build qml
USES=		cmake gettext tar:xz
USE_LDCONFIG=	yes

.include <bsd.port.mk>
