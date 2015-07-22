# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/deskutils/kdepimlibs-kf5-git/Makefile 10920 2015-07-21 18:24:29Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.88.0
CATEGORIES=	deskutils kde
MASTER_SITES=	KDE/stable/${PORTNAME}/src
DIST_SUBDIR=	KDE
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE PIM Libraries

LICENSE=	LGPL21

LIB_DEPENDS=	libboost_thread.so:${PORTSDIR}/devel/boost-libs \
		libKF5CalendarCore.so:${PORTSDIR}/sysutils/kcalcore-kf5-git \
		libKF5Contacts.so:${PORTSDIR}/sysutils/kcontacts-kf5-git \
		libKF5Ldap.so:${PORTSDIR}/sysutils/kldap-kf5-git \
		libKF5Mbox.so:${PORTSDIR}/sysutils/kmbox-kf5-git \
		libKF5Mime.so:${PORTSDIR}/sysutils/kmime-kf5-git \
		libKF5Prison.so:${PORTSDIR}/graphics/prison-kf5-git \
		libKF5AkonadiPrivate.so:${PORTSDIR}/databases/akonadi-kf5-git

USE_KDE5=	auth bookmarks codecs completion configwidgets coreaddons doctools \
		ecm i18n itemviews kio solid textwidgets widgetsaddons xmlgui
USE_QT5=	buildtools_build core dbus designer gui network qmake_build sql widgets xml
USES=		cmake:outsource gmake gettext compiler:c++11-lib shared-mime-info tar:xz
CMAKE_ARGS+=	-DAKONADI_BUILD_TESTS:BOOL=FALSE \
 		-DCMAKE_REQUIRED_INCLUDES:STRING="${LOCALBASE}/include" \
 		-DQT5_BUILD:BOOL=TRUE \
 		-DWITH_SOPRANO:BOOL=FALSE
USE_LDCONFIG=YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}"

KDE_GIT_PROJECT=	kdepimlibs
KDE_GIT_REVISION=	19770328cb36fbad1880138141ee8f9cd66b7b91

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
