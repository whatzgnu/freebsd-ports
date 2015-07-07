# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/plasma5-libksysguard/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	libksysguard
CATEGORIES=	sysutils kde # kde-plasma

COMMENT=	Plasma5 library to track and control running processes

USE_QT5=	core dbus gui network opengl printsupport qml \
		quick script webkit widgets x11extras xml
USE_KDE5=	archive attica5 auth bookmarks codecs completion \
		config configwidgets coreaddons crash dbusaddons \
		designerplugin doctools ecm emoticons globalaccel \
		guiaddons i18n iconthemes init itemmodels itemviews \
		jobwidgets kdelibs4support kdeprefix kio notifications \
		parts plasma-framework service solid sonnet \
		textwidgets unitconversion widgetsaddons windowsystem \
		xmlgui


# TODO : fails to look for KDELibs4Support in the correct location
CFLAGS+=	-I/usr/local/include/KF5/KDELibs4Support \
		-I/usr/local/include/KF5/KConfigCore

OPTIONS_DEFINE=	NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

