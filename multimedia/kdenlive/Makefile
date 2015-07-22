# $FreeBSD: branches/plasma5/KDE/multimedia/kdenlive/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	kdenlive
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	multimedia kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${KDE_APPLICATIONS_VERSION}/src

MAINTAINER=	avilla@FreeBSD.org
COMMENT=	KDE professional quality non-linear video editing suite

LICENSE=	GPLv2

LIB_DEPENDS=	libmlt.so:${PORTSDIR}/multimedia/mlt \
		libqjson.so:${PORTSDIR}/devel/qjson
RUN_DEPENDS=	ffmpeg${FFMPEG_SUFX}:${PORTSDIR}/multimedia/ffmpeg${FFMPEG_SUFX}

BUILD_DEPENDS=	${LOCALBASE}/share/xsl/docbook/html/docbook.xsl:${PORTSDIR}/textproc/docbook-xsl \
		docbook-xml>0:${PORTSDIR}/textproc/docbook-xml
		
USE_KDE5=	archive bookmarks config configwidgets \
		coreaddons dbusaddons doctools ecm \
		guiaddons iconthemes kio newstuff \
		notifications notifyconfig plotting \
		widgetsaddons xmlgui
USE_QT5=	core dbus gui opengl script svg xml \
		qmake_build buildtools_build
USE_XORG=	x11
USES=		cmake pkgconfig shared-mime-info tar:xz
CMAKE_ARGS=	-DFFMPEG_SUFFIX:STRING="${FFMPEG_SUFX}"

# Keep in sync with multimedia/mlt, possibly.
FFMPEG_SUFX=	# Currently empty.

OPTIONS_DEFINE=	DOCS DVDWIZARD FREI0R LADSPA NLS SCREENCAST V4L XINE
OPTIONS_DEFAULT=DVDWIZARD FREI0R LADSPA SCREENCAST V4L XINE
OPTIONS_SUB=	yes

DVDWIZARD_DESC=	DVD authoring via DVDAuthor and cdrtools
SCREENCAST_DESC=Screen capture support via recordMyDesktop
V4L_DESC=	Webcam support via Video4Linux
XINE_DESC=	DVD preview support via xine

DOCS_CMAKE_OFF=		-DBUILD_doc:BOOL=FALSE

DVDWIZARD_RUN_DEPENDS=	dvdauthor:${PORTSDIR}/multimedia/dvdauthor \
			cdrecord:${PORTSDIR}/sysutils/cdrtools

FREI0R_RUN_DEPENDS=	frei0r-plugins>=0:${PORTSDIR}/graphics/frei0r-plugins

LADSPA_RUN_DEPENDS=	swhplugins>=0:${PORTSDIR}/audio/swhplugins

NLS_USES=		gettext
NLS_CMAKE_OFF=		-DBUILD_po:BOOL=FALSE

SCREENCAST_RUN_DEPENDS=	recordmydesktop:${PORTSDIR}/multimedia/recordmydesktop

V4L_LIB_DEPENDS=	libv4l2.so:${PORTSDIR}/multimedia/libv4l
V4L_BUILD_DEPENDS=	${LOCALBASE}/include/linux/videodev2.h:${PORTSDIR}/multimedia/v4l_compat
V4L_CMAKE_OFF=		-DWITH_LibV4L2:BOOL=FALSE

XINE_RUN_DEPENDS=	xine:${PORTSDIR}/multimedia/xine

post-patch:
	@${REINPLACE_CMD} -E -e '/${PORTNAME}.(menu|xpm)/ d' \
		-e '/^update_xdg_mimetypes/ d; /SharedMimeInfo/ d' \
		${PATCH_WRKSRC}/data/CMakeLists.txt

.include <bsd.port.mk>
