# $FreeBSD: branches/plasma5/KDE/net-im/ktp-accounts-kcm/Makefile 10766 2015-06-04 21:08:59Z tcberner $

PORTNAME=	ktp-accounts-kcm
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
PORTREVISION=	1
CATEGORIES=	net-im kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE instant messaging account management module

LIB_DEPENDS=	libtelepathy-qt5.so:${PORTSDIR}/net-im/telepathy-qt5 \
		libtelepathy-logger-qt.so:${PORTSDIR}/net-im/telepathy-logger-qt5 \
		libKTpCommonInternals.so:${PORTSDIR}/net-im/ktp-common-internals \
		libKF5AkonadiPrivate.so:${PORTSDIR}/databases/akonadi-kf5-git \
		libsignon-qt5.so:${PORTSDIR}/sysutils/signon-qt5

RUN_DEPENDS=	${KDE4_PREFIX}/bin/ktp-contactlist:${PORTSDIR}/net-im/ktp-contact-list

USE_KDE5=	config coreaddons ecm iconthemes kcmutils kio notifications \
		notifyconfig texteditor wallet widgetsaddons windowsystem
USE_QT5=	buildtools_build core qmake_build qml sql
USES=		cmake gettext pkgconfig tar:xz
USE_GNOME=	intltool
USE_LDCONFIG=	yes

OPTIONS_DEFINE=	HAZE IRC JABBER SALUT
OPTIONS_DEFAULT=JABBER

HAZE_DESC=	libpurple protocols support
HAZE_RUN_DEPENDS=	${LOCALBASE}/libexec/telepathy-haze:${PORTSDIR}/net-im/telepathy-haze

IRC_DESC=	Internet Relay Chat support
IRC_RUN_DEPENDS=	${LOCALBASE}/libexec/telepathy-idle:${PORTSDIR}/net-im/telepathy-idle

JABBER_RUN_DEPENDS=	${LOCALBASE}/libexec/telepathy-gabble:${PORTSDIR}/net-im/telepathy-gabble

SALUT_DESC=	Link-local (serverless) XMPP support
SALUT_RUN_DEPENDS=	${LOCALBASE}/libexec/telepathy-salut:${PORTSDIR}/net-im/telepathy-salut

.include <bsd.port.mk>
