# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/x11/kf5-kactivities/Makefile 10891 2015-07-10 21:11:49Z tcberner $

PORTNAME=	kactivities
CATEGORIES=	x11 kde # kde-framework

COMMENT=	KF5 runtime and library to organize work in separate activities

LIB_DEPENDS=	libboost_system.so.5:${PORTSDIR}/devel/boost-libs

USE_QT5=	core dbus gui network qml sql widgets xml
USE_KDE5=	attica5 auth bookmarks codecs completion config configwidgets \
		coreaddons dbusaddons ecm globalaccel guiaddons \
		i18n iconthemes itemviews jobwidgets kcmutils kdeclarative kdeprefix kio \
		service solid sonnet textwidgets widgetsaddons windowsystem \
		xmlgui

# hopefully fix crash -- TODO: still necessary?
CXXFLAGS+=	-fno-use-cxa-atexit

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

pre-configure:
	${REINPLACE_CMD} -e '/pkgconfig/ s/$${KDE_INSTALL_LIBDIR}/libdata/' \
		${WRKSRC}/src/lib/stats/CMakeLists.txt
	${REINPLACE_CMD} -e '/pkgconfig/ s/$${KDE_INSTALL_LIBDIR}/libdata/' \
		${WRKSRC}/src/lib/core/CMakeLists.txt

.include "${.CURDIR}/../../x11/kf5-frameworks/bsd.frameworks.mk"
.include <bsd.port.mk>
