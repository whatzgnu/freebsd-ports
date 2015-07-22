# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD$

PORTNAME=	kdevelop
DISTVERSION=	4.90.90
CATEGORIES=	devel kde

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Plugin extensible IDE for KDE -- git version

CONFLICTS=	kdevelop-kde4-4* kdevelop-4*

LIB_DEPENDS=	libKDevPlatformInterfaces.so:${PORTSDIR}/devel/kdevplatform-git
RUN_DEPENDS=	gmake:${PORTSDIR}/devel/gmake

USE_KDE5=	archive config guiaddons emoticons i18n iconthemes init        \
		itemmodels itemviews jobwidgets kcmutils kdeclarative          \
		kdelibs4support kio newstuff notifications notifyconfig parts  \
		plasma-desktop service sonnet texteditor threadweaver          \
		widgetsaddons windowsystem xmlgui
USE_QT5=	concurrent core dbus declarative gui network script webkit     \
		widgets buildtools_build qmake_build
USES=		cmake:outsource compiler:c++11-lib gettext gmake               \
		shared-mime-info tar:xz

post-patch:
	${REINPLACE_CMD} -e '/^update_xdg_mimetypes/ d; /SharedMimeInfo/ d' \
		${PATCH_WRKSRC}/app/CMakeLists.txt

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
