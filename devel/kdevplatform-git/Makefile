# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD$

PORTNAME=	kdevplatform
PORTVERSION=	4.90.90
CATEGORIES=	devel kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Set of libraries for KDE IDE-like programs -- git version

CONFLICTS=	kdevplatform-kde4-* kdevplatform-1*

LIB_DEPENDS=	libsvn_client-1.so:${PORTSDIR}/devel/subversion                \
		libboost_thread.so:${PORTSDIR}/devel/boost-libs                \
		libGrantlee_Templates.so:${PORTSDIR}/devel/grantlee5           \
		libkomparediff2.so:${PORTSDIR}/textproc/libkomparediff2

USE_KDE5=	archive config guiaddons i18n iconthemes itemmodels itemviews  \
		jobwidgets kcmutils kdeclarative kio newstuff notifications    \
		notifyconfig parts service sonnet texteditor threadweaver      \
		widgetsaddons windowsystem xmlgui
USE_QT5=	concurrent core dbus declarative gui network qml quick script  \
		webkit widgets buildtools_build qmake_build
USES=		cmake:outsource compiler:c++11-lib shebangfix tar:xz
USE_LDCONFIG=	yes

SHEBANG_FILES=	util/kdev_format_source util/kdevplatform_shell_environment.sh

PLIST_SUB+=	SHLIB_VER=9.0.0 \
		SHLIB_SHVER=9 \
		GRANTLEE_VER=5.0

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	yes

NLS_USES=	gettext
NLS_CMAKE_OFF=	-DBUILD_po:BOOL=Off

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
