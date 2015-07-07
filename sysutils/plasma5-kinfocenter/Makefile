# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/plasma5-kinfocenter/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	kinfocenter
CATEGORIES=	sysutils kde # kde-plasma

COMMENT=	Plasma5 utility providing system information

USE_QT5=	core dbus gui network printsupport widgets xml
USE_KDE5=	archive attica5 auth bookmarks codecs completion config \
		configwidgets coreaddons crash dbusaddons designerplugin \
		doctools ecm emoticons globalaccel guiaddons i18n iconthemes \
		init itemmodels itemviews jobwidgets kcmutils kdelibs4support \
		kdeprefix kio notifications parts plasma-framework service \
		solid sonnet textwidgets unitconversion wayland widgetsaddons \
		windowsystem xmlgui

USE_GL=		egl glu

# TODO	-- this should be handled correctly...
LDFLAGS+=-ldevinfo

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

