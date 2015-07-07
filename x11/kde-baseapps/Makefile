# $FreeBSD: branches/plasma5/KDE/x11/kde-baseapps/Makefile 10672 2015-04-25 19:17:13Z tcberner $

PORTNAME=	kde-baseapps
PORTVERSION=	${KDE_APPLICATIONS_VERSION}
CATEGORIES=	x11 kde
MASTER_SITES=	KDE/${KDE_APPLICATIONS_BRANCH}/applications/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Basic applications for KDE

LIB_DEPENDS=	libtidy.so:${PORTSDIR}/www/tidy-lib

USE_GNOME=	glib20
USE_KDE4=	kdelibs kdeprefix baloo baloo-widgets libkonq \
		automoc4 kactivities
USES=		cmake:outsource gettext tar:xz
USE_QT4=	corelib dbus gui script xml \
		moc_build qmake_build rcc_build uic_build
USE_XORG=	x11 xt
USE_LDCONFIG=	yes

CMAKE_ARGS+=	-DCMAKE_REQUIRED_FLAGS:STRING="-L${LOCALBASE}/lib"

OPTIONS_DEFINE=	KONSOLE KWRITE
OPTIONS_DEFAULT=	${OPTIONS_DEFINE}

KONSOLE_DESC=	Install Konsole terminal emulator
KONSOLE_RUN_DEPENDS=	${KDE4_PREFIX}/bin/konsole:${PORTSDIR}/x11/konsole

KWRITE_DESC=	Install KWrite text editor
KWRITE_USE=	KDE4=kate_run

# plasma5 needs applications using kdelibs4. But it provides certain binaries on
# its own, eg bin/baloo. Only install those if the user does not care for kde5.
# For kde5 users they are already provided by the newer ports
OPTIONS_SINGLE= KDEDESKTOP
OPTIONS_SINGLE_KDEDESKTOP=KDE4 KDE5
KDE4_DESC=      You do NOT intend to install/run plasma5
KDE5_DESC=      You intend to run plasma5
KDE5_USE=       KDE5=baloo5_run
OPTIONS_DEFAULT=KDE5
OPTIONS_SUB=    yes


pre-configure:
# Quick hack to avoid building libkonq here
	${REINPLACE_CMD} -e '/add_subdirectory (konq)/d' \
		${WRKSRC}/lib/CMakeLists.txt
	${MKDIR} ${BUILD_WRKSRC}/lib && \
	${LN} -s ${KDE4_PREFIX}/lib/libkonq.so ${BUILD_WRKSRC}/lib

.include <bsd.port.mk>
