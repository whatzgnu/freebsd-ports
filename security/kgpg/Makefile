# Created by: Martin Wilke <miwi@FreeBSD.org>
# $FreeBSD: branches/plasma5/KDE/security/kgpg/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	kgpg
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	security kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Encryption tool for KDE

RUN_DEPENDS=	gpg2:${PORTSDIR}/security/gnupg

USE_KDE4=	kdeprefix automoc4 kdelibs pimlibs
USES=		cmake:outsource tar:xz
USE_QT4=	qmake_build moc_build rcc_build uic_build

.include <bsd.port.mk>
