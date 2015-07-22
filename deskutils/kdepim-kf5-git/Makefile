# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/deskutils/kdepim-kf5-git/Makefile 10935 2015-07-21 22:44:22Z tcberner $

PORTNAME=	${KDE_GIT_PROJECT}-kf5
PORTVERSION=	4.81.0
CATEGORIES=	deskutils kde
MASTER_SITES=	KDE/stable/${PORTNAME}/src
DIST_SUBDIR=	KDE
WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	KDE PIM applications

LICENSE=	LGPL21

LIB_DEPENDS=	libGrantlee_Templates.so:${PORTSDIR}/devel/grantlee5 \
		libKF5AkonadiCalendar.so:${PORTSDIR}/sysutils/akonadi-calendar-kf5-git \
		libKF5AkonadiCore.so:${PORTSDIR}/deskutils/kdepimlibs-kf5-git \
		libKF5AkonadiSearchCore.so:${PORTSDIR}/sysutils/akonadi-search-kf5-git \
		libKF5AlarmCalendar.so:${PORTSDIR}/sysutils/kalarmcal-kf5-git \
		libKF5Blog.so:${PORTSDIR}/sysutils/kblog-kf5-git \
		libKF5CalendarCore.so:${PORTSDIR}/sysutils/kcalcore-kf5-git \
		libKF5CalendarUtils.so:${PORTSDIR}/sysutils/kcalutils-kf5-git \
		libKF5GAPICore.so:${PORTSDIR}/sysutils/libkgapi-kf5-git \
		libKF5Gpgmepp.so:${PORTSDIR}/sysutils/gpgmepp-kf5-git \
		libKF5Holidays.so:${PORTSDIR}/sysutils/kholidays-kf5-git \
		libKF5IMAP.so:${PORTSDIR}/sysutils/kimap-kf5-git \
		libKF5IdentityManagement.so:${PORTSDIR}/sysutils/kidentitymanagement-kf5-git \
		libKF5KontactInterface.so:${PORTSDIR}/sysutils/kontactinterface-kf5-git \
		libKF5MailTransport.so:${PORTSDIR}/sysutils/kmailtransport-kf5-git \
		libKF5PimTextEdit.so:${PORTSDIR}/sysutils/kpimtextedit-kf5-git \
		libKF5Syndication.so:${PORTSDIR}/sysutils/syndication-kf5-git \
		libKF5Tnef.so:${PORTSDIR}/sysutils/ktnef-kf5-git

USE_KDE5=	auth bookmarks codecs completion configwidgets coreaddons dnssd doctools \
		ecm emoticons i18n init itemmodels itemviews kcmutils kdelibs4support \
		khtml kio kross newstuff notifyconfig solid texteditor textwidgets \
		widgetsaddons xmlgui xmlrpcclient
USE_QT5=	buildtools_build core dbus designer gui network qmake_build sql widgets xml
USES=		cmake:outsource gmake gettext compiler:c++11-lib shared-mime-info tar:xz

USE_LDCONFIG=	YES

PLIST_SUB=	SHLIB_VER="${PORTVERSION}" \
		GRANTLEE_VER=5.0

OPTIONS_DEFINE=		INOTIFY
OPTIONS_DEFAULT=	INOTIFY
OPTIONS_SUB=		YES

INOTIFY_DESC=		Filesystem alteration notifications using inotify
INOTIFY_LIB_DEPENDS=	libinotify.so:${PORTSDIR}/devel/libinotify

KDE_GIT_PROJECT=	kdepim
KDE_GIT_REVISION=	7b8c1b7e990c4cbbe80d3c1e131057648fdc36e9

post-extract:
	# Provide a cmake file to find libinotify
	${CP} ${PORTSDIR}/x11/kf5-frameworks/files/FindLibinotify.cmake \
		${WRKSRC}/cmake/modules

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.kde-git.mk"
.include <bsd.port.mk>
