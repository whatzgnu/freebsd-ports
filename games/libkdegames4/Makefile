# $FreeBSD: branches/plasma5/KDE/games/libkdegames4/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	libkdegames
PKGNAMESUFFIX=	4
PORTVERSION=	14.12.3
CATEGORIES=	games kde
MASTER_SITES=	KDE/stable/applications/${PORTVERSION}/src

DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Libraries used by KDE 4 games

USE_KDE4=	kdelibs kdeprefix automoc4
USES=		cmake:outsource tar:xz
USE_QT4=	network phonon xml moc_build qmake_build rcc_build uic_build
USE_LDCONFIG=	yes

OPTIONS_DEFINE=		LOWLATENCY
OPTIONS_DEFAULT=	LOWLATENCY

LOWLATENCY_DESC=	Use OpenAL and libsndfile for lower latency
LOWLATENCY_LIB_DEPENDS=	libsndfile.so:${PORTSDIR}/audio/libsndfile
LOWLATENCY_USES=	openal
LOWLATENCY_CMAKE_ON=	-DWITH_OpenAL=on \
			-DWITH_SndFile=on
LOWLATENCY_CMAKE_OFF=	-DWITH_OpenAL=off \
			-DWITH_SndFile=off

.include <bsd.port.mk>
