# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/plasma5-ksysguard/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	ksysguard
PORTREVISION=	4
CATEGORIES=	sysutils kde # kde-plasma

COMMENT=	Plasma5 utility to track and control the running processes

USE_QT5=	core dbus gui network printsupport widgets xml
USE_KDE5=	archive attica5 auth bookmarks codecs completion \
		config configwidgets coreaddons crash dbusaddons \
		designerplugin doctools ecm emoticons globalaccel \
		guiaddons i18n iconthemes init itemmodels itemviews \
		jobwidgets kdelibs4support kdeprefix kio libksysguard \
		newstuff notifications parts service solid sonnet \
		textwidgets unitconversion widgetsaddons windowsystem \
		xmlgui

OPTIONS_DEFINE=	DOCS NLS INOTIFY
OPTIONS_DEFAULT=INOTIFY
OPTIONS_SUB=	YES

INOTIFY_DESC=		Filesystem alteration notifications using inotify
INOTIFY_LIB_DEPENDS=	libinotify.so:${PORTSDIR}/devel/libinotify

post-extract:
	# Provide a cmake file to find libinotify
	${CP} ${PORTSDIR}/x11/kf5-frameworks/files/FindLibinotify.cmake \
		${WRKSRC}/cmake/

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

