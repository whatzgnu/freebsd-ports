# $FreeBSD: branches/plasma5/KDE/net-im/ktp-text-ui/Makefile 10766 2015-06-04 21:08:59Z tcberner $

PORTNAME=	ktp-text-ui
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
PORTREVISION=	1
CATEGORIES=	net-im kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE chat window application

LIB_DEPENDS=	libtelepathy-qt5.so:${PORTSDIR}/net-im/telepathy-qt5 \
		libtelepathy-logger-qt.so:${PORTSDIR}/net-im/telepathy-logger-qt5 \
		libKTpCommonInternals.so:${PORTSDIR}/net-im/ktp-common-internals
RUN_DEPENDS=	${KDE4_PREFIX}/bin/ktp-contactlist:${PORTSDIR}/net-im/ktp-contact-list

USE_KDE5=	archive ecm emoticons i18n iconthemes itemviews kcmutils \
		kdewebkit kio notifications notifyconfig people service \
		sonnet textwidgets widgetsaddons windowsystem xmlgui
USE_QT5=	buildtools_build gui qmake_build webkit
USES=		cmake compiler:c++11-lang gettext tar:xz
USE_LDCONFIG=	yes

.include <bsd.port.mk>
