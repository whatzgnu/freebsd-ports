# Created by: Tobias C. Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/net-im/kaccounts-integration/Makefile 10854 2015-07-06 20:36:26Z tcberner $

PORTNAME=	kaccounts-integration
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	net-im kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	TODO

LIB_DEPENDS=	libaccounts-glib.so:${PORTSDIR}/net-im/libaccounts-glib \
		libaccounts-qt5.so:${PORTSDIR}/net-im/libaccounts-qt5 \
		libsignon-qt5.so:${PORTSDIR}/sysutils/signon-qt5 \
		libKF5AkonadiPrivate.so:${PORTSDIR}/databases/kf5-akonadi

USES=		cmake:outsource gettext tar:xz
USE_KDE5=	config coreaddons dbusaddons ecm i18n iconthemes kcmutils kio wallet widgetsaddons
USE_QT5=	buildtools_build core qmake_build widgets

.include <bsd.port.mk>
