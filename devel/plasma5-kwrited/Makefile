# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/devel/plasma5-kwrited/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	kwrited
CATEGORIES=	devel kde # kde-plasma

COMMENT=	Plasma5 daemon listening for wall and write messages

USE_QT5=	core dbus gui network printsupport widgets xml
USE_KDE5=	archive attica5 auth bookmarks codecs completion \
		config configwidgets coreaddons crash dbusaddons \
		designerplugin doctools ecm emoticons globalaccel \
		guiaddons i18n iconthemes init itemmodels \
		itemviews jobwidgets kdelibs4support kdeprefix \
		kio notifications parts pty service solid sonnet \
		textwidgets unitconversion widgetsaddons \
		windowsystem xmlgui

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

