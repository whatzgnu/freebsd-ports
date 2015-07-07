# Created by: Tobias Berner <tcberner@gmail.com>
# $FreeBSD: branches/plasma5/KDE/sysutils/plasma5-powerdevil/Makefile 10824 2015-06-30 21:01:56Z tcberner $

PORTNAME=	powerdevil
CATEGORIES=	sysutils kde # kde-plasma

COMMENT=	Plasma5 tool to manage the power consumption settings

USE_QT5=	core dbus gui network printsupport \
		widgets x11extras xml
USE_KDE5=	archive attica5 auth bookmarks codecs \
		completion config configwidgets coreaddons \
		crash dbusaddons designerplugin doctools \
		ecm emoticons globalaccel guiaddons i18n \
		iconthemes idletime init itemmodels \
		itemviews jobwidgets kdelibs4support \
		kdeprefix kio notifications notifyconfig \
		parts plasma-framework plasma-workspace \
		service solid sonnet textwidgets \
		unitconversion widgetsaddons windowsystem \
		xmlgui

OPTIONS_DEFINE=	DOCS NLS
OPTIONS_SUB=	YES

.include "${.CURDIR}/../../x11/plasma5-plasma/bsd.plasma.mk"
.include <bsd.port.mk>

