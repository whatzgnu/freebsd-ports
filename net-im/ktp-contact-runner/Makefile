# $FreeBSD: branches/plasma5/KDE/net-im/ktp-contact-runner/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	ktp-contact-runner
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	net-im kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KRunner integration module for KDE Telepathy

LIB_DEPENDS=	libtelepathy-qt5.so:${PORTSDIR}/net-im/telepathy-qt5 \
		libKTpCommonInternals.so:${PORTSDIR}/net-im/ktp-common-internals

USE_KDE5=	ecm i18n service runner
USE_QT5=	buildtools_build core qmake_build
USES=		cmake gettext tar:xz

.include <bsd.port.mk>
