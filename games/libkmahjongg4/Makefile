# $FreeBSD: branches/plasma5/KDE/games/libkmahjongg4/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	libkmahjongg
PKGNAMESUFFIX=	4
PORTVERSION=	14.12.3
CATEGORIES=	games kde
MASTER_SITES=	KDE/stable/applications/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Library for the Mahjongg Solitaire for KDE 4

USE_KDE4=	kdelibs kdeprefix libkdegames automoc4
USES=		cmake:outsource tar:xz
USE_QT4=	moc_build qmake_build rcc_build uic_build
USE_LDCONFIG=	yes

.include <bsd.port.mk>
