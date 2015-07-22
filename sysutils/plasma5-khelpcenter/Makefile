# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/plasma5-khelpcenter/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	khelpcenter
CATEGORIES=	sysutils kde # kde-plasma

COMMENT=	Plasma5 application to show KDE application documentation

USE_QT5=	core dbus gui network printsupport widgets xml
USE_KDE5=	archive attica5 auth bookmarks codecs completion config \
		configwidgets coreaddons crash dbusaddons designerplugin \
		doctools ecm emoticons globalaccel guiaddons i18n iconthemes \
		init itemmodels itemviews jobwidgets js kcmutils \
		kdelibs4support kdeprefix khtml kio notifications parts \
		service solid sonnet textwidgets unitconversion wallet \
		widgetsaddons windowsystem xmlgui

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

