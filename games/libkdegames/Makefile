# $FreeBSD$

PORTNAME=	libkdegames
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	games kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Libraries used by KDE games

USE_KDE5=	archive bookmarks codecs completion config \
		configwidgets coreaddons crash dbusaddons \
		dnssd ecm emoticons globalaccel guiaddons i18n \
		iconthemes init itemmodels itemviews jobwidgets \
		kdeclarative kdelibs4support kio newstuff service \
		textwidgets widgetsaddons xmlgui
USES=		cmake:outsource tar:xz gettext
USE_QT5=	buildtools_build core qmake_build qml quick svg widgets
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
