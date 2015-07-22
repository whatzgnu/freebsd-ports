# $FreeBSD: branches/plasma5/KDE/net-im/ktp-approver/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	ktp-approver
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	net-im kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE instant messaging notifier

LIB_DEPENDS=	libtelepathy-qt5.so:${PORTSDIR}/net-im/telepathy-qt5 \
		libKTpCommonInternals.so:${PORTSDIR}/net-im/ktp-common-internals
RUN_DEPENDS=	${KDE_PREFIX}/bin/ktp-contactlist:${PORTSDIR}/net-im/ktp-contact-list

USE_KDE5=	ecm dbusaddons service i18n notifications
USE_QT5=	buildtools_build core qmake_build
USES=		cmake gettext tar:xz

.include <bsd.port.mk>
