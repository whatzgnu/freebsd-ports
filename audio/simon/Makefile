# Created by: alonso@
# $FreeBSD: branches/plasma5/PORTS/audio/simon/Makefile 10485 2014-12-03 13:10:05Z aschai $

PORTNAME=	simon
PORTVERSION=	0.4.1
CATEGORIES=	audio kde
MASTER_SITES=	KDE/stable/${PORTNAME}/${PORTVERSION}/src
DIST_SUBDIR=	KDE

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Speech recognition system using sphinx, ALSA and KDE

LIB_DEPENDS=	libasound.so:${PORTSDIR}/audio/alsa-lib \
		libsamplerate.so:${PORTSDIR}/audio/libsamplerate \
		libpocketsphinx.so:${PORTSDIR}/audio/pocketsphinx \
		libsphinxad.so:${PORTSDIR}/audio/sphinxbase \
		libqwt6.so:${PORTSDIR}/x11-toolkits/qwt6

USE_KDE4=	kdelibs kdeprefix automoc4 pimlibs
USES=		cmake:outsource tar:bz2
USE_QT4=	accessible corelib dbus gui script testlib xml \
		moc_build qmake_build rcc_build uic_build
USE_LDCONFIG=	yes

CMAKE_ARGS+=	-DWITH_OpenCV:BOOL=OFF

PLIST_SUB+=	PORTVERSION="${PORTVERSION}"

.include <bsd.port.mk>
