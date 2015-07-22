# $FreeBSD: branches/plasma5/KDE/print/kde-print-manager/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	print-manager
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	print kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Printer manager for KDE

LIB_DEPENDS=	libcups.so:${PORTSDIR}/print/cups-client

USES=		cmake:outsource gettext tar:xz
USE_KDE5=	config configwidgets coreaddons dbusaddons \
		ecm i18n iconthemes itemviews kcmutils kio \
		notifications plasma-framework \
		widgetsaddons windowsystem
USE_QT5=	buildtools_build core dbus network \
		qmake_build qml quick widgets


.include <bsd.port.mk>
